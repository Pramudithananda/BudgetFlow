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

export default function EventsScreen() {
  const { isDarkMode } = useTheme();
  const [events, setEvents] = useState([]);
  const [modalVisible, setModalVisible] = useState(false);
  const [editingEvent, setEditingEvent] = useState(null);
  const [loading, setLoading] = useState(false);
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
    console.log('EventsScreen: Loading with hardcoded data');
    // Load hardcoded sample data instead of database
    const sampleEvents = [
      {
        id: 1,
        name: 'Sample Event 1',
        description: 'This is a sample event for testing',
        startDate: '2025-01-01',
        endDate: '2025-01-31',
        budget: 1000.00,
        location: 'Sample Location 1',
        status: 'planned'
      },
      {
        id: 2,
        name: 'Sample Event 2',
        description: 'Another sample event for testing',
        startDate: '2025-02-01',
        endDate: '2025-02-28',
        budget: 2000.00,
        location: 'Sample Location 2',
        status: 'ongoing'
      }
    ];
    setEvents(sampleEvents);
    console.log('EventsScreen: Sample events loaded:', sampleEvents.length);
  }, []);

  const saveEvent = () => {
    if (!eventForm.name.trim()) {
      Alert.alert('Error', 'Event name is required');
      return;
    }

    if (editingEvent) {
      // Update existing event
      const updatedEvents = events.map(event =>
        event.id === editingEvent.id
          ? { ...event, ...eventForm }
          : event
      );
      setEvents(updatedEvents);
      Alert.alert('Success', 'Event updated successfully');
    } else {
      // Add new event
      const newEvent = {
        id: Date.now(),
        ...eventForm,
        budget: parseFloat(eventForm.budget) || 0
      };
      setEvents([newEvent, ...events]);
      Alert.alert('Success', 'Event created successfully');
    }
    
    setModalVisible(false);
    resetForm();
  };

  const deleteEvent = (eventId) => {
    Alert.alert(
      'Confirm Delete',
      'Are you sure you want to delete this event?',
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Delete',
          style: 'destructive',
          onPress: () => {
            const updatedEvents = events.filter(event => event.id !== eventId);
            setEvents(updatedEvents);
            Alert.alert('Success', 'Event deleted successfully');
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
      description: event.description,
      startDate: event.startDate,
      endDate: event.endDate,
      budget: event.budget.toString(),
      location: event.location,
      status: event.status
    });
    setModalVisible(true);
  };

  const openCreateModal = () => {
    resetForm();
    setModalVisible(true);
  };

  const generateEventReport = async (event) => {
    try {
      const htmlContent = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>Event Report - ${event.name}</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; border-bottom: 2px solid #64a12d; padding-bottom: 20px; margin-bottom: 30px; }
            .event-details { background-color: #f9f9f9; padding: 20px; border-radius: 8px; margin-bottom: 20px; }
            .detail-row { display: flex; justify-content: space-between; margin-bottom: 10px; }
            .detail-label { font-weight: bold; color: #333; }
            .detail-value { color: #666; }
            .status-${event.status} { color: ${getStatusColor(event.status)}; font-weight: bold; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>Event Report</h1>
            <h2>${event.name}</h2>
          </div>
          
          <div class="event-details">
            <div class="detail-row">
              <span class="detail-label">Description:</span>
              <span class="detail-value">${event.description}</span>
            </div>
            <div class="detail-row">
              <span class="detail-label">Start Date:</span>
              <span class="detail-value">${event.startDate}</span>
            </div>
            <div class="detail-row">
              <span class="detail-label">End Date:</span>
              <span class="detail-value">${event.endDate}</span>
            </div>
            <div class="detail-row">
              <span class="detail-label">Budget:</span>
              <span class="detail-value">$${event.budget.toFixed(2)}</span>
            </div>
            <div class="detail-row">
              <span class="detail-label">Location:</span>
              <span class="detail-value">${event.location}</span>
            </div>
            <div class="detail-row">
              <span class="detail-label">Status:</span>
              <span class="status-${event.status}">${getStatusText(event.status)}</span>
            </div>
          </div>
        </body>
        </html>
      `;

      const { uri } = await Print.printToFileAsync({ html: htmlContent });
      await Sharing.shareAsync(uri, {
        mimeType: 'application/pdf',
        dialogTitle: 'Share Event Report'
      });
    } catch (error) {
      console.error('Error generating report:', error);
      Alert.alert('Error', 'Failed to generate report');
    }
  };

  const getStatusColor = (status) => {
    switch (status) {
      case 'planned': return '#2196F3';
      case 'ongoing': return '#FF9800';
      case 'completed': return '#4CAF50';
      case 'cancelled': return '#F44336';
      default: return '#64a12d';
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

  return (
    <View style={[styles.container, { backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5' }]}>
      <View style={styles.header}>
        <Text style={[styles.headerTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
          Events Management
        </Text>
        <TouchableOpacity style={styles.addButton} onPress={openCreateModal}>
          <FontAwesome5 name="plus" size={20} color="#fff" />
        </TouchableOpacity>
      </View>

      <ScrollView style={styles.content}>
        {events.length === 0 ? (
          <View style={styles.emptyState}>
            <FontAwesome5 name="calendar-alt" size={48} color="#64a12d" />
            <Text style={[styles.emptyText, { color: isDarkMode ? '#fff' : '#333' }]}>
              No events yet. Create your first event!
            </Text>
          </View>
        ) : (
          events.map(event => (
            <Card key={event.id} style={styles.eventCard}>
              <View style={styles.eventHeader}>
                <Text style={[styles.eventName, { color: isDarkMode ? '#fff' : '#333' }]}>
                  {event.name}
                </Text>
                <View style={[styles.statusBadge, { backgroundColor: getStatusColor(event.status) }]}>
                  <Text style={styles.statusText}>{getStatusText(event.status)}</Text>
                </View>
              </View>
              
              <Text style={[styles.eventDescription, { color: isDarkMode ? '#ccc' : '#666' }]}>
                {event.description}
              </Text>
              
              <View style={styles.eventDetails}>
                <View style={styles.detailItem}>
                  <FontAwesome5 name="calendar" size={14} color="#64a12d" />
                  <Text style={[styles.detailText, { color: isDarkMode ? '#ccc' : '#666' }]}>
                    {event.startDate} - {event.endDate}
                  </Text>
                </View>
                
                <View style={styles.detailItem}>
                  <FontAwesome5 name="map-marker-alt" size={14} color="#64a12d" />
                  <Text style={[styles.detailText, { color: isDarkMode ? '#ccc' : '#666' }]}>
                    {event.location}
                  </Text>
                </View>
                
                <View style={styles.detailItem}>
                  <FontAwesome5 name="dollar-sign" size={14} color="#64a12d" />
                  <Text style={[styles.detailText, { color: isDarkMode ? '#ccc' : '#666' }]}>
                    ${event.budget.toFixed(2)}
                  </Text>
                </View>
              </View>
              
              <View style={styles.eventActions}>
                <TouchableOpacity
                  style={[styles.actionButton, styles.editButton]}
                  onPress={() => openEditModal(event)}
                >
                  <FontAwesome5 name="edit" size={16} color="#fff" />
                  <Text style={styles.actionButtonText}>Edit</Text>
                </TouchableOpacity>
                
                <TouchableOpacity
                  style={[styles.actionButton, styles.reportButton]}
                  onPress={() => generateEventReport(event)}
                >
                  <FontAwesome5 name="file-alt" size={16} color="#fff" />
                  <Text style={styles.actionButtonText}>Report</Text>
                </TouchableOpacity>
                
                <TouchableOpacity
                  style={[styles.actionButton, styles.deleteButton]}
                  onPress={() => deleteEvent(event.id)}
                >
                  <FontAwesome5 name="trash" size={16} color="#fff" />
                  <Text style={styles.actionButtonText}>Delete</Text>
                </TouchableOpacity>
              </View>
            </Card>
          ))
        )}
      </ScrollView>

      <Modal
        visible={modalVisible}
        animationType="slide"
        transparent={true}
        onRequestClose={() => setModalVisible(false)}
      >
        <View style={styles.modalOverlay}>
          <View style={[styles.modalContent, { backgroundColor: isDarkMode ? '#2a2a2a' : '#fff' }]}>
            <View style={styles.modalHeader}>
              <Text style={[styles.modalTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
                {editingEvent ? 'Edit Event' : 'Create New Event'}
              </Text>
              <TouchableOpacity onPress={() => setModalVisible(false)}>
                <FontAwesome5 name="times" size={20} color={isDarkMode ? '#fff' : '#333'} />
              </TouchableOpacity>
            </View>
            
            <ScrollView style={styles.formContainer}>
              <TextInput
                style={[styles.input, { 
                  backgroundColor: isDarkMode ? '#3a3a3a' : '#f9f9f9',
                  color: isDarkMode ? '#fff' : '#333',
                  borderColor: isDarkMode ? '#555' : '#ddd'
                }]}
                placeholder="Event Name"
                placeholderTextColor={isDarkMode ? '#aaa' : '#999'}
                value={eventForm.name}
                onChangeText={(text) => setEventForm({...eventForm, name: text})}
              />
              
              <TextInput
                style={[styles.input, styles.textArea, { 
                  backgroundColor: isDarkMode ? '#3a3a3a' : '#f9f9f9',
                  color: isDarkMode ? '#fff' : '#333',
                  borderColor: isDarkMode ? '#555' : '#ddd'
                }]}
                placeholder="Description"
                placeholderTextColor={isDarkMode ? '#aaa' : '#999'}
                value={eventForm.description}
                onChangeText={(text) => setEventForm({...eventForm, description: text})}
                multiline
                numberOfLines={3}
              />
              
              <TextInput
                style={[styles.input, { 
                  backgroundColor: isDarkMode ? '#3a3a3a' : '#f9f9f9',
                  color: isDarkMode ? '#fff' : '#333',
                  borderColor: isDarkMode ? '#555' : '#ddd'
                }]}
                placeholder="Start Date (YYYY-MM-DD)"
                placeholderTextColor={isDarkMode ? '#aaa' : '#999'}
                value={eventForm.startDate}
                onChangeText={(text) => setEventForm({...eventForm, startDate: text})}
              />
              
              <TextInput
                style={[styles.input, { 
                  backgroundColor: isDarkMode ? '#3a3a3a' : '#f9f9f9',
                  color: isDarkMode ? '#fff' : '#333',
                  borderColor: isDarkMode ? '#555' : '#ddd'
                }]}
                placeholder="End Date (YYYY-MM-DD)"
                placeholderTextColor={isDarkMode ? '#aaa' : '#999'}
                value={eventForm.endDate}
                onChangeText={(text) => setEventForm({...eventForm, endDate: text})}
              />
              
              <TextInput
                style={[styles.input, { 
                  backgroundColor: isDarkMode ? '#3a3a3a' : '#f9f9f9',
                  color: isDarkMode ? '#fff' : '#333',
                  borderColor: isDarkMode ? '#555' : '#ddd'
                }]}
                placeholder="Budget"
                placeholderTextColor={isDarkMode ? '#aaa' : '#999'}
                value={eventForm.budget}
                onChangeText={(text) => setEventForm({...eventForm, budget: text})}
                keyboardType="numeric"
              />
              
              <TextInput
                style={[styles.input, { 
                  backgroundColor: isDarkMode ? '#3a3a3a' : '#f9f9f9',
                  color: isDarkMode ? '#fff' : '#333',
                  borderColor: isDarkMode ? '#555' : '#ddd'
                }]}
                placeholder="Location"
                placeholderTextColor={isDarkMode ? '#aaa' : '#999'}
                value={eventForm.location}
                onChangeText={(text) => setEventForm({...eventForm, location: text})}
              />
            </ScrollView>
            
            <View style={styles.modalActions}>
              <Button
                title="Cancel"
                onPress={() => setModalVisible(false)}
                style={styles.cancelButton}
              />
              <Button
                title={editingEvent ? 'Update' : 'Create'}
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
  content: {
    flex: 1,
  },
  emptyState: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 40,
  },
  emptyText: {
    fontSize: 18,
    fontWeight: 'bold',
    marginTop: 16,
    marginBottom: 8,
  },
  eventCard: {
    marginBottom: 16,
    padding: 16,
  },
  eventHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 12,
  },
  eventName: {
    fontSize: 18,
    fontWeight: 'bold',
    flex: 1,
    marginRight: 10,
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
  eventActions: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    marginTop: 10,
  },
  actionButton: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: 8,
    paddingHorizontal: 15,
    borderRadius: 8,
  },
  editButton: {
    backgroundColor: '#64a12d',
  },
  reportButton: {
    backgroundColor: '#2196F3',
  },
  deleteButton: {
    backgroundColor: '#F44336',
  },
  actionButtonText: {
    color: 'white',
    fontSize: 14,
    fontWeight: 'bold',
    marginLeft: 8,
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
  formContainer: {
    maxHeight: 400,
  },
  input: {
    borderWidth: 1,
    borderRadius: 8,
    padding: 12,
    fontSize: 16,
    marginBottom: 16,
  },
  textArea: {
    height: 80,
    textAlignVertical: 'top',
  },
  modalActions: {
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
});