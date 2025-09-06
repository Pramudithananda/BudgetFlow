import React, { useState } from 'react';
import { View, StyleSheet, ScrollView, TouchableOpacity, Alert, Modal, TextInput } from 'react-native';
import { Text } from '../../components/Themed';
import { useTheme } from '../../context/theme';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';

export default function EventsScreen() {
  const { colors, isDarkMode } = useTheme();
  
  // Static sample data for events
  const [events] = useState([
    { 
      id: 1, 
      name: 'Birthday Celebration', 
      date: '2024-10-01', 
      category: 'Conference', 
      totalFunding: 100000, 
      receivedFunding: 25000, 
      pendingFunding: 75000,
      funders: [
        { name: 'Sujith', amount: 25000, status: 'Spent' },
        { name: 'Nirvan', amount: 40000, status: 'Available' },
        { name: 'Welfare Funding', amount: 35000, status: 'Pending' }
      ]
    }
  ]);
  
  const [eventModalVisible, setEventModalVisible] = useState(false);
  const [selectedEvent, setSelectedEvent] = useState(null);

  const handleEventPress = (event) => {
    setSelectedEvent(event);
    setEventModalVisible(true);
  };

  const formatDate = (dateString) => {
    return new Date(dateString).toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    });
  };

  return (
    <ScrollView 
      style={[styles.container, { backgroundColor: colors.background }]}
    >
      <Card style={styles.card}>
        <View style={styles.cardHeader}>
          <Text style={[styles.cardTitle, { color: colors.text }]}>Events</Text>
          <Button
            title="Add Event"
            onPress={() => Alert.alert('Info', 'Add Event feature coming soon!')}
            style={styles.addButton}
          />
        </View>
        
        {events.length > 0 ? (
          events.map((event) => (
            <TouchableOpacity
              key={event.id}
              style={[styles.eventItem, { backgroundColor: colors.card, borderColor: colors.border }]}
              onPress={() => handleEventPress(event)}
            >
              <View style={styles.eventHeader}>
                <Text style={[styles.eventName, { color: colors.text }]}>{event.name}</Text>
                <FontAwesome5 name="chevron-right" size={16} color={colors.text} />
              </View>
              <Text style={[styles.eventDate, { color: colors.text }]}>{formatDate(event.date)}</Text>
              <Text style={[styles.eventCategory, { color: colors.text }]}>Category: {event.category}</Text>
              <View style={styles.eventFunding}>
                <Text style={[styles.fundingLabel, { color: colors.text }]}>Total Funding:</Text>
                <Text style={[styles.fundingAmount, { color: colors.text }]}>Rs. {event.totalFunding.toLocaleString()}</Text>
              </View>
            </TouchableOpacity>
          ))
        ) : (
          <View style={styles.emptyContainer}>
            <FontAwesome5 name="calendar-alt" size={48} color={colors.text} style={styles.emptyIcon} />
            <Text style={[styles.emptyTitle, { color: colors.text }]}>No events yet</Text>
            <Text style={[styles.emptySubtitle, { color: colors.text }]}>
              Add events to manage your budget
            </Text>
            <Button
              title="Add Your First Event"
              onPress={() => Alert.alert('Info', 'Add Event feature coming soon!')}
              style={styles.emptyButton}
            />
          </View>
        )}
      </Card>

      {/* Event Details Modal */}
      <Modal
        visible={eventModalVisible}
        animationType="slide"
        presentationStyle="pageSheet"
      >
        <View style={[styles.modalContainer, { backgroundColor: colors.background }]}>
          <View style={styles.modalHeader}>
            <Text style={[styles.modalTitle, { color: colors.text }]}>Event Details</Text>
            <TouchableOpacity onPress={() => setEventModalVisible(false)}>
              <FontAwesome5 name="times" size={24} color={colors.text} />
            </TouchableOpacity>
          </View>
          
          {selectedEvent && (
            <ScrollView style={styles.modalContent}>
              <Text style={[styles.eventName, { color: colors.text }]}>{selectedEvent.name}</Text>
              <Text style={[styles.eventDate, { color: colors.text }]}>{formatDate(selectedEvent.date)}</Text>
              <Text style={[styles.eventCategory, { color: colors.text }]}>Category: {selectedEvent.category}</Text>
              
              <Card style={styles.modalCard}>
                <Text style={[styles.cardTitle, { color: colors.text }]}>Funding Summary</Text>
                <View style={styles.fundingRow}>
                  <Text style={[styles.fundingLabel, { color: colors.text }]}>Total Funding:</Text>
                  <Text style={[styles.fundingAmount, { color: colors.text }]}>Rs. {selectedEvent.totalFunding.toLocaleString()}</Text>
                </View>
                <View style={styles.fundingRow}>
                  <Text style={[styles.fundingLabel, { color: colors.text }]}>Received:</Text>
                  <Text style={[styles.fundingAmount, { color: '#2ed573' }]}>Rs. {selectedEvent.receivedFunding.toLocaleString()}</Text>
                </View>
                <View style={styles.fundingRow}>
                  <Text style={[styles.fundingLabel, { color: colors.text }]}>Pending:</Text>
                  <Text style={[styles.fundingAmount, { color: '#ff6b6b' }]}>Rs. {selectedEvent.pendingFunding.toLocaleString()}</Text>
                </View>
              </Card>

              <Card style={styles.modalCard}>
                <Text style={[styles.cardTitle, { color: colors.text }]}>Funder Details</Text>
                {selectedEvent.funders.map((funder, index) => (
                  <View key={index} style={styles.funderRow}>
                    <Text style={[styles.funderName, { color: colors.text }]}>{funder.name}</Text>
                    <Text style={[styles.funderAmount, { color: colors.text }]}>Rs. {funder.amount.toLocaleString()}</Text>
                    <Text style={[styles.funderStatus, { 
                      color: funder.status === 'Spent' ? '#ff4757' : 
                            funder.status === 'Available' ? '#2ed573' : '#ff6b6b'
                    }]}>{funder.status}</Text>
                  </View>
                ))}
              </Card>
            </ScrollView>
          )}
        </View>
      </Modal>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
  },
  card: {
    marginBottom: 16,
    padding: 16,
  },
  cardHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 16,
  },
  cardTitle: {
    fontSize: 18,
    fontWeight: 'bold',
  },
  addButton: {
    paddingHorizontal: 12,
    paddingVertical: 6,
  },
  eventItem: {
    padding: 16,
    marginBottom: 12,
    borderRadius: 8,
    borderWidth: 1,
  },
  eventHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 8,
  },
  eventName: {
    fontSize: 18,
    fontWeight: 'bold',
  },
  eventDate: {
    fontSize: 14,
    opacity: 0.7,
    marginBottom: 4,
  },
  eventCategory: {
    fontSize: 14,
    opacity: 0.7,
    marginBottom: 8,
  },
  eventFunding: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  fundingLabel: {
    fontSize: 14,
  },
  fundingAmount: {
    fontSize: 16,
    fontWeight: 'bold',
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
    fontWeight: 'bold',
    marginBottom: 8,
  },
  emptySubtitle: {
    fontSize: 14,
    opacity: 0.7,
    textAlign: 'center',
    marginBottom: 20,
  },
  emptyButton: {
    paddingHorizontal: 20,
    paddingVertical: 10,
  },
  modalContainer: {
    flex: 1,
    padding: 20,
  },
  modalHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 20,
    paddingTop: 20,
  },
  modalTitle: {
    fontSize: 24,
    fontWeight: 'bold',
  },
  modalContent: {
    flex: 1,
  },
  modalCard: {
    marginBottom: 16,
  },
  fundingRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 8,
  },
  funderRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 8,
    paddingVertical: 4,
  },
  funderName: {
    fontSize: 16,
    fontWeight: '500',
    flex: 1,
  },
  funderAmount: {
    fontSize: 16,
    fontWeight: 'bold',
    marginRight: 10,
  },
  funderStatus: {
    fontSize: 14,
    fontWeight: '500',
  },
});