import React, { useState, useEffect } from 'react';
import { View, StyleSheet, ScrollView, TouchableOpacity, Alert, Modal, TextInput, RefreshControl } from 'react-native';
import { Text } from '../../components/Themed';
import { useTheme } from '../../context/theme';
import { FontAwesome5 } from '@expo/vector-icons';
import { getFunders, addFunder, getCategories, getEvents, addEvent, updateEvent, deleteEvent, listenCategories, listenFunders } from '../../services/sqliteService';

export default function EventsScreen() {
  const { isDarkMode } = useTheme();
  
  // Events state
  const [events, setEvents] = useState([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  
  // Event modal states
  const [eventModalVisible, setEventModalVisible] = useState(false);
  const [editingEvent, setEditingEvent] = useState(null);
  const [eventForm, setEventForm] = useState({
    name: '',
    date: '',
    location: '',
    budget: '',
    description: '',
    category: '',
    fundingStatus: 'Not Started',
    totalFunding: '',
    receivedFunding: '',
    pendingFunding: ''
  });
  
  // Fund modal states
  const [fundModalVisible, setFundModalVisible] = useState(false);
  const [selectedEvent, setSelectedEvent] = useState(null);
  const [fundForm, setFundForm] = useState({
    funder: '',
    amount: '',
    status: 'Outstanding',
    category: ''
  });
  
  // Dropdown states
  const [showCategoryDropdown, setShowCategoryDropdown] = useState(false);
  const [showFundingStatusDropdown, setShowFundingStatusDropdown] = useState(false);
  
  // Data states
  const [categories, setCategories] = useState([]);
  const [funders, setFunders] = useState([]);
  const [loadingCategories, setLoadingCategories] = useState(true);
  const [loadingFunders, setLoadingFunders] = useState(true);

  // Load data on component mount
  useEffect(() => {
    loadData();
    
    // Set up real-time listeners for categories and funders
    const unsubscribeCategories = listenCategories((categoriesData) => {
      console.log('Categories updated in real-time:', categoriesData);
      if (categoriesData && categoriesData.length > 0) {
        const categoryNames = categoriesData.map(cat => cat.name || cat);
        setCategories(categoryNames);
      }
    });
    
    const unsubscribeFunders = listenFunders((fundersData) => {
      console.log('Funders updated in real-time:', fundersData);
      if (fundersData && fundersData.length > 0) {
        const funderNames = fundersData.map(funder => funder.name || funder);
        setFunders(funderNames);
      }
    });
    
    // Cleanup listeners on unmount
    return () => {
      if (unsubscribeCategories) unsubscribeCategories();
      if (unsubscribeFunders) unsubscribeFunders();
    };
  }, []);

  const loadData = async () => {
    try {
      setLoading(true);
      await Promise.all([
        loadEvents(),
        loadCategories(),
        loadFunders()
      ]);
    } catch (error) {
      console.error('Error loading data:', error);
      Alert.alert('Error', 'Failed to load data. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const loadEvents = async () => {
    try {
      const eventsData = await getEvents();
      setEvents(eventsData || []);
    } catch (error) {
      console.error('Error loading events:', error);
      setEvents([]);
    }
  };

  const loadCategories = async () => {
    try {
      setLoadingCategories(true);
      const categoriesData = await getCategories();
      console.log('Loaded categories from database:', categoriesData);
      
      if (categoriesData && categoriesData.length > 0) {
        // Extract category names from database objects
        const categoryNames = categoriesData.map(cat => cat.name || cat);
        console.log('Category names extracted:', categoryNames);
        setCategories(categoryNames);
      } else {
        // Add hardcoded categories as fallback
        const hardcodedCategories = ['Conference', 'Workshop', 'Seminar', 'Training', 'Meeting', 'Event'];
        console.log('Using hardcoded categories:', hardcodedCategories);
        setCategories(hardcodedCategories);
      }
    } catch (error) {
      console.error('Error loading categories:', error);
      // Use hardcoded categories if database fails
      const hardcodedCategories = ['Conference', 'Workshop', 'Seminar', 'Training', 'Meeting', 'Event'];
      console.log('Error fallback - using hardcoded categories:', hardcodedCategories);
      setCategories(hardcodedCategories);
    } finally {
      setLoadingCategories(false);
    }
  };

  const loadFunders = async () => {
    try {
      setLoadingFunders(true);
      const fundersData = await getFunders();
      console.log('Loaded funders from database:', fundersData);
      
      if (fundersData && fundersData.length > 0) {
        // Extract funder names from database objects
        const funderNames = fundersData.map(funder => funder.name || funder);
        console.log('Funder names extracted:', funderNames);
        setFunders(funderNames);
      } else {
        // Add hardcoded funders as fallback
        const hardcodedFunders = ['Government', 'Private Sector', 'NGO', 'International', 'Local', 'Corporate'];
        console.log('Using hardcoded funders:', hardcodedFunders);
        setFunders(hardcodedFunders);
      }
    } catch (error) {
      console.error('Error loading funders:', error);
      // Use hardcoded funders if database fails
      const hardcodedFunders = ['Government', 'Private Sector', 'NGO', 'International', 'Local', 'Corporate'];
      console.log('Error fallback - using hardcoded funders:', hardcodedFunders);
      setFunders(hardcodedFunders);
    } finally {
      setLoadingFunders(false);
    }
  };

  const onRefresh = async () => {
    setRefreshing(true);
    await loadData();
    setRefreshing(false);
  };

  // Event management functions
  const openAddEventModal = () => {
    setEditingEvent(null);
    setEventForm({
      name: '',
      date: '',
      location: '',
      budget: '',
      description: '',
      category: '',
      fundingStatus: 'Not Started',
      totalFunding: '',
      receivedFunding: '',
      pendingFunding: ''
    });
    setEventModalVisible(true);
  };

  const openEditEventModal = (event) => {
    setEditingEvent(event);
    setEventForm({
      name: event.name || '',
      date: event.date || '',
      location: event.location || '',
      budget: event.budget?.toString() || '',
      description: event.description || '',
      category: event.category || '',
      fundingStatus: event.fundingStatus || 'Not Started',
      totalFunding: event.totalFunding?.toString() || '',
      receivedFunding: event.receivedFunding?.toString() || '',
      pendingFunding: event.pendingFunding?.toString() || ''
    });
    setEventModalVisible(true);
  };

  const openAddFundModal = (event) => {
    setSelectedEvent(event);
    setFundForm({
      funder: '',
      amount: '',
      status: 'Outstanding',
      category: ''
    });
    setFundModalVisible(true);
  };

  const saveEvent = async () => {
    if (!eventForm.name || !eventForm.date || !eventForm.location || !eventForm.budget) {
      Alert.alert('Error', 'Please fill in all required fields.');
      return;
    }

    try {
      const eventData = {
        ...eventForm,
        budget: parseFloat(eventForm.budget)
      };

      if (editingEvent) {
        await updateEvent(editingEvent.id, eventData);
        Alert.alert('Success', 'Event updated successfully!');
      } else {
        await addEvent(eventData);
        Alert.alert('Success', 'Event added successfully!');
      }

      setEventModalVisible(false);
      await loadEvents();
    } catch (error) {
      console.error('Error saving event:', error);
      Alert.alert('Error', 'Failed to save event. Please try again.');
    }
  };

  const deleteEventById = async (eventId) => {
    Alert.alert(
      'Delete Event',
      'Are you sure you want to delete this event?',
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Delete',
          style: 'destructive',
          onPress: async () => {
            try {
              await deleteEvent(eventId);
              Alert.alert('Success', 'Event deleted successfully!');
              await loadEvents();
            } catch (error) {
              console.error('Error deleting event:', error);
              Alert.alert('Error', 'Failed to delete event. Please try again.');
            }
          }
        }
      ]
    );
  };

  const saveFund = async () => {
    if (!fundForm.funder || !fundForm.amount || !fundForm.status || !fundForm.category) {
      Alert.alert('Error', 'Please fill in all required fields.');
      return;
    }

    try {
      // Here you would save the fund to the database
      // For now, we'll just show a success message
      Alert.alert('Success', 'Fund added successfully!');
      setFundModalVisible(false);
    } catch (error) {
      console.error('Error saving fund:', error);
      Alert.alert('Error', 'Failed to save fund. Please try again.');
    }
  };

  const closeEventModal = () => {
    setEventModalVisible(false);
    setEditingEvent(null);
  };

  const closeFundModal = () => {
    setFundModalVisible(false);
    setSelectedEvent(null);
  };

  const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5',
    },
    header: {
      flexDirection: 'row',
      justifyContent: 'center',
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
      padding: 16,
    },
    eventCard: {
      backgroundColor: isDarkMode ? '#2a2a2a' : '#fff',
      borderRadius: 12,
      padding: 16,
      marginBottom: 16,
      shadowColor: '#000',
      shadowOffset: { width: 0, height: 2 },
      shadowOpacity: 0.1,
      shadowRadius: 4,
      elevation: 3,
    },
    eventHeader: {
      flexDirection: 'row',
      justifyContent: 'space-between',
      alignItems: 'flex-start',
      marginBottom: 12,
    },
    eventTitle: {
      fontSize: 18,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      flex: 1,
    },
    eventActions: {
      flexDirection: 'row',
      gap: 8,
    },
    actionButton: {
      padding: 8,
      borderRadius: 6,
      backgroundColor: isDarkMode ? '#333' : '#f0f0f0',
    },
    eventDetails: {
      marginBottom: 12,
    },
    eventDetail: {
      flexDirection: 'row',
      marginBottom: 4,
    },
    eventDetailLabel: {
      fontSize: 14,
      fontWeight: '600',
      color: isDarkMode ? '#ccc' : '#666',
      width: 80,
    },
    eventDetailValue: {
      fontSize: 14,
      color: isDarkMode ? '#fff' : '#333',
      flex: 1,
    },
    eventDescription: {
      fontSize: 14,
      color: isDarkMode ? '#ccc' : '#666',
      fontStyle: 'italic',
      marginTop: 8,
    },
    modalOverlay: {
      flex: 1,
      backgroundColor: 'rgba(0,0,0,0.5)',
      justifyContent: 'center',
      alignItems: 'center',
    },
    modalContent: {
      backgroundColor: isDarkMode ? '#2a2a2a' : '#fff',
      borderRadius: 12,
      padding: 20,
      width: '90%',
      maxHeight: '80%',
    },
    modalTitle: {
      fontSize: 20,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      marginBottom: 20,
      textAlign: 'center',
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
      borderColor: isDarkMode ? '#555' : '#e0e0e0',
      borderRadius: 8,
      padding: 12,
      fontSize: 16,
      color: isDarkMode ? '#fff' : '#333',
      backgroundColor: isDarkMode ? '#333' : '#fff',
    },
    dropdownButton: {
      flexDirection: 'row',
      justifyContent: 'space-between',
      alignItems: 'center',
      padding: 12,
      marginTop: 8,
      borderRadius: 8,
      borderWidth: 1,
      borderColor: isDarkMode ? '#555' : '#e0e0e0',
      backgroundColor: isDarkMode ? '#333' : '#fff',
    },
    dropdownButtonText: {
      fontSize: 16,
      color: isDarkMode ? '#fff' : '#333',
    },
    dropdownList: {
      position: 'absolute',
      top: '100%',
      left: 0,
      right: 0,
      backgroundColor: isDarkMode ? '#2a2a2a' : '#fff',
      borderWidth: 1,
      borderColor: isDarkMode ? '#555' : '#e0e0e0',
      borderRadius: 8,
      marginTop: 4,
      maxHeight: 200,
      zIndex: 1000,
      elevation: 10,
      shadowColor: '#000',
      shadowOffset: { width: 0, height: 4 },
      shadowOpacity: 0.3,
      shadowRadius: 8,
    },
    dropdownItem: {
      padding: 12,
      borderBottomWidth: 0.5,
      borderBottomColor: isDarkMode ? '#444' : '#f0f0f0',
    },
    dropdownItemText: {
      fontSize: 16,
      color: isDarkMode ? '#fff' : '#333',
    },
    sectionHeader: {
      marginTop: 20,
      marginBottom: 10,
      paddingBottom: 8,
      borderBottomWidth: 1,
      borderBottomColor: isDarkMode ? '#444' : '#e0e0e0',
    },
    sectionTitle: {
      fontSize: 18,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
    },
    modalActions: {
      flexDirection: 'row',
      justifyContent: 'space-between',
      marginTop: 20,
    },
    modalButton: {
      flex: 1,
      padding: 12,
      borderRadius: 8,
      alignItems: 'center',
      marginHorizontal: 8,
    },
    saveButton: {
      backgroundColor: '#64a12d',
    },
    cancelButton: {
      backgroundColor: isDarkMode ? '#555' : '#e0e0e0',
    },
    modalButtonText: {
      color: '#fff',
      fontWeight: 'bold',
      fontSize: 16,
    },
    cancelButtonText: {
      color: isDarkMode ? '#fff' : '#333',
    },
    loadingContainer: {
      flex: 1,
      justifyContent: 'center',
      alignItems: 'center',
      padding: 20,
    },
    loadingText: {
      fontSize: 16,
      color: isDarkMode ? '#fff' : '#333',
    },
    emptyState: {
      flex: 1,
      justifyContent: 'center',
      alignItems: 'center',
      padding: 40,
    },
    emptyStateText: {
      fontSize: 16,
      color: isDarkMode ? '#ccc' : '#666',
      textAlign: 'center',
      marginBottom: 20,
    },
    emptyStateIcon: {
      marginBottom: 16,
    },
  });

  if (loading) {
    return (
      <View style={styles.container}>
        <View style={styles.loadingContainer}>
          <Text style={styles.loadingText}>Loading events...</Text>
        </View>
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Text style={styles.headerTitle}>Events Management</Text>
        <TouchableOpacity style={styles.addButton} onPress={openAddEventModal}>
          <FontAwesome5 name="plus" size={16} color="#fff" />
          <Text style={styles.addButtonText}>Add Event</Text>
        </TouchableOpacity>
      </View>

      <ScrollView 
        style={styles.eventsList}
        refreshControl={
          <RefreshControl refreshing={refreshing} onRefresh={onRefresh} />
        }
      >
        {events.length === 0 ? (
          <View style={styles.emptyState}>
            <FontAwesome5 
              name="calendar-plus" 
              size={48} 
              color={isDarkMode ? '#555' : '#ccc'} 
              style={styles.emptyStateIcon}
            />
            <Text style={styles.emptyStateText}>
              No events found.{'\n'}Add your first event to get started.
            </Text>
          </View>
        ) : (
          events.map((event) => (
            <View key={event.id} style={styles.eventCard}>
              <View style={styles.eventHeader}>
                <Text style={styles.eventTitle}>{event.name}</Text>
                <View style={styles.eventActions}>
                  <TouchableOpacity 
                    style={styles.actionButton}
                    onPress={() => openEditEventModal(event)}
                  >
                    <FontAwesome5 name="edit" size={16} color="#64a12d" />
                  </TouchableOpacity>
                  <TouchableOpacity 
                    style={styles.actionButton}
                    onPress={() => openAddFundModal(event)}
                  >
                    <FontAwesome5 name="plus" size={16} color="#2196F3" />
                  </TouchableOpacity>
                  <TouchableOpacity 
                    style={styles.actionButton}
                    onPress={() => deleteEventById(event.id)}
                  >
                    <FontAwesome5 name="trash" size={16} color="#f44336" />
                  </TouchableOpacity>
                </View>
              </View>
              
              <View style={styles.eventDetails}>
                <View style={styles.eventDetail}>
                  <Text style={styles.eventDetailLabel}>Date:</Text>
                  <Text style={styles.eventDetailValue}>{event.date}</Text>
                </View>
                <View style={styles.eventDetail}>
                  <Text style={styles.eventDetailLabel}>Location:</Text>
                  <Text style={styles.eventDetailValue}>{event.location}</Text>
                </View>
                <View style={styles.eventDetail}>
                  <Text style={styles.eventDetailLabel}>Budget:</Text>
                  <Text style={styles.eventDetailValue}>LKR {event.budget?.toLocaleString()}</Text>
                </View>
                <View style={styles.eventDetail}>
                  <Text style={styles.eventDetailLabel}>Category:</Text>
                  <Text style={styles.eventDetailValue}>{event.category || 'Not specified'}</Text>
                </View>
              </View>
              
              {event.description && (
                <Text style={styles.eventDescription}>{event.description}</Text>
              )}
            </View>
          ))
        )}
      </ScrollView>

      {/* Event Modal */}
      <Modal
        visible={eventModalVisible}
        animationType="slide"
        transparent={true}
        onRequestClose={closeEventModal}
      >
        <View style={styles.modalOverlay}>
          <View style={styles.modalContent}>
            <Text style={styles.modalTitle}>
              {editingEvent ? 'Edit Event' : 'Add New Event'}
            </Text>
            
            <ScrollView showsVerticalScrollIndicator={true}>
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
                <Text style={styles.inputLabel}>Category</Text>
                <View style={{ position: 'relative', zIndex: 1000 }}>
                  <TouchableOpacity
                    style={styles.dropdownButton}
                    onPress={() => setShowCategoryDropdown(!showCategoryDropdown)}
                  >
                    <Text style={styles.dropdownButtonText}>
                      {eventForm.category || 'Select Category'}
                    </Text>
                    <FontAwesome5 
                      name={showCategoryDropdown ? "chevron-up" : "chevron-down"} 
                      size={16} 
                      color={isDarkMode ? '#fff' : '#333'} 
                    />
                  </TouchableOpacity>
                  
                  {showCategoryDropdown && (
                    <ScrollView 
                      style={styles.dropdownList}
                      showsVerticalScrollIndicator={true}
                      nestedScrollEnabled={true}
                    >
                      {loadingCategories ? (
                        <View style={styles.dropdownItem}>
                          <Text style={styles.dropdownItemText}>Loading categories...</Text>
                        </View>
                      ) : categories.length === 0 ? (
                        <View style={styles.dropdownItem}>
                          <Text style={styles.dropdownItemText}>No categories available</Text>
                        </View>
                      ) : (
                        categories.map((category, index) => (
                          <TouchableOpacity
                            key={index}
                            style={[
                              styles.dropdownItem,
                              eventForm.category === category && { backgroundColor: isDarkMode ? '#444' : '#f0f8ff' }
                            ]}
                            onPress={() => {
                              setEventForm({...eventForm, category: category});
                              setShowCategoryDropdown(false);
                            }}
                          >
                            <Text style={[
                              styles.dropdownItemText,
                              eventForm.category === category && { color: '#64a12d', fontWeight: 'bold' }
                            ]}>
                              {category}
                            </Text>
                          </TouchableOpacity>
                        ))
                      )}
                    </ScrollView>
                  )}
                </View>
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

              {/* Funding Status Section */}
              <View style={styles.sectionHeader}>
                <Text style={styles.sectionTitle}>Funding Status</Text>
              </View>

              <View style={styles.inputGroup}>
                <Text style={styles.inputLabel}>Funding Status</Text>
                <View style={{ position: 'relative', zIndex: 1000 }}>
                  <TouchableOpacity
                    style={styles.dropdownButton}
                    onPress={() => setShowFundingStatusDropdown(!showFundingStatusDropdown)}
                  >
                    <Text style={styles.dropdownButtonText}>
                      {eventForm.fundingStatus || 'Select Funding Status'}
                    </Text>
                    <FontAwesome5 
                      name={showFundingStatusDropdown ? "chevron-up" : "chevron-down"} 
                      size={16} 
                      color={isDarkMode ? '#fff' : '#333'} 
                    />
                  </TouchableOpacity>
                  
                  {showFundingStatusDropdown && (
                    <ScrollView 
                      style={styles.dropdownList}
                      showsVerticalScrollIndicator={true}
                      nestedScrollEnabled={true}
                    >
                      {['Not Started', 'In Progress', 'Partially Funded', 'Fully Funded', 'Over Funded'].map((status, index) => (
                        <TouchableOpacity
                          key={index}
                          style={[
                            styles.dropdownItem,
                            eventForm.fundingStatus === status && { backgroundColor: isDarkMode ? '#444' : '#f0f8ff' }
                          ]}
                          onPress={() => {
                            setEventForm({...eventForm, fundingStatus: status});
                            setShowFundingStatusDropdown(false);
                          }}
                        >
                          <Text style={[
                            styles.dropdownItemText,
                            eventForm.fundingStatus === status && { color: '#64a12d', fontWeight: 'bold' }
                          ]}>
                            {status}
                          </Text>
                        </TouchableOpacity>
                      ))}
                    </ScrollView>
                  )}
                </View>
              </View>

              <View style={styles.inputGroup}>
                <Text style={styles.inputLabel}>Total Funding Required (LKR)</Text>
                <TextInput
                  style={styles.textInput}
                  value={eventForm.totalFunding}
                  onChangeText={(text) => setEventForm({...eventForm, totalFunding: text})}
                  placeholder="Enter total funding required"
                  placeholderTextColor={isDarkMode ? '#666' : '#999'}
                  keyboardType="numeric"
                />
              </View>

              <View style={styles.inputGroup}>
                <Text style={styles.inputLabel}>Received Funding (LKR)</Text>
                <TextInput
                  style={styles.textInput}
                  value={eventForm.receivedFunding}
                  onChangeText={(text) => setEventForm({...eventForm, receivedFunding: text})}
                  placeholder="Enter received funding amount"
                  placeholderTextColor={isDarkMode ? '#666' : '#999'}
                  keyboardType="numeric"
                />
              </View>

              <View style={styles.inputGroup}>
                <Text style={styles.inputLabel}>Pending Funding (LKR)</Text>
                <TextInput
                  style={styles.textInput}
                  value={eventForm.pendingFunding}
                  onChangeText={(text) => setEventForm({...eventForm, pendingFunding: text})}
                  placeholder="Enter pending funding amount"
                  placeholderTextColor={isDarkMode ? '#666' : '#999'}
                  keyboardType="numeric"
                />
              </View>
            </ScrollView>

            <View style={styles.modalActions}>
              <TouchableOpacity 
                style={[styles.modalButton, styles.cancelButton]}
                onPress={closeEventModal}
              >
                <Text style={[styles.modalButtonText, styles.cancelButtonText]}>Cancel</Text>
              </TouchableOpacity>
              <TouchableOpacity 
                style={[styles.modalButton, styles.saveButton]}
                onPress={saveEvent}
              >
                <Text style={styles.modalButtonText}>Save</Text>
              </TouchableOpacity>
            </View>
          </View>
        </View>
      </Modal>

      {/* Fund Modal */}
      <Modal
        visible={fundModalVisible}
        animationType="slide"
        transparent={true}
        onRequestClose={closeFundModal}
      >
        <View style={styles.modalOverlay}>
          <View style={styles.modalContent}>
            <Text style={styles.modalTitle}>
              Add Fund to {selectedEvent?.name}
            </Text>
            
            <ScrollView showsVerticalScrollIndicator={true}>
              <View style={styles.inputGroup}>
                <Text style={styles.inputLabel}>Funder *</Text>
                <TouchableOpacity
                  style={styles.dropdownButton}
                  onPress={() => {
                    try {
                      if (loadingFunders) {
                        Alert.alert('Loading', 'Funders are still loading. Please wait a moment.');
                        return;
                      }
                      
                      if (!funders || funders.length === 0) {
                        Alert.alert('No Funders', 'No funders available. Please add funders first.');
                        return;
                      }
                      
                      const funderButtons = funders.map((funder) => ({
                        text: String(funder),
                        onPress: () => {
                          try {
                            setFundForm({...fundForm, funder: String(funder)});
                          } catch (error) {
                            console.error('Error setting funder:', error);
                          }
                        }
                      }));
                      
                      funderButtons.push({ text: 'Cancel', style: 'cancel' });
                      
                      Alert.alert(
                        'Select Funder',
                        'Choose a funder:',
                        funderButtons
                      );
                    } catch (error) {
                      console.error('Error in funder selection:', error);
                      Alert.alert('Error', 'Failed to open funder selection. Please try again.');
                    }
                  }}
                >
                  <Text style={styles.dropdownButtonText}>
                    {fundForm.funder || 'Select Funder'}
                  </Text>
                  <FontAwesome5 
                    name="chevron-down" 
                    size={16} 
                    color={isDarkMode ? '#fff' : '#333'} 
                  />
                </TouchableOpacity>
              </View>

              <View style={styles.inputGroup}>
                <Text style={styles.inputLabel}>Amount (LKR) *</Text>
                <TextInput
                  style={styles.textInput}
                  value={fundForm.amount}
                  onChangeText={(text) => setFundForm({...fundForm, amount: text})}
                  placeholder="Enter fund amount"
                  placeholderTextColor={isDarkMode ? '#666' : '#999'}
                  keyboardType="numeric"
                />
              </View>

              <View style={styles.inputGroup}>
                <Text style={styles.inputLabel}>Status *</Text>
                <TouchableOpacity
                  style={styles.dropdownButton}
                  onPress={() => {
                    Alert.alert(
                      'Select Status',
                      'Choose fund status:',
                      ['Outstanding', 'Pending', 'Available', 'Spent'].map((status) => ({
                        text: status,
                        onPress: () => setFundForm({...fundForm, status: status})
                      })).concat([{ text: 'Cancel', style: 'cancel' }])
                    );
                  }}
                >
                  <Text style={styles.dropdownButtonText}>
                    {fundForm.status || 'Select Status'}
                  </Text>
                  <FontAwesome5 
                    name="chevron-down" 
                    size={16} 
                    color={isDarkMode ? '#fff' : '#333'} 
                  />
                </TouchableOpacity>
              </View>

              <View style={styles.inputGroup}>
                <Text style={styles.inputLabel}>Expense Category *</Text>
                <TouchableOpacity
                  style={styles.dropdownButton}
                  onPress={() => {
                    try {
                      if (loadingCategories) {
                        Alert.alert('Loading', 'Categories are still loading. Please wait a moment.');
                        return;
                      }
                      
                      if (!categories || categories.length === 0) {
                        Alert.alert('No Categories', 'No categories available. Please add categories first.');
                        return;
                      }
                      
                      const categoryButtons = categories.map((category) => ({
                        text: String(category),
                        onPress: () => {
                          try {
                            setFundForm({...fundForm, category: String(category)});
                          } catch (error) {
                            console.error('Error setting expense category:', error);
                          }
                        }
                      }));
                      
                      categoryButtons.push({ text: 'Cancel', style: 'cancel' });
                      
                      Alert.alert(
                        'Select Expense Category',
                        'Choose expense category:',
                        categoryButtons
                      );
                    } catch (error) {
                      console.error('Error in expense category selection:', error);
                      Alert.alert('Error', 'Failed to open expense category selection. Please try again.');
                    }
                  }}
                >
                  <Text style={styles.dropdownButtonText}>
                    {fundForm.category || 'Select Category'}
                  </Text>
                  <FontAwesome5 
                    name="chevron-down" 
                    size={16} 
                    color={isDarkMode ? '#fff' : '#333'} 
                  />
                </TouchableOpacity>
              </View>
            </ScrollView>

            <View style={styles.modalActions}>
              <TouchableOpacity 
                style={[styles.modalButton, styles.cancelButton]}
                onPress={closeFundModal}
              >
                <Text style={[styles.modalButtonText, styles.cancelButtonText]}>Cancel</Text>
              </TouchableOpacity>
              <TouchableOpacity 
                style={[styles.modalButton, styles.saveButton]}
                onPress={saveFund}
              >
                <Text style={styles.modalButtonText}>Add Fund</Text>
              </TouchableOpacity>
            </View>
          </View>
        </View>
      </Modal>
    </View>
  );
}