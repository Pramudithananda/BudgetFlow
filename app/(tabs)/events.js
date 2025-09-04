import React, { useState } from 'react';
import { View, StyleSheet, ScrollView, TouchableOpacity, Alert, Modal, TextInput } from 'react-native';
import { Text } from '../../components/Themed';
import { useTheme } from '../../context/theme';
import { FontAwesome5 } from '@expo/vector-icons';

export default function EventsScreen() {
  const { isDarkMode } = useTheme();
  const [events, setEvents] = useState([
    {
      id: 1,
      name: 'Annual Conference 2024',
      date: '2024-03-15',
      location: 'Colombo Convention Centre',
      budget: 500000,
      description: 'Annual company conference with keynote speakers',
      expenseStatus: 'Available',
      funder: 'ABC Foundation'
    },
    {
      id: 2,
      name: 'Team Building Workshop',
      date: '2024-02-20',
      location: 'Mount Lavinia Hotel',
      budget: 150000,
      description: 'Team building activities and workshops',
      expenseStatus: 'Pending',
      funder: 'XYZ Corporation'
    }
  ]);

  const [modalVisible, setModalVisible] = useState(false);
  const [editingEvent, setEditingEvent] = useState(null);
  const [eventForm, setEventForm] = useState({
    name: '',
    date: '',
    location: '',
    budget: '',
    description: '',
    expenseStatus: 'Outstanding',
    funder: ''
  });

  // Dropdown options
  const expenseStatusOptions = ['Outstanding', 'Pending', 'Available', 'Spent'];
  const funderOptions = ['ABC Foundation', 'XYZ Corporation', 'DEF Trust', 'GHI Fund', 'JKL Organization'];

  const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5',
    },
    header: {
      flexDirection: 'row',
      justifyContent: 'space-between',
      alignItems: 'center',
      padding: 20,
      backgroundColor: isDarkMode ? '#2a2a2a' : '#fff',
      borderBottomWidth: 1,
      borderBottomColor: isDarkMode ? '#333' : '#e0e0e0',
    },
    headerTitle: {
      fontSize: 24,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
    },
    addButton: {
      backgroundColor: '#64a12d',
      paddingHorizontal: 16,
      paddingVertical: 8,
      borderRadius: 8,
      flexDirection: 'row',
      alignItems: 'center',
    },
    addButtonText: {
      color: '#fff',
      fontWeight: 'bold',
      marginLeft: 8,
    },
    eventsList: {
      padding: 20,
    },
    eventCard: {
      backgroundColor: isDarkMode ? '#2a2a2a' : '#fff',
      padding: 16,
      marginBottom: 16,
      borderRadius: 12,
      shadowColor: '#000',
      shadowOffset: { width: 0, height: 2 },
      shadowOpacity: 0.1,
      shadowRadius: 4,
      elevation: 3,
    },
    eventName: {
      fontSize: 18,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      marginBottom: 8,
    },
    eventDetails: {
      flexDirection: 'row',
      justifyContent: 'space-between',
      marginBottom: 8,
    },
    eventDetail: {
      flex: 1,
    },
    eventLabel: {
      fontSize: 12,
      color: isDarkMode ? '#999' : '#666',
      marginBottom: 2,
    },
    eventValue: {
      fontSize: 14,
      color: isDarkMode ? '#fff' : '#333',
      fontWeight: '500',
    },
    eventDescription: {
      fontSize: 14,
      color: isDarkMode ? '#ccc' : '#666',
      marginTop: 8,
      fontStyle: 'italic',
    },
    eventActions: {
      flexDirection: 'row',
      justifyContent: 'flex-end',
      marginTop: 12,
    },
    actionButton: {
      paddingHorizontal: 12,
      paddingVertical: 6,
      borderRadius: 6,
      marginLeft: 8,
    },
    editButton: {
      backgroundColor: '#2196F3',
    },
    deleteButton: {
      backgroundColor: '#f44336',
    },
    actionButtonText: {
      color: '#fff',
      fontSize: 12,
      fontWeight: 'bold',
    },
    modalContainer: {
      flex: 1,
      justifyContent: 'center',
      alignItems: 'center',
      backgroundColor: 'rgba(0,0,0,0.5)',
    },
      modalContent: {
    backgroundColor: isDarkMode ? '#2a2a2a' : '#fff',
    padding: 0,
    borderRadius: 12,
    width: '90%',
    maxHeight: '85%',
  },
      modalTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    color: isDarkMode ? '#fff' : '#333',
    marginBottom: 20,
    textAlign: 'center',
    padding: 20,
    paddingBottom: 0,
  },
  modalScrollView: {
    maxHeight: 400,
    paddingHorizontal: 20,
  },
    inputGroup: {
      marginBottom: 16,
    },
    inputLabel: {
      fontSize: 14,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      marginBottom: 8,
    },
    textInput: {
      borderWidth: 1,
      borderColor: isDarkMode ? '#444' : '#ddd',
      borderRadius: 8,
      padding: 12,
      fontSize: 16,
      color: isDarkMode ? '#fff' : '#333',
      backgroundColor: isDarkMode ? '#333' : '#fff',
    },
      modalActions: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    padding: 20,
    paddingTop: 10,
    borderTopWidth: 1,
    borderTopColor: '#e0e0e0',
  },
    modalButton: {
      flex: 1,
      paddingVertical: 12,
      borderRadius: 8,
      marginHorizontal: 8,
    },
    cancelButton: {
      backgroundColor: '#666',
    },
    saveButton: {
      backgroundColor: '#64a12d',
    },
      modalButtonText: {
    color: '#fff',
    textAlign: 'center',
    fontWeight: 'bold',
  },
  
  // Dropdown styles
  dropdownContainer: {
    marginTop: 8,
  },
  dropdownOption: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 12,
    marginBottom: 8,
    borderRadius: 8,
    borderWidth: 1,
    borderColor: '#e0e0e0',
  },
  selectedOption: {
    borderColor: '#64a12d',
    borderWidth: 2,
  },
  dropdownOptionText: {
    fontSize: 16,
    flex: 1,
  },
});

  const openAddModal = () => {
    setEventForm({
      name: '',
      date: '',
      location: '',
      budget: '',
      description: '',
      expenseStatus: 'Outstanding',
      funder: ''
    });
    setEditingEvent(null);
    setModalVisible(true);
  };

  const openEditModal = (event) => {
    setEventForm({
      name: event.name,
      date: event.date,
      location: event.location,
      budget: event.budget.toString(),
      description: event.description,
      expenseStatus: event.expenseStatus || 'Outstanding',
      funder: event.funder || ''
    });
    setEditingEvent(event);
    setModalVisible(true);
  };

  const closeModal = () => {
    setModalVisible(false);
    setEditingEvent(null);
  };

  const saveEvent = () => {
    if (!eventForm.name || !eventForm.date || !eventForm.location || !eventForm.budget || !eventForm.expenseStatus || !eventForm.funder) {
      Alert.alert('Error', 'Please fill in all required fields including expense status and funder');
      return;
    }

    const newEvent = {
      id: editingEvent ? editingEvent.id : Date.now(),
      name: eventForm.name,
      date: eventForm.date,
      location: eventForm.location,
      budget: parseFloat(eventForm.budget),
      description: eventForm.description,
      expenseStatus: eventForm.expenseStatus,
      funder: eventForm.funder
    };

    if (editingEvent) {
      setEvents(events.map(event => 
        event.id === editingEvent.id ? newEvent : event
      ));
    } else {
      setEvents([...events, newEvent]);
    }

    closeModal();
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
            setEvents(events.filter(event => event.id !== eventId));
          }
        }
      ]
    );
  };

  const formatCurrency = (amount) => {
    return new Intl.NumberFormat('en-LK', {
      style: 'currency',
      currency: 'LKR',
      minimumFractionDigits: 0,
    }).format(amount);
  };

  const formatDate = (dateString) => {
    return new Date(dateString).toLocaleDateString('en-LK', {
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    });
  };

  const getStatusColor = (status) => {
    switch (status) {
      case 'Outstanding': return '#f44336';
      case 'Pending': return '#ff9800';
      case 'Available': return '#2196F3';
      case 'Spent': return '#4caf50';
      default: return '#666';
    }
  };

  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Text style={styles.headerTitle}>Events Management</Text>
        <TouchableOpacity style={styles.addButton} onPress={openAddModal}>
          <FontAwesome5 name="plus" size={16} color="#fff" />
          <Text style={styles.addButtonText}>Add Event</Text>
        </TouchableOpacity>
      </View>

      <ScrollView style={styles.eventsList}>
        {events.map((event) => (
          <View key={event.id} style={styles.eventCard}>
            <Text style={styles.eventName}>{event.name}</Text>
            
            <View style={styles.eventDetails}>
              <View style={styles.eventDetail}>
                <Text style={styles.eventLabel}>Date</Text>
                <Text style={styles.eventValue}>{formatDate(event.date)}</Text>
              </View>
              <View style={styles.eventDetail}>
                <Text style={styles.eventLabel}>Location</Text>
                <Text style={styles.eventValue}>{event.location}</Text>
              </View>
            </View>
            
            <View style={styles.eventDetails}>
              <View style={styles.eventDetail}>
                <Text style={styles.eventLabel}>Budget</Text>
                <Text style={styles.eventValue}>{formatCurrency(event.budget)}</Text>
              </View>
            </View>

            <View style={styles.eventDetails}>
              <View style={styles.eventDetail}>
                <Text style={styles.eventLabel}>Expense Status</Text>
                <Text style={[styles.eventValue, { color: getStatusColor(event.expenseStatus) }]}>
                  {event.expenseStatus}
                </Text>
              </View>
              <View style={styles.eventDetail}>
                <Text style={styles.eventLabel}>Funder</Text>
                <Text style={styles.eventValue}>{event.funder}</Text>
              </View>
            </View>

            {event.description && (
              <Text style={styles.eventDescription}>{event.description}</Text>
            )}

            <View style={styles.eventActions}>
              <TouchableOpacity 
                style={[styles.actionButton, styles.editButton]}
                onPress={() => openEditModal(event)}
              >
                <Text style={styles.actionButtonText}>Edit</Text>
              </TouchableOpacity>
              <TouchableOpacity 
                style={[styles.actionButton, styles.deleteButton]}
                onPress={() => deleteEvent(event.id)}
              >
                <Text style={styles.actionButtonText}>Delete</Text>
              </TouchableOpacity>
            </View>
          </View>
        ))}
      </ScrollView>

      <Modal
        visible={modalVisible}
        transparent={true}
        animationType="slide"
        onRequestClose={closeModal}
      >
        <View style={styles.modalContainer}>
          <View style={styles.modalContent}>
            <Text style={styles.modalTitle}>
              {editingEvent ? 'Edit Event' : 'Add New Event'}
            </Text>
            
            <ScrollView style={styles.modalScrollView} showsVerticalScrollIndicator={true}>

            <View style={styles.inputGroup}>
              <Text style={styles.inputLabel}>Event Name *</Text>
              <TextInput
                style={styles.textInput}
                value={eventForm.name}
                onChangeText={(text) => setEventForm({...eventForm, name: text})}
                placeholder="Enter event name"
                placeholderTextColor={isDarkMode ? '#666' : '#999'}
              />
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.inputLabel}>Date *</Text>
              <TextInput
                style={styles.textInput}
                value={eventForm.date}
                onChangeText={(text) => setEventForm({...eventForm, date: text})}
                placeholder="YYYY-MM-DD"
                placeholderTextColor={isDarkMode ? '#666' : '#999'}
              />
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.inputLabel}>Location *</Text>
              <TextInput
                style={styles.textInput}
                value={eventForm.location}
                onChangeText={(text) => setEventForm({...eventForm, location: text})}
                placeholder="Enter location"
                placeholderTextColor={isDarkMode ? '#666' : '#999'}
              />
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.inputLabel}>Budget (LKR) *</Text>
              <TextInput
                style={styles.textInput}
                value={eventForm.budget}
                onChangeText={(text) => setEventForm({...eventForm, budget: text})}
                placeholder="Enter budget amount"
                placeholderTextColor={isDarkMode ? '#666' : '#999'}
                keyboardType="numeric"
              />
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.inputLabel}>Description</Text>
              <TextInput
                style={[styles.textInput, { height: 80, textAlignVertical: 'top' }]}
                value={eventForm.description}
                onChangeText={(text) => setEventForm({...eventForm, description: text})}
                placeholder="Enter event description"
                placeholderTextColor={isDarkMode ? '#666' : '#999'}
                multiline
              />
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.inputLabel}>Expense Status *</Text>
              <View style={styles.dropdownContainer}>
                {expenseStatusOptions.map((status) => (
                  <TouchableOpacity
                    key={status}
                    style={[
                      styles.dropdownOption,
                      eventForm.expenseStatus === status && styles.selectedOption,
                      { backgroundColor: isDarkMode ? '#333' : '#fff' }
                    ]}
                    onPress={() => setEventForm({...eventForm, expenseStatus: status})}
                  >
                    <Text style={[
                      styles.dropdownOptionText,
                      { color: isDarkMode ? '#fff' : '#333' },
                      eventForm.expenseStatus === status && { color: '#64a12d', fontWeight: 'bold' }
                    ]}>
                      {status}
                    </Text>
                    {eventForm.expenseStatus === status && (
                      <FontAwesome5 name="check" size={16} color="#64a12d" />
                    )}
                  </TouchableOpacity>
                ))}
              </View>
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.inputLabel}>Funder *</Text>
              <View style={styles.dropdownContainer}>
                {funderOptions.map((funder) => (
                  <TouchableOpacity
                    key={funder}
                    style={[
                      styles.dropdownOption,
                      eventForm.funder === funder && styles.selectedOption,
                      { backgroundColor: isDarkMode ? '#333' : '#fff' }
                    ]}
                    onPress={() => setEventForm({...eventForm, funder: funder})}
                  >
                    <Text style={[
                      styles.dropdownOptionText,
                      { color: isDarkMode ? '#fff' : '#333' },
                      eventForm.funder === funder && { color: '#64a12d', fontWeight: 'bold' }
                    ]}>
                      {funder}
                    </Text>
                    {eventForm.funder === funder && (
                      <FontAwesome5 name="check" size={16} color="#64a12d" />
                    )}
                  </TouchableOpacity>
                ))}
              </View>
            </View>
            
            </ScrollView>

            <View style={styles.modalActions}>
              <TouchableOpacity 
                style={[styles.modalButton, styles.cancelButton]}
                onPress={closeModal}
              >
                <Text style={styles.modalButtonText}>Cancel</Text>
              </TouchableOpacity>
              <TouchableOpacity 
                style={[styles.modalButton, styles.saveButton]}
                onPress={saveEvent}
              >
                <Text style={styles.modalButtonText}>
                  {editingEvent ? 'Update' : 'Save'}
                </Text>
              </TouchableOpacity>
            </View>
          </View>
        </View>
      </Modal>
    </View>
  );
}