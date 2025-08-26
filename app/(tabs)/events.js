import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, ActivityIndicator, RefreshControl, Alert, TouchableOpacity, Modal, TextInput } from 'react-native';
import { Text, View } from '../../components/Themed';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { getEvents, addEvent, updateEvent, deleteEvent, getEventExpenses, getExpenses, addEventExpense, removeEventExpense } from '../../services/sqliteService';
import { useTheme } from '../../context/theme';

export default function EventsScreen() {
  const { colors, isDarkMode } = useTheme();
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [events, setEvents] = useState([]);
  const [modalVisible, setModalVisible] = useState(false);
  const [editingEvent, setEditingEvent] = useState(null);
  const [formData, setFormData] = useState({
    title: '',
    description: '',
    startDate: '',
    endDate: '',
    location: '',
    budget: '',
    status: 'Planning'
  });

  const [expenses, setExpenses] = useState([]);
  const [eventExpenses, setEventExpenses] = useState([]);
  const [selectedEvent, setSelectedEvent] = useState(null);
  const [showExpenseModal, setShowExpenseModal] = useState(false);

  const statusOptions = ['Planning', 'In Progress', 'Completed', 'Cancelled'];

  const fetchData = async () => {
    try {
      setLoading(true);
      const [eventsData, expensesData] = await Promise.all([
        getEvents(),
        getExpenses()
      ]);
      setEvents(eventsData);
      setExpenses(expensesData);
    } catch (error) {
      console.error('Error fetching data:', error);
      Alert.alert('Error', 'Could not load data. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const onRefresh = async () => {
    setRefreshing(true);
    await fetchData();
    setRefreshing(false);
  };

  useEffect(() => {
    fetchData();
  }, []);

  const resetForm = () => {
    setFormData({
      title: '',
      description: '',
      startDate: '',
      endDate: '',
      location: '',
      budget: '',
      status: 'Planning'
    });
    setEditingEvent(null);
  };

  const openAddModal = () => {
    resetForm();
    setModalVisible(true);
  };

  const openEditModal = (event) => {
    setEditingEvent(event);
    setFormData({
      title: event.title || '',
      description: event.description || '',
      startDate: event.startDate ? event.startDate.split('T')[0] : '',
      endDate: event.endDate ? event.endDate.split('T')[0] : '',
      location: event.location || '',
      budget: event.budget ? event.budget.toString() : '',
      status: event.status || 'Planning'
    });
    setModalVisible(true);
  };

  const handleSubmit = async () => {
    if (!formData.title.trim()) {
      Alert.alert('Error', 'Event title is required');
      return;
    }

    try {
      if (editingEvent) {
        await updateEvent(editingEvent.id, {
          ...formData,
          budget: parseFloat(formData.budget) || 0
        });
        Alert.alert('Success', 'Event updated successfully');
      } else {
        await addEvent({
          ...formData,
          budget: parseFloat(formData.budget) || 0
        });
        Alert.alert('Success', 'Event added successfully');
      }
      
      setModalVisible(false);
      resetForm();
      fetchData();
    } catch (error) {
      console.error('Error saving event:', error);
      Alert.alert('Error', 'Could not save event. Please try again.');
    }
  };

  const handleDelete = async (eventId) => {
    Alert.alert(
      'Delete Event',
      'Are you sure you want to delete this event? This action cannot be undone.',
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Delete',
          style: 'destructive',
          onPress: async () => {
            try {
              await deleteEvent(eventId);
              Alert.alert('Success', 'Event deleted successfully');
              fetchData();
            } catch (error) {
              console.error('Error deleting event:', error);
              Alert.alert('Error', 'Could not delete event. Please try again.');
            }
          }
        }
      ]
    );
  };

  const openExpenseModal = async (event) => {
    setSelectedEvent(event);
    try {
      const eventExpensesData = await getEventExpenses(event.id);
      setEventExpenses(eventExpensesData);
    } catch (error) {
      console.error('Error fetching event expenses:', error);
    }
    setShowExpenseModal(true);
  };

  const handleAddExpenseToEvent = async (expenseId) => {
    try {
      await addEventExpense(selectedEvent.id, expenseId);
      Alert.alert('Success', 'Expense added to event successfully');
      setShowExpenseModal(false);
      setSelectedEvent(null);
      fetchData();
    } catch (error) {
      console.error('Error adding expense to event:', error);
      Alert.alert('Error', 'Could not add expense to event. Please try again.');
    }
  };

  const handleRemoveExpenseFromEvent = async (expenseId) => {
    try {
      await removeEventExpense(selectedEvent.id, expenseId);
      Alert.alert('Success', 'Expense removed from event successfully');
      fetchData();
    } catch (error) {
      console.error('Error removing expense from event:', error);
      Alert.alert('Error', 'Could not remove expense from event. Please try again.');
    }
  };

  const getStatusColor = (status) => {
    switch (status) {
      case 'Planning': return '#FF9800';
      case 'In Progress': return '#2196F3';
      case 'Completed': return '#4CAF50';
      case 'Cancelled': return '#F44336';
      default: return '#707070';
    }
  };

  const formatDate = (dateString) => {
    if (!dateString) return 'N/A';
    const date = new Date(dateString);
    return date.toLocaleDateString();
  };

  if (loading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
      </View>
    );
  }

  return (
    <ScrollView 
      style={[styles.container, { backgroundColor: colors.background }]}
      refreshControl={
        <RefreshControl refreshing={refreshing} onRefresh={onRefresh} />
      }
    >
      <RNView style={styles.header}>
        <Text style={[styles.title, { color: colors.text }]}>Events</Text>
        <Button 
          title="Add Event" 
          onPress={openAddModal}
          icon="plus"
          style={styles.addButton}
        />
      </RNView>

      {events.length === 0 ? (
        <Card style={styles.emptyCard}>
          <FontAwesome5 name="calendar-alt" size={48} color={colors.primary} />
          <Text style={[styles.emptyText, { color: colors.text }]}>No events yet</Text>
          <Text style={[styles.emptySubtext, { color: colors.textSecondary }]}>
            Create your first event to get started
          </Text>
        </Card>
      ) : (
        events.map((event) => (
          <TouchableOpacity 
            key={event.id} 
            onPress={() => router.push(`/event-detail?id=${event.id}`)}
            style={styles.eventCardTouchable}
          >
            <Card style={styles.eventCard}>
              <RNView style={styles.eventHeader}>
                <RNView style={styles.eventTitleRow}>
                  <Text style={[styles.eventTitle, { color: colors.text }]}>{event.title}</Text>
                  <RNView style={[styles.statusBadge, { backgroundColor: getStatusColor(event.status) }]}>
                    <Text style={styles.statusText}>{event.status}</Text>
                  </RNView>
                </RNView>
                              <RNView style={styles.eventActions}>
                <TouchableOpacity 
                  onPress={(e) => {
                    e.stopPropagation();
                    openExpenseModal(event);
                  }} 
                  style={styles.actionButton}
                >
                  <FontAwesome5 name="receipt" size={16} color={colors.primary} />
                </TouchableOpacity>
                <TouchableOpacity 
                  onPress={(e) => {
                    e.stopPropagation();
                    openEditModal(event);
                  }} 
                  style={styles.actionButton}
                >
                  <FontAwesome5 name="edit" size={16} color={colors.primary} />
                </TouchableOpacity>
                <TouchableOpacity 
                  onPress={(e) => {
                    e.stopPropagation();
                    handleDelete(event.id);
                  }} 
                  style={styles.actionButton}
                >
                  <FontAwesome5 name="trash" size={16} color="#F44336" />
                </TouchableOpacity>
              </RNView>
              </RNView>

            {event.description && (
              <Text style={[styles.eventDescription, { color: colors.textSecondary }]}>
                {event.description}
              </Text>
            )}

            <RNView style={styles.eventDetails}>
              <RNView style={styles.detailRow}>
                <FontAwesome5 name="calendar" size={14} color={colors.primary} />
                <Text style={[styles.detailText, { color: colors.textSecondary }]}>
                  {formatDate(event.startDate)}
                  {event.endDate && ` - ${formatDate(event.endDate)}`}
                </Text>
              </RNView>

              {event.location && (
                <RNView style={styles.detailRow}>
                  <FontAwesome5 name="map-marker-alt" size={14} color={colors.primary} />
                  <Text style={[styles.detailText, { color: colors.textSecondary }]}>
                    {event.location}
                  </Text>
                </RNView>
              )}

              <RNView style={styles.detailRow}>
                <FontAwesome5 name="money-bill-wave" size={14} color={colors.primary} />
                <Text style={[styles.detailText, { color: colors.textSecondary }]}>
                  Budget: Rs. {event.budget?.toLocaleString() || '0'}
                </Text>
              </RNView>
            </RNView>
          </Card>
        ))
      )}

      {/* Add/Edit Event Modal */}
      <Modal
        animationType="slide"
        transparent={true}
        visible={modalVisible}
        onRequestClose={() => setModalVisible(false)}
      >
        <RNView style={styles.modalOverlay}>
          <RNView style={[styles.modalContent, { backgroundColor: colors.card }]}>
            <RNView style={styles.modalHeader}>
              <Text style={[styles.modalTitle, { color: colors.text }]}>
                {editingEvent ? 'Edit Event' : 'Add New Event'}
              </Text>
              <TouchableOpacity onPress={() => setModalVisible(false)}>
                <FontAwesome5 name="times" size={20} color={colors.text} />
              </TouchableOpacity>
            </RNView>

            <ScrollView style={styles.formContainer}>
              <TextInput
                style={[styles.input, { 
                  backgroundColor: colors.background,
                  color: colors.text,
                  borderColor: colors.border
                }]}
                placeholder="Event Title"
                placeholderTextColor={colors.textSecondary}
                value={formData.title}
                onChangeText={(text) => setFormData({ ...formData, title: text })}
              />

              <TextInput
                style={[styles.textArea, { 
                  backgroundColor: colors.background,
                  color: colors.text,
                  borderColor: colors.border
                }]}
                placeholder="Description (optional)"
                placeholderTextColor={colors.textSecondary}
                value={formData.description}
                onChangeText={(text) => setFormData({ ...formData, description: text })}
                multiline
                numberOfLines={3}
              />

              <TextInput
                style={[styles.input, { 
                  backgroundColor: colors.background,
                  color: colors.text,
                  borderColor: colors.border
                }]}
                placeholder="Start Date (YYYY-MM-DD)"
                placeholderTextColor={colors.textSecondary}
                value={formData.startDate}
                onChangeText={(text) => setFormData({ ...formData, startDate: text })}
              />

              <TextInput
                style={[styles.input, { 
                  backgroundColor: colors.background,
                  color: colors.text,
                  borderColor: colors.border
                }]}
                placeholder="End Date (YYYY-MM-DD) - Optional"
                placeholderTextColor={colors.textSecondary}
                value={formData.endDate}
                onChangeText={(text) => setFormData({ ...formData, endDate: text })}
              />

              <TextInput
                style={[styles.input, { 
                  backgroundColor: colors.background,
                  color: colors.text,
                  borderColor: colors.border
                }]}
                placeholder="Location (optional)"
                placeholderTextColor={colors.textSecondary}
                value={formData.location}
                onChangeText={(text) => setFormData({ ...formData, location: text })}
              />

              <TextInput
                style={[styles.input, { 
                  backgroundColor: colors.background,
                  color: colors.text,
                  borderColor: colors.border
                }]}
                placeholder="Budget Amount"
                placeholderTextColor={colors.textSecondary}
                value={formData.budget}
                onChangeText={(text) => setFormData({ ...formData, budget: text })}
                keyboardType="numeric"
              />

              <RNView style={styles.pickerContainer}>
                <Text style={[styles.pickerLabel, { color: colors.text }]}>Status:</Text>
                <RNView style={styles.statusPicker}>
                  {statusOptions.map((status) => (
                    <TouchableOpacity
                      key={status}
                      style={[
                        styles.statusOption,
                        formData.status === status && { backgroundColor: colors.primary }
                      ]}
                      onPress={() => setFormData({ ...formData, status })}
                    >
                      <Text style={[
                        styles.statusOptionText,
                        { color: formData.status === status ? '#fff' : colors.text }
                      ]}>
                        {status}
                      </Text>
                    </TouchableOpacity>
                  ))}
                </RNView>
              </RNView>
            </ScrollView>

            <RNView style={styles.modalActions}>
              <Button 
                title="Cancel" 
                onPress={() => setModalVisible(false)}
                style={styles.cancelButton}
                textStyle={{ color: colors.text }}
              />
              <Button 
                title={editingEvent ? 'Update' : 'Create'} 
                onPress={handleSubmit}
                style={styles.submitButton}
              />
            </RNView>
          </RNView>
        </RNView>
      </Modal>

      {/* Expenses Management Modal */}
      <Modal
        animationType="slide"
        transparent={true}
        visible={showExpenseModal}
        onRequestClose={() => setShowExpenseModal(false)}
      >
        <RNView style={styles.modalOverlay}>
          <RNView style={[styles.modalContent, { backgroundColor: colors.card }]}>
            <RNView style={styles.modalHeader}>
              <Text style={[styles.modalTitle, { color: colors.text }]}>
                Manage Expenses - {selectedEvent?.title}
              </Text>
              <TouchableOpacity onPress={() => setShowExpenseModal(false)}>
                <FontAwesome5 name="times" size={20} color={colors.text} />
              </TouchableOpacity>
            </RNView>

            <ScrollView style={styles.formContainer}>
              <Text style={[styles.sectionTitle, { color: colors.text }]}>Available Expenses</Text>
              <Text style={[styles.sectionSubtitle, { color: colors.textSecondary }]}>
                Select expenses to add to this event
              </Text>
              
              {expenses.map((expense) => {
                const isInEvent = eventExpenses?.some(ee => ee.id === expense.id);
                return (
                  <RNView key={expense.id} style={styles.expenseItem}>
                    <RNView style={styles.expenseInfo}>
                      <Text style={[styles.expenseTitle, { color: colors.text }]}>{expense.title}</Text>
                      <Text style={[styles.expenseAmount, { color: colors.text }]}>
                        Rs. {expense.amount?.toLocaleString() || '0'}
                      </Text>
                    </RNView>
                    
                    <TouchableOpacity
                      onPress={() => {
                        if (isInEvent) {
                          handleRemoveExpenseFromEvent(expense.id);
                        } else {
                          handleAddExpenseToEvent(expense.id);
                        }
                      }}
                      style={[
                        styles.expenseActionButton,
                        { backgroundColor: isInEvent ? '#F44336' : colors.primary }
                      ]}
                    >
                      <FontAwesome5 
                        name={isInEvent ? 'minus' : 'plus'} 
                        size={14} 
                        color="#fff" 
                      />
                      <Text style={styles.expenseActionText}>
                        {isInEvent ? 'Remove' : 'Add'}
                      </Text>
                    </TouchableOpacity>
                  </RNView>
                );
              })}
            </ScrollView>
          </RNView>
        </RNView>
      </Modal>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 20,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
  },
  addButton: {
    paddingHorizontal: 20,
    paddingVertical: 10,
  },
  emptyCard: {
    alignItems: 'center',
    padding: 40,
    marginTop: 40,
  },
  emptyText: {
    fontSize: 18,
    fontWeight: '600',
    marginTop: 16,
    marginBottom: 8,
  },
  emptySubtext: {
    fontSize: 14,
    textAlign: 'center',
  },
  eventCardTouchable: {
    marginBottom: 16,
  },
  eventCard: {
    padding: 16,
  },
  eventHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-start',
    marginBottom: 12,
  },
  eventTitleRow: {
    flex: 1,
    flexDirection: 'row',
    alignItems: 'center',
    flexWrap: 'wrap',
  },
  eventTitle: {
    fontSize: 18,
    fontWeight: '600',
    marginRight: 12,
    flex: 1,
  },
  statusBadge: {
    paddingHorizontal: 8,
    paddingVertical: 4,
    borderRadius: 12,
  },
  statusText: {
    color: '#fff',
    fontSize: 12,
    fontWeight: '600',
  },
  eventActions: {
    flexDirection: 'row',
    alignItems: 'center',
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
    gap: 8,
  },
  detailRow: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  detailText: {
    fontSize: 14,
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
    borderRadius: 16,
    padding: 20,
  },
  modalHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 20,
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
    marginBottom: 16,
    fontSize: 16,
  },
  textArea: {
    borderWidth: 1,
    borderRadius: 8,
    padding: 12,
    marginBottom: 16,
    fontSize: 16,
    height: 80,
    textAlignVertical: 'top',
  },
  pickerContainer: {
    marginBottom: 20,
  },
  pickerLabel: {
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 12,
  },
  statusPicker: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  statusOption: {
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderRadius: 20,
    borderWidth: 1,
    borderColor: '#ddd',
  },
  statusOptionText: {
    fontSize: 14,
    fontWeight: '500',
  },
  modalActions: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    gap: 16,
  },
  cancelButton: {
    flex: 1,
    backgroundColor: 'transparent',
    borderWidth: 1,
    borderColor: '#ddd',
  },
  submitButton: {
    flex: 1,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 8,
  },
  sectionSubtitle: {
    fontSize: 14,
    marginBottom: 16,
  },
  expenseItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingVertical: 12,
    paddingHorizontal: 16,
    backgroundColor: '#f5f5f5',
    borderRadius: 8,
    marginBottom: 8,
  },
  expenseInfo: {
    flex: 1,
  },
  expenseTitle: {
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 4,
  },
  expenseAmount: {
    fontSize: 14,
    color: '#666',
  },
  expenseActionButton: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderRadius: 20,
    gap: 6,
  },
  expenseActionText: {
    color: '#fff',
    fontSize: 12,
    fontWeight: '600',
  },
});