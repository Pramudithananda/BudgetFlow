import React, { useState } from 'react';
import { View, Text, StyleSheet, TouchableOpacity, ScrollView, Alert } from 'react-native';
import { useTheme } from '../../context/theme';
import { FontAwesome5 } from '@expo/vector-icons';

export default function EventsScreen() {
  const { isDarkMode } = useTheme();
  const [events, setEvents] = useState([
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
  ]);

  const addEvent = () => {
    const newEvent = {
      id: Date.now(),
      name: `New Event ${events.length + 1}`,
      description: 'This is a new event',
      startDate: '2025-03-01',
      endDate: '2025-03-31',
      budget: 1500.00,
      location: 'New Location',
      status: 'planned'
    };
    setEvents([newEvent, ...events]);
    Alert.alert('Success', 'Event added successfully!');
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
            setEvents(events.filter(event => event.id !== eventId));
            Alert.alert('Success', 'Event deleted successfully!');
          }
        }
      ]
    );
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

  return (
    <View style={[styles.container, { backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5' }]}>
      <View style={styles.header}>
        <Text style={[styles.title, { color: isDarkMode ? '#fff' : '#333' }]}>
          Events Management
        </Text>
        <TouchableOpacity style={styles.addButton} onPress={addEvent}>
          <FontAwesome5 name="plus" size={20} color="#fff" />
        </TouchableOpacity>
      </View>

      <ScrollView style={styles.content}>
        {events.length === 0 ? (
          <View style={styles.emptyState}>
            <FontAwesome5 name="calendar-alt" size={48} color="#64a12d" />
            <Text style={[styles.emptyText, { color: isDarkMode ? '#fff' : '#333' }]}>
              No events yet. Tap the + button to add your first event!
            </Text>
          </View>
        ) : (
          events.map(event => (
            <View key={event.id} style={[styles.eventCard, { backgroundColor: isDarkMode ? '#2a2a2a' : '#fff' }]}>
              <View style={styles.eventHeader}>
                <Text style={[styles.eventName, { color: isDarkMode ? '#fff' : '#333' }]}>
                  {event.name}
                </Text>
                <View style={[styles.statusBadge, { backgroundColor: getStatusColor(event.status) }]}>
                  <Text style={styles.statusText}>{event.status.toUpperCase()}</Text>
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
                  style={[styles.actionButton, styles.deleteButton]}
                  onPress={() => deleteEvent(event.id)}
                >
                  <FontAwesome5 name="trash" size={16} color="#fff" />
                  <Text style={styles.actionButtonText}>Delete</Text>
                </TouchableOpacity>
              </View>
            </View>
          ))
        )}
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 20,
    paddingVertical: 15,
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
  },
  addButton: {
    backgroundColor: '#64a12d',
    padding: 10,
    borderRadius: 8,
  },
  content: {
    flex: 1,
    paddingHorizontal: 20,
  },
  emptyState: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 40,
  },
  emptyText: {
    fontSize: 16,
    textAlign: 'center',
    marginTop: 16,
  },
  eventCard: {
    marginBottom: 16,
    padding: 16,
    borderRadius: 8,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
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
  },
  statusText: {
    color: '#fff',
    fontSize: 12,
    fontWeight: 'bold',
  },
  eventDescription: {
    fontSize: 14,
    marginBottom: 12,
  },
  eventDetails: {
    marginBottom: 12,
  },
  detailItem: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 8,
  },
  detailText: {
    fontSize: 14,
    marginLeft: 8,
  },
  eventActions: {
    flexDirection: 'row',
    justifyContent: 'flex-end',
  },
  actionButton: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: 8,
    paddingHorizontal: 15,
    borderRadius: 8,
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
});