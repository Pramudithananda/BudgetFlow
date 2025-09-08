import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, TouchableOpacity, Alert, Modal, TextInput, ActivityIndicator, RefreshControl } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { useTheme } from '../../context/theme';
import { useData } from '../../context/DataContext';

export default function EventsScreen() {
  const { colors, isDarkMode } = useTheme();
  const { 
    events, 
    categories, 
    funders, 
    loading, 
    error, 
    addEvent,
    updateEvent,
    deleteEvent,
    refreshData 
  } = useData();
  
  const [refreshing, setRefreshing] = useState(false);
  const [showAddModal, setShowAddModal] = useState(false);
  const [newEvent, setNewEvent] = useState({
    name: '',
    description: '',
    date: '',
    budget: '',
    location: '',
    category: ''
  });

  // Handle refresh
  const onRefresh = async () => {
    setRefreshing(true);
    try {
      await refreshData();
    } catch (err) {
      Alert.alert('Error', 'Failed to refresh data');
    } finally {
      setRefreshing(false);
    }
  };

  // Show error if any
  useEffect(() => {
    if (error) {
      Alert.alert('Error', error);
    }
  }, [error]);

  const handleAddEvent = async () => {
    if (!newEvent.name.trim()) {
      Alert.alert('Error', 'Please enter an event name');
      return;
    }

    if (!newEvent.date) {
      Alert.alert('Error', 'Please select an event date');
      return;
    }

    try {
      const eventData = {
        name: newEvent.name.trim(),
        description: newEvent.description.trim(),
        date: newEvent.date,
        budget: parseFloat(newEvent.budget) || 0,
        location: newEvent.location.trim(),
        category: newEvent.category.trim()
      };

      await addEvent(eventData);
      setShowAddModal(false);
      setNewEvent({
        name: '',
        description: '',
        date: '',
        budget: '',
        location: '',
        category: ''
      });
      Alert.alert('Success', 'Event added successfully!');
    } catch (error) {
      console.error('Error adding event:', error);
      Alert.alert('Error', 'Failed to add event. Please try again.');
    }
  };

  const handleDeleteEvent = (eventId, eventName) => {
    Alert.alert(
      'Delete Event',
      `Are you sure you want to delete "${eventName}"? This action cannot be undone.`,
      [
        { text: 'Cancel', style: 'cancel' },
        { 
          text: 'Delete', 
          style: 'destructive',
          onPress: async () => {
            try {
              await deleteEvent(eventId);
              Alert.alert('Success', 'Event deleted successfully!');
            } catch (error) {
              Alert.alert('Error', 'Could not delete event. Please try again.');
            }
          }
        }
      ]
    );
  };

  const formatDate = (dateString) => {
    const date = new Date(dateString);
    return date.toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    });
  };

  const formatCurrency = (amount) => {
    return new Intl.NumberFormat('en-LK', {
      style: 'currency',
      currency: 'LKR',
      minimumFractionDigits: 0,
    }).format(amount);
  };

  if (loading && !refreshing) {
    return (
      <View style={[styles.container, styles.centered, { backgroundColor: colors.background }]}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={[styles.loadingText, { color: colors.text }]}>Loading events...</Text>
      </View>
    );
  }

  return (
    <ScrollView 
      style={[styles.container, { backgroundColor: colors.background }]}
      refreshControl={
        <RefreshControl
          refreshing={refreshing}
          onRefresh={onRefresh}
          colors={[colors.primary]}
          tintColor={colors.primary}
        />
      }
    >
      {/* Header */}
      <RNView style={styles.header}>
        <Text style={[styles.title, { color: colors.text }]}>Events</Text>
        <Text style={[styles.subtitle, { color: colors.text }]}>
          {events.length} events
        </Text>
      </RNView>

      {/* Add Event Button */}
      <Card style={styles.card}>
        <Button
          title="Add New Event"
          onPress={() => setShowAddModal(true)}
          style={styles.addButton}
        />
      </Card>

      {/* Events List */}
      <Card style={styles.card}>
        <Text style={[styles.cardTitle, { color: colors.text }]}>All Events</Text>
        
        {events.length > 0 ? (
          events.map((event) => (
            <RNView key={event.id} style={[styles.eventItem, { backgroundColor: colors.card, borderColor: colors.border }]}>
              <RNView style={styles.eventContent}>
                <RNView style={styles.eventInfo}>
                  <Text style={[styles.eventName, { color: colors.text }]}>{event.name}</Text>
                  <Text style={[styles.eventDate, { color: colors.text, opacity: 0.7 }]}>
                    {formatDate(event.date)}
                  </Text>
                  <Text style={[styles.eventCategory, { color: colors.text, opacity: 0.7 }]}>
                    {event.category}
                  </Text>
                  <Text style={[styles.eventBudget, { color: colors.primary }]}>
                    Budget: {formatCurrency(event.budget || 0)}
                  </Text>
                  {event.location && (
                    <Text style={[styles.eventLocation, { color: colors.text, opacity: 0.7 }]}>
                      📍 {event.location}
                    </Text>
                  )}
                </RNView>
                <RNView style={styles.actionButtons}>
                  <TouchableOpacity
                    style={[styles.actionButton, { backgroundColor: '#64a12d' }]}
                    onPress={() => router.push(`/edit-event/${event.id}`)}
                  >
                    <FontAwesome5 name="edit" size={14} color="#fff" />
                  </TouchableOpacity>
                  <TouchableOpacity
                    style={[styles.actionButton, { backgroundColor: '#e74c3c' }]}
                    onPress={() => handleDeleteEvent(event.id, event.name)}
                  >
                    <FontAwesome5 name="trash" size={14} color="#fff" />
                  </TouchableOpacity>
                </RNView>
              </RNView>
            </RNView>
          ))
        ) : (
          <RNView style={styles.emptyContainer}>
            <FontAwesome5 name="calendar-alt" size={48} color={colors.text} style={styles.emptyIcon} />
            <Text style={[styles.emptyTitle, { color: colors.text }]}>No events yet</Text>
            <Text style={[styles.emptySubtitle, { color: colors.text }]}>
              Add your first event to get started
            </Text>
          </RNView>
        )}
      </Card>

      {/* Add Event Modal */}
      <Modal
        animationType="slide"
        transparent={true}
        visible={showAddModal}
        onRequestClose={() => setShowAddModal(false)}
      >
        <RNView style={styles.modalOverlay}>
          <View style={[styles.modalContent, { backgroundColor: colors.card }]}>
            <RNView style={styles.modalHeader}>
              <Text style={[styles.modalTitle, { color: colors.text }]}>Add New Event</Text>
              <TouchableOpacity onPress={() => setShowAddModal(false)}>
                <FontAwesome5 name="times" size={24} color={colors.text} />
              </TouchableOpacity>
            </RNView>
            
            <ScrollView style={styles.modalBody}>
              <Text style={[styles.label, { color: colors.text }]}>Event Name *</Text>
              <TextInput
                style={[styles.input, { backgroundColor: colors.background, color: colors.text, borderColor: colors.border }]}
                value={newEvent.name}
                onChangeText={(text) => setNewEvent({...newEvent, name: text})}
                placeholder="Enter event name"
                placeholderTextColor={colors.text + '80'}
              />

              <Text style={[styles.label, { color: colors.text }]}>Description</Text>
              <TextInput
                style={[styles.textArea, { backgroundColor: colors.background, color: colors.text, borderColor: colors.border }]}
                value={newEvent.description}
                onChangeText={(text) => setNewEvent({...newEvent, description: text})}
                placeholder="Enter event description"
                placeholderTextColor={colors.text + '80'}
                multiline
                numberOfLines={3}
              />

              <Text style={[styles.label, { color: colors.text }]}>Date *</Text>
              <TextInput
                style={[styles.input, { backgroundColor: colors.background, color: colors.text, borderColor: colors.border }]}
                value={newEvent.date}
                onChangeText={(text) => setNewEvent({...newEvent, date: text})}
                placeholder="YYYY-MM-DD"
                placeholderTextColor={colors.text + '80'}
              />

              <Text style={[styles.label, { color: colors.text }]}>Budget</Text>
              <TextInput
                style={[styles.input, { backgroundColor: colors.background, color: colors.text, borderColor: colors.border }]}
                value={newEvent.budget}
                onChangeText={(text) => setNewEvent({...newEvent, budget: text})}
                placeholder="Enter budget amount"
                placeholderTextColor={colors.text + '80'}
                keyboardType="numeric"
              />

              <Text style={[styles.label, { color: colors.text }]}>Location</Text>
              <TextInput
                style={[styles.input, { backgroundColor: colors.background, color: colors.text, borderColor: colors.border }]}
                value={newEvent.location}
                onChangeText={(text) => setNewEvent({...newEvent, location: text})}
                placeholder="Enter event location"
                placeholderTextColor={colors.text + '80'}
              />

              <Text style={[styles.label, { color: colors.text }]}>Category</Text>
              <TextInput
                style={[styles.input, { backgroundColor: colors.background, color: colors.text, borderColor: colors.border }]}
                value={newEvent.category}
                onChangeText={(text) => setNewEvent({...newEvent, category: text})}
                placeholder="Enter event category"
                placeholderTextColor={colors.text + '80'}
              />
            </ScrollView>

            <RNView style={styles.modalFooter}>
              <Button
                title="Cancel"
                onPress={() => setShowAddModal(false)}
                style={[styles.modalButton, styles.cancelButton]}
              />
              <Button
                title="Add Event"
                onPress={handleAddEvent}
                style={[styles.modalButton, styles.saveButton]}
              />
            </RNView>
          </View>
        </RNView>
      </Modal>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  header: {
    padding: 20,
    paddingBottom: 10,
  },
  title: {
    fontSize: 28,
    fontWeight: 'bold',
    marginBottom: 4,
  },
  subtitle: {
    fontSize: 16,
    opacity: 0.7,
  },
  card: {
    margin: 16,
    marginTop: 0,
  },
  addButton: {
    paddingVertical: 12,
  },
  cardTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 12,
  },
  eventItem: {
    borderRadius: 12,
    padding: 16,
    marginVertical: 4,
    borderWidth: 1,
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.1,
    shadowRadius: 3,
    elevation: 2,
  },
  eventContent: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-start',
  },
  eventInfo: {
    flex: 1,
  },
  eventName: {
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 4,
  },
  eventDate: {
    fontSize: 14,
    marginBottom: 2,
  },
  eventCategory: {
    fontSize: 14,
    marginBottom: 2,
  },
  eventBudget: {
    fontSize: 14,
    fontWeight: '600',
    marginBottom: 2,
  },
  eventLocation: {
    fontSize: 14,
  },
  actionButtons: {
    flexDirection: 'row',
  },
  actionButton: {
    width: 32,
    height: 32,
    borderRadius: 16,
    justifyContent: 'center',
    alignItems: 'center',
    marginLeft: 8,
  },
  emptyContainer: {
    alignItems: 'center',
    paddingVertical: 40,
  },
  emptyIcon: {
    marginBottom: 16,
    opacity: 0.5,
  },
  emptyTitle: {
    fontSize: 18,
    fontWeight: '600',
    marginBottom: 8,
  },
  emptySubtitle: {
    fontSize: 14,
    opacity: 0.7,
    textAlign: 'center',
  },
  centered: {
    justifyContent: 'center',
    alignItems: 'center',
  },
  loadingText: {
    marginTop: 16,
    fontSize: 16,
  },
  modalOverlay: {
    flex: 1,
    backgroundColor: 'rgba(0,0,0,0.5)',
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
  },
  modalTitle: {
    fontSize: 20,
    fontWeight: 'bold',
  },
  modalBody: {
    maxHeight: 400,
  },
  label: {
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 8,
    marginTop: 16,
  },
  input: {
    borderWidth: 1,
    borderRadius: 8,
    padding: 12,
    fontSize: 16,
    marginBottom: 8,
  },
  textArea: {
    borderWidth: 1,
    borderRadius: 8,
    padding: 12,
    fontSize: 16,
    marginBottom: 8,
    textAlignVertical: 'top',
    minHeight: 80,
  },
  modalFooter: {
    flexDirection: 'row',
    marginTop: 20,
    gap: 12,
  },
  modalButton: {
    flex: 1,
    paddingVertical: 12,
  },
  cancelButton: {
    backgroundColor: '#6c757d',
  },
  saveButton: {
    backgroundColor: '#64a12d',
  },
});