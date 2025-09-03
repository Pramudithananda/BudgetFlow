import React, { useState, useEffect } from 'react';
import {
  View,
  ScrollView,
  StyleSheet,
  Alert,
  TouchableOpacity,
  Modal,
  TextInput,
} from 'react-native';
import { Text } from '../../components/Themed';
import { Card } from '../../components/Card';
import { Button } from '../../components/Button';
import { useTheme } from '../../context/theme';
import { FontAwesome5, MaterialIcons } from '@expo/vector-icons';
import * as Print from 'expo-print';
import * as Sharing from 'expo-sharing';
import * as FileSystem from 'expo-file-system';
import * as SQLite from 'expo-sqlite';

const db = SQLite.openDatabase('budgetflow.db');

export default function EventsScreen() {
  const { isDarkMode } = useTheme();
  const [events, setEvents] = useState([]);
  const [modalVisible, setModalVisible] = useState(false);
  const [editingEvent, setEditingEvent] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [eventForm, setEventForm] = useState({
    name: '',
    description: '',
    startDate: '',
    endDate: '',
    budget: '',
    location: '',
    status: 'planned'
  });

  useEffect(() => {
    initializeScreen();
  }, []);

  const initializeScreen = async () => {
    try {
      setLoading(true);
      setError(null);
      await createEventsTable();
      await loadEvents();
    } catch (err) {
      console.error('Error initializing events screen:', err);
      setError('Failed to load events. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const createEventsTable = () => {
    return new Promise((resolve, reject) => {
      db.transaction(tx => {
        tx.executeSql(
          `CREATE TABLE IF NOT EXISTS events (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            description TEXT,
            startDate TEXT,
            endDate TEXT,
            budget REAL,
            location TEXT,
            status TEXT DEFAULT 'planned',
            createdAt TEXT DEFAULT CURRENT_TIMESTAMP
          );`,
          [],
          () => resolve(),
          (_, error) => reject(error)
        );
      });
    });
  };

  const loadEvents = () => {
    return new Promise((resolve, reject) => {
      db.transaction(tx => {
        tx.executeSql(
          'SELECT * FROM events ORDER BY startDate DESC;',
          [],
          (_, { rows: { _array } }) => {
            setEvents(_array);
            resolve();
          },
          (_, error) => {
            console.error('Error loading events:', error);
            reject(error);
          }
        );
      });
    });
  };

  const saveEvent = () => {
    if (!eventForm.name.trim()) {
      Alert.alert('Error', 'Event name is required');
      return;
    }

    if (editingEvent) {
      // Update existing event
      db.transaction(tx => {
        tx.executeSql(
          `UPDATE events SET 
            name = ?, description = ?, startDate = ?, endDate = ?, 
            budget = ?, location = ?, status = ?
           WHERE id = ?;`,
          [
            eventForm.name,
            eventForm.description,
            eventForm.startDate,
            eventForm.endDate,
            parseFloat(eventForm.budget) || 0,
            eventForm.location,
            eventForm.status,
            editingEvent.id
          ],
          () => {
            Alert.alert('Success', 'Event updated successfully');
            setModalVisible(false);
            resetForm();
            loadEvents();
          },
          (_, error) => {
            Alert.alert('Error', 'Failed to update event');
            console.error('Error updating event:', error);
          }
        );
      });
    } else {
      // Create new event
      db.transaction(tx => {
        tx.executeSql(
          `INSERT INTO events (name, description, startDate, endDate, budget, location, status)
                      VALUES (?, ?, ?, ?, ?, ?, ?);`,
           [
             eventForm.name,
             eventForm.description,
             eventForm.startDate,
             eventForm.endDate,
             parseFloat(eventForm.budget) || 0,
             eventForm.location,
             eventForm.status
           ],
          () => {
            Alert.alert('Success', 'Event created successfully');
            setModalVisible(false);
            resetForm();
            loadEvents();
          },
          (_, error) => {
            Alert.alert('Error', 'Failed to create event');
            console.error('Error creating event:', error);
          }
        );
      });
    }
  };

  const deleteEvent = (eventId) => {
    Alert.alert(
      'Delete Event',
      'Are you sure you want to delete this event?',
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Delete',
          style: 'destructive',
          onPress: () => {
            db.transaction(tx => {
              tx.executeSql(
                'DELETE FROM events WHERE id = ?;',
                [eventId],
                () => {
                  Alert.alert('Success', 'Event deleted successfully');
                  loadEvents();
                },
                (_, error) => {
                  Alert.alert('Error', 'Failed to delete event');
                  console.error('Error deleting event:', error);
                }
              );
            });
          }
        }
      ]
    );
  };

  const resetForm = () => {
    setEventForm({
      name: '',
      description: '',
      startDate: '',
      endDate: '',
      budget: '',
      location: '',
      status: 'planned'
    });
    setEditingEvent(null);
  };

  const openEditModal = (event) => {
    setEditingEvent(event);
    setEventForm({
      name: event.name,
      description: event.description || '',
      startDate: event.startDate || '',
      endDate: event.endDate || '',
      budget: event.budget ? event.budget.toString() : '',
      location: event.location || '',
      status: event.status || 'planned'
    });
    setModalVisible(true);
  };

  const openCreateModal = () => {
    resetForm();
    setModalVisible(true);
  };

  const generateEventReport = async (event) => {
    try {
      // Get event expenses
      const eventExpenses = await new Promise((resolve, reject) => {
        db.transaction(tx => {
          tx.executeSql(
            `SELECT e.*, c.name as categoryName 
             FROM expenses e 
             LEFT JOIN categories c ON e.categoryId = c.id 
             WHERE e.eventId = ?;`,
            [event.id],
            (_, { rows: { _array } }) => resolve(_array),
            (_, error) => reject(error)
          );
        });
      });

      const totalExpenses = eventExpenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
      const remainingBudget = (event.budget || 0) - totalExpenses;

      const htmlContent = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>${event.name} - Event Report</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; border-bottom: 2px solid #64a12d; padding-bottom: 20px; margin-bottom: 30px; }
            .event-info { margin-bottom: 30px; }
            .expenses-table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            .expenses-table th, .expenses-table td { border: 1px solid #ddd; padding: 8px; text-align: left; }
            .expenses-table th { background-color: #64a12d; color: white; }
            .summary { background-color: #f9f9f9; padding: 20px; border-radius: 5px; margin-top: 20px; }
            .status-${event.status} { padding: 5px 10px; border-radius: 15px; color: white; font-weight: bold; }
            .status-planned { background-color: #ff9800; }
            .status-ongoing { background-color: #2196f3; }
            .status-completed { background-color: #4caf50; }
            .status-cancelled { background-color: #f44336; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>${event.name}</h1>
            <h2>Event Report</h2>
            <p>Generated on: ${new Date().toLocaleDateString()}</p>
          </div>
          
          <div class="event-info">
            <h3>Event Details</h3>
            <p><strong>Description:</strong> ${event.description || 'No description'}</p>
            <p><strong>Start Date:</strong> ${event.startDate || 'Not specified'}</p>
            <p><strong>End Date:</strong> ${event.endDate || 'Not specified'}</p>
            <p><strong>Location:</strong> ${event.location || 'Not specified'}</p>
            <p><strong>Status:</strong> <span class="status-${event.status}">${event.status.toUpperCase()}</span></p>
          </div>
          
          <div class="budget-info">
            <h3>Budget Information</h3>
            <p><strong>Total Budget:</strong> $${(event.budget || 0).toFixed(2)}</p>
            <p><strong>Total Expenses:</strong> $${totalExpenses.toFixed(2)}</p>
            <p><strong>Remaining Budget:</strong> $${remainingBudget.toFixed(2)}</p>
            <p><strong>Budget Utilization:</strong> ${event.budget ? ((totalExpenses / event.budget) * 100).toFixed(1) : 0}%</p>
          </div>
          
          <div class="expenses-details">
            <h3>Expense Details</h3>
            ${eventExpenses.length > 0 ? `
              <table class="expenses-table">
                <thead>
                  <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Category</th>
                    <th>Amount</th>
                  </tr>
                </thead>
                <tbody>
                  ${eventExpenses.map(exp => `
                    <tr>
                      <td>${exp.date || 'N/A'}</td>
                      <td>${exp.description || 'N/A'}</td>
                      <td>${exp.categoryName || 'Uncategorized'}</td>
                      <td>$${(exp.amount || 0).toFixed(2)}</td>
                    </tr>
                  `).join('')}
                </tbody>
              </table>
            ` : '<p>No expenses recorded for this event.</p>'}
          </div>
          
          <div class="summary">
            <h3>Summary</h3>
            <p>This event report shows the financial overview of "${event.name}". 
            The total budget allocated was $${(event.budget || 0).toFixed(2)}, 
            with $${totalExpenses.toFixed(2)} spent, leaving $${remainingBudget.toFixed(2)} remaining.</p>
          </div>
        </body>
        </html>
      `;

      const { uri } = await Print.printToFileAsync({ html: htmlContent });
      
      if (await Sharing.isAvailableAsync()) {
        await Sharing.shareAsync(uri, {
          mimeType: 'application/pdf',
          dialogTitle: `Event Report - ${event.name}`,
          UTI: 'com.adobe.pdf'
        });
      } else {
        Alert.alert('Sharing not available', 'PDF generated successfully but sharing is not available on this device.');
      }
    } catch (error) {
      console.error('Error generating report:', error);
      Alert.alert('Error', 'Failed to generate event report');
    }
  };

  const getStatusColor = (status) => {
    switch (status) {
      case 'planned': return '#ff9800';
      case 'ongoing': return '#2196f3';
      case 'completed': return '#4caf50';
      case 'cancelled': return '#f44336';
      default: return '#707070';
    }
  };

  const getStatusText = (status) => {
    switch (status) {
      case 'planned': return 'Planned';
      case 'ongoing': return 'Ongoing';
      case 'completed': return 'Completed';
      case 'cancelled': return 'Cancelled';
      default: return status;
    }
  };

  if (loading) {
    return (
      <View style={[styles.container, { backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5' }]}>
        <View style={styles.header}>
          <Text style={[styles.headerTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
            Events Management
          </Text>
        </View>
        <View style={styles.loadingContainer}>
          <FontAwesome5 name="spinner" size={48} color="#64a12d" />
          <Text style={[styles.loadingText, { color: isDarkMode ? '#fff' : '#333' }]}>
            Loading events...
          </Text>
        </View>
      </View>
    );
  }

  if (error) {
    return (
      <View style={[styles.container, { backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5' }]}>
        <View style={styles.header}>
          <Text style={[styles.headerTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
            Events Management
          </Text>
        </View>
        <View style={styles.errorContainer}>
          <FontAwesome5 name="exclamation-triangle" size={48} color="#f44336" />
          <Text style={[styles.errorText, { color: isDarkMode ? '#fff' : '#333' }]}>
            {error}
          </Text>
          <Button
            title="Retry"
            onPress={initializeScreen}
            icon="refresh"
            style={styles.retryButton}
          />
        </View>
      </View>
    );
  }

  return (
    <View style={[styles.container, { backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5' }]}>
      <View style={styles.header}>
        <Text style={[styles.headerTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
          Events Management
        </Text>
        <Button
          title="Add Event"
          onPress={openCreateModal}
          icon="plus"
          style={styles.addButton}
        />
      </View>

      <ScrollView style={styles.eventsList}>
        {events.length === 0 ? (
          <Card style={styles.emptyCard}>
            <FontAwesome5 name="calendar-plus" size={48} color="#64a12d" />
            <Text style={[styles.emptyText, { color: isDarkMode ? '#fff' : '#333' }]}>
              No events created yet
            </Text>
            <Text style={[styles.emptySubtext, { color: isDarkMode ? '#ccc' : '#666' }]}>
              Create your first event to get started
            </Text>
          </Card>
        ) : (
          events.map((event) => (
            <Card key={event.id} style={styles.eventCard}>
              <View style={styles.eventHeader}>
                <View style={styles.eventTitleContainer}>
                  <Text style={[styles.eventTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
                    {event.name}
                  </Text>
                  <View style={[styles.statusBadge, { backgroundColor: getStatusColor(event.status) }]}>
                    <Text style={styles.statusText}>
                      {getStatusText(event.status)}
                    </Text>
                  </View>
                </View>
                <View style={styles.eventActions}>
                  <TouchableOpacity
                    style={styles.actionButton}
                    onPress={() => openEditModal(event)}
                  >
                    <FontAwesome5 name="edit" size={16} color="#64a12d" />
                  </TouchableOpacity>
                  <TouchableOpacity
                    style={styles.actionButton}
                    onPress={() => deleteEvent(event.id)}
                  >
                    <FontAwesome5 name="trash" size={16} color="#f44336" />
                  </TouchableOpacity>
                </View>
              </View>

              {event.description && (
                <Text style={[styles.eventDescription, { color: isDarkMode ? '#ccc' : '#666' }]}>
                  {event.description}
                </Text>
              )}

              <View style={styles.eventDetails}>
                {event.startDate && (
                  <View style={styles.detailItem}>
                    <FontAwesome5 name="calendar" size={14} color="#64a12d" />
                    <Text style={[styles.detailText, { color: isDarkMode ? '#ccc' : '#666' }]}>
                      {event.startDate}
                    </Text>
                  </View>
                )}
                {event.location && (
                  <View style={styles.detailItem}>
                    <FontAwesome5 name="map-marker-alt" size={14} color="#64a12d" />
                    <Text style={[styles.detailText, { color: isDarkMode ? '#ccc' : '#666' }]}>
                      {event.location}
                    </Text>
                  </View>
                )}
                {event.budget && (
                  <View style={styles.detailItem}>
                    <FontAwesome5 name="dollar-sign" size={14} color="#64a12d" />
                    <Text style={[styles.detailText, { color: isDarkMode ? '#ccc' : '#666' }]}>
                      Budget: ${parseFloat(event.budget).toFixed(2)}
                    </Text>
                  </View>
                )}
              </View>

              <View style={styles.eventFooter}>
                <Button
                  title="Generate Report"
                  onPress={() => generateEventReport(event)}
                  icon="file-pdf"
                  style={styles.reportButton}
                />
              </View>
            </Card>
          ))
        )}
      </ScrollView>

      {/* Event Form Modal */}
      <Modal
        animationType="slide"
        transparent={true}
        visible={modalVisible}
        onRequestClose={() => setModalVisible(false)}
      >
        <View style={styles.modalOverlay}>
          <View style={[styles.modalContent, { backgroundColor: isDarkMode ? '#333' : '#fff' }]}>
            <View style={styles.modalHeader}>
              <Text style={[styles.modalTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
                {editingEvent ? 'Edit Event' : 'Create New Event'}
              </Text>
              <TouchableOpacity
                onPress={() => setModalVisible(false)}
                style={styles.closeButton}
              >
                <FontAwesome5 name="times" size={20} color="#64a12d" />
              </TouchableOpacity>
            </View>

            <ScrollView style={styles.formContainer}>
              <View style={styles.inputGroup}>
                <Text style={[styles.inputLabel, { color: isDarkMode ? '#fff' : '#333' }]}>
                  Event Name *
                </Text>
                <TextInput
                  style={[styles.textInput, { 
                    backgroundColor: isDarkMode ? '#444' : '#f9f9f9',
                    color: isDarkMode ? '#fff' : '#333',
                    borderColor: isDarkMode ? '#555' : '#ddd'
                  }]}
                  value={eventForm.name}
                  onChangeText={(text) => setEventForm({ ...eventForm, name: text })}
                  placeholder="Enter event name"
                  placeholderTextColor={isDarkMode ? '#888' : '#999'}
                />
              </View>

              <View style={styles.inputGroup}>
                <Text style={[styles.inputLabel, { color: isDarkMode ? '#fff' : '#333' }]}>
                  Description
                </Text>
                <TextInput
                  style={[styles.textArea, { 
                    backgroundColor: isDarkMode ? '#444' : '#f9f9f9',
                    color: isDarkMode ? '#fff' : '#333',
                    borderColor: isDarkMode ? '#555' : '#ddd'
                  }]}
                  value={eventForm.description}
                  onChangeText={(text) => setEventForm({ ...eventForm, description: text })}
                  placeholder="Enter event description"
                  placeholderTextColor={isDarkMode ? '#888' : '#999'}
                  multiline
                  numberOfLines={3}
                />
              </View>

              <View style={styles.row}>
                <View style={[styles.inputGroup, { flex: 1, marginRight: 10 }]}>
                  <Text style={[styles.inputLabel, { color: isDarkMode ? '#fff' : '#333' }]}>
                    Start Date
                  </Text>
                  <TextInput
                    style={[styles.textInput, { 
                      backgroundColor: isDarkMode ? '#444' : '#f9f9f9',
                      color: isDarkMode ? '#fff' : '#333',
                      borderColor: isDarkMode ? '#555' : '#ddd'
                    }]}
                    value={eventForm.startDate}
                    onChangeText={(text) => setEventForm({ ...eventForm, startDate: text })}
                    placeholder="YYYY-MM-DD"
                    placeholderTextColor={isDarkMode ? '#888' : '#999'}
                  />
                </View>

                <View style={[styles.inputGroup, { flex: 1 }]}>
                  <Text style={[styles.inputLabel, { color: isDarkMode ? '#fff' : '#333' }]}>
                    End Date
                  </Text>
                  <TextInput
                    style={[styles.textInput, { 
                      backgroundColor: isDarkMode ? '#444' : '#f9f9f9',
                      color: isDarkMode ? '#fff' : '#333',
                      borderColor: isDarkMode ? '#555' : '#ddd'
                    }]}
                    value={eventForm.endDate}
                    onChangeText={(text) => setEventForm({ ...eventForm, endDate: text })}
                    placeholder="YYYY-MM-DD"
                    placeholderTextColor={isDarkMode ? '#888' : '#999'}
                  />
                </View>
              </View>

              <View style={styles.row}>
                <View style={[styles.inputGroup, { flex: 1, marginRight: 10 }]}>
                  <Text style={[styles.inputLabel, { color: isDarkMode ? '#fff' : '#333' }]}>
                    Budget
                  </Text>
                  <TextInput
                    style={[styles.textInput, { 
                      backgroundColor: isDarkMode ? '#444' : '#f9f9f9',
                      color: isDarkMode ? '#fff' : '#333',
                      borderColor: isDarkMode ? '#555' : '#ddd'
                    }]}
                    value={eventForm.budget}
                    onChangeText={(text) => setEventForm({ ...eventForm, budget: text })}
                    placeholder="0.00"
                    placeholderTextColor={isDarkMode ? '#888' : '#999'}
                    keyboardType="numeric"
                  />
                </View>

                <View style={[styles.inputGroup, { flex: 1 }]}>
                  <Text style={[styles.inputLabel, { color: isDarkMode ? '#fff' : '#333' }]}>
                    Status
                  </Text>
                  <View style={[styles.pickerContainer, { 
                    backgroundColor: isDarkMode ? '#444' : '#f9f9f9',
                    borderColor: isDarkMode ? '#555' : '#ddd'
                  }]}>
                    <TouchableOpacity
                      style={styles.pickerButton}
                      onPress={() => {
                        const statuses = ['planned', 'ongoing', 'completed', 'cancelled'];
                        const currentIndex = statuses.indexOf(eventForm.status);
                        const nextIndex = (currentIndex + 1) % statuses.length;
                        setEventForm({ ...eventForm, status: statuses[nextIndex] });
                      }}
                    >
                      <Text style={[styles.pickerText, { color: isDarkMode ? '#fff' : '#333' }]}>
                        {getStatusText(eventForm.status)}
                      </Text>
                      <FontAwesome5 name="chevron-down" size={14} color="#64a12d" />
                    </TouchableOpacity>
                  </View>
                </View>
              </View>

              <View style={styles.inputGroup}>
                <Text style={[styles.inputLabel, { color: isDarkMode ? '#fff' : '#333' }]}>
                  Location
                </Text>
                <TextInput
                  style={[styles.textInput, { 
                    backgroundColor: isDarkMode ? '#444' : '#f9f9f9',
                    color: isDarkMode ? '#fff' : '#333',
                    borderColor: isDarkMode ? '#555' : '#ddd'
                  }]}
                  value={eventForm.location}
                  onChangeText={(text) => setEventForm({ ...eventForm, location: text })}
                  placeholder="Enter event location"
                  placeholderTextColor={isDarkMode ? '#888' : '#999'}
                />
              </View>
            </ScrollView>

            <View style={styles.modalFooter}>
              <Button
                title="Cancel"
                onPress={() => setModalVisible(false)}
                style={styles.cancelButton}
              />
              <Button
                title={editingEvent ? 'Update Event' : 'Create Event'}
                onPress={saveEvent}
                style={styles.saveButton}
              />
            </View>
          </View>
        </View>
      </Modal>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 20,
  },
  headerTitle: {
    fontSize: 24,
    fontWeight: 'bold',
  },
  addButton: {
    paddingHorizontal: 20,
    paddingVertical: 10,
  },
  eventsList: {
    flex: 1,
  },
  emptyCard: {
    alignItems: 'center',
    padding: 40,
  },
  emptyText: {
    fontSize: 18,
    fontWeight: 'bold',
    marginTop: 16,
    marginBottom: 8,
  },
  emptySubtext: {
    fontSize: 14,
    textAlign: 'center',
  },
  eventCard: {
    marginBottom: 16,
    padding: 16,
  },
  eventHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-start',
    marginBottom: 12,
  },
  eventTitleContainer: {
    flex: 1,
    marginRight: 10,
  },
  eventTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 8,
  },
  statusBadge: {
    paddingHorizontal: 12,
    paddingVertical: 4,
    borderRadius: 12,
    alignSelf: 'flex-start',
  },
  statusText: {
    color: 'white',
    fontSize: 12,
    fontWeight: 'bold',
  },
  eventActions: {
    flexDirection: 'row',
  },
  actionButton: {
    padding: 8,
    marginLeft: 8,
  },
  eventDescription: {
    fontSize: 14,
    marginBottom: 12,
    lineHeight: 20,
  },
  eventDetails: {
    marginBottom: 16,
  },
  detailItem: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 6,
  },
  detailText: {
    fontSize: 14,
    marginLeft: 8,
  },
  eventFooter: {
    alignItems: 'center',
  },
  reportButton: {
    paddingHorizontal: 20,
    paddingVertical: 10,
  },
  modalOverlay: {
    flex: 1,
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  modalContent: {
    width: '90%',
    maxHeight: '80%',
    borderRadius: 12,
    padding: 20,
  },
  modalHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 20,
    borderBottomWidth: 1,
    borderBottomColor: '#eee',
    paddingBottom: 15,
  },
  modalTitle: {
    fontSize: 20,
    fontWeight: 'bold',
  },
  closeButton: {
    padding: 5,
  },
  formContainer: {
    maxHeight: 400,
  },
  inputGroup: {
    marginBottom: 16,
  },
  inputLabel: {
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 8,
  },
  textInput: {
    borderWidth: 1,
    borderRadius: 8,
    padding: 12,
    fontSize: 16,
  },
  textArea: {
    borderWidth: 1,
    borderRadius: 8,
    padding: 12,
    fontSize: 16,
    height: 80,
    textAlignVertical: 'top',
  },
  row: {
    flexDirection: 'row',
  },
  pickerContainer: {
    borderWidth: 1,
    borderRadius: 8,
    padding: 12,
  },
  pickerButton: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  pickerText: {
    fontSize: 16,
  },
  modalFooter: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginTop: 20,
    paddingTop: 20,
    borderTopWidth: 1,
    borderTopColor: '#eee',
  },
  cancelButton: {
    flex: 1,
    marginRight: 10,
    backgroundColor: '#6c757d',
  },
  saveButton: {
    flex: 1,
    marginLeft: 10,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 40,
  },
  loadingText: {
    fontSize: 18,
    fontWeight: 'bold',
    marginTop: 16,
    textAlign: 'center',
  },
  errorContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 40,
  },
  errorText: {
    fontSize: 16,
    textAlign: 'center',
    marginTop: 16,
    marginBottom: 20,
    lineHeight: 24,
  },
  retryButton: {
    paddingHorizontal: 30,
    paddingVertical: 12,
  },
});