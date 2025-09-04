import React, { useState, useEffect } from 'react';
import { View, StyleSheet, ScrollView, TouchableOpacity, Alert, Modal, TextInput } from 'react-native';
import { Text } from '../../components/Themed';
import { useTheme } from '../../context/theme';
import { FontAwesome5 } from '@expo/vector-icons';
import { getFunders, addFunder, getCategories } from '../../services/sqliteService';
import * as SQLite from 'expo-sqlite';

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
      funder: 'ABC Foundation',
      fundCategory: 'Private Foundations',
      expenseCategories: ['Venue & Facilities', 'Catering & Food', 'Marketing & Promotion'],
      category: 'Venue & Facilities'
    },
    {
      id: 2,
      name: 'Team Building Workshop',
      date: '2024-02-20',
      location: 'Mount Lavinia Hotel',
      budget: 150000,
      description: 'Team building activities and workshops',
      expenseStatus: 'Pending',
      funder: 'XYZ Corporation',
      fundCategory: 'Corporate Sponsors',
      expenseCategories: ['Accommodation', 'Transportation', 'Materials & Supplies'],
      category: 'Accommodation'
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
    funder: '',
    fundCategory: '',
    expenseCategories: [],
    category: ''
  });

  // Dropdown options
  const expenseStatusOptions = ['Outstanding', 'Pending', 'Available', 'Spent'];
  
  // Funders data from database
  const [funderOptions, setFunderOptions] = useState([]);
  const [loadingFunders, setLoadingFunders] = useState(true);
  
  // Fund categories data from database
  const [fundCategoryOptions, setFundCategoryOptions] = useState([]);
  const [loadingFundCategories, setLoadingFundCategories] = useState(true);
  
  // Expense categories data from database
  const [expenseCategoryOptions, setExpenseCategoryOptions] = useState([]);
  const [loadingExpenseCategories, setLoadingExpenseCategories] = useState(true);
  
  // Categories data from database
  const [categoryOptions, setCategoryOptions] = useState([]);
  const [loadingCategories, setLoadingCategories] = useState(true);
  
  // Dropdown visibility states
  const [showExpenseStatusDropdown, setShowExpenseStatusDropdown] = useState(false);
  const [showFunderDropdown, setShowFunderDropdown] = useState(false);
  const [showFundCategoryDropdown, setShowFundCategoryDropdown] = useState(false);
  const [showCategoryDropdown, setShowCategoryDropdown] = useState(false);
  const [showExpenseCategoriesDropdown, setShowExpenseCategoriesDropdown] = useState(false);

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
      overflow: 'visible',
    },
      modalContent: {
    backgroundColor: isDarkMode ? '#2a2a2a' : '#fff',
    padding: 0,
    borderRadius: 12,
    width: '90%',
    maxHeight: '85%',
    overflow: 'visible',
    zIndex: 1,
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
    paddingBottom: 50,
  },
  expenseCategoriesContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    marginTop: 8,
  },
  expenseCategoryTag: {
    backgroundColor: '#64a12d',
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 16,
    marginRight: 8,
    marginBottom: 8,
  },
  expenseCategoryText: {
    color: '#fff',
    fontSize: 12,
    fontWeight: '500',
  },
  inputSubLabel: {
    fontSize: 12,
    marginBottom: 8,
    fontStyle: 'italic',
  },
  selectedCategoriesContainer: {
    marginTop: 8,
    padding: 8,
    backgroundColor: isDarkMode ? '#333' : '#f0f0f0',
    borderRadius: 8,
  },
  selectedCategoriesLabel: {
    fontSize: 12,
    fontStyle: 'italic',
  },
  dropdownButton: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 12,
    marginTop: 8,
    borderRadius: 8,
    borderWidth: 1,
    borderColor: '#e0e0e0',
    backgroundColor: '#fff',
  },
  dropdownButtonText: {
    fontSize: 16,
    color: '#333',
  },
  dropdownButtonDark: {
    backgroundColor: '#333',
    borderColor: '#555',
  },
  dropdownButtonTextDark: {
    color: '#fff',
  },
  dropdownList: {
    position: 'absolute',
    top: '100%',
    left: 0,
    right: 0,
    backgroundColor: '#fff',
    borderWidth: 1,
    borderColor: '#e0e0e0',
    borderRadius: 12,
    marginTop: 6,
    maxHeight: 200,
    zIndex: 99999,
    elevation: 25,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 8 },
    shadowOpacity: 0.3,
    shadowRadius: 12,
    overflow: 'hidden',
  },
  dropdownListDark: {
    backgroundColor: '#2a2a2a',
    borderColor: '#555',
  },
  dropdownListItem: {
    padding: 16,
    borderBottomWidth: 0.5,
    borderBottomColor: '#f0f0f0',
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    minHeight: 48,
  },
  dropdownListItemDark: {
    borderBottomColor: '#444',
  },
  dropdownListItemText: {
    fontSize: 16,
    color: '#333',
    flex: 1,
    fontWeight: '500',
  },
  dropdownListItemTextDark: {
    color: '#fff',
  },
  dropdownListItemSelected: {
    backgroundColor: '#e8f5e8',
    borderLeftWidth: 4,
    borderLeftColor: '#64a12d',
  },
  dropdownListItemSelectedDark: {
    backgroundColor: '#1a4d1a',
    borderLeftColor: '#64a12d',
  },
  dropdownListItemTextSelected: {
    color: '#64a12d',
    fontWeight: 'bold',
  },
  dropdownScrollContainer: {
    maxHeight: 200,
  },
  dropdownEmptyState: {
    padding: 20,
    alignItems: 'center',
    justifyContent: 'center',
  },
  dropdownEmptyText: {
    fontSize: 14,
    color: '#999',
    fontStyle: 'italic',
  },
  dropdownEmptyTextDark: {
    color: '#666',
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
    maxHeight: 200,
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
  addNewOption: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 12,
    marginTop: 8,
    borderRadius: 8,
    borderWidth: 2,
    borderColor: '#64a12d',
    borderStyle: 'dashed',
  },
  addNewOptionText: {
    fontSize: 16,
    fontWeight: 'bold',
    marginLeft: 8,
  },
  loadingContainer: {
    padding: 20,
    alignItems: 'center',
  },
  loadingText: {
    fontSize: 14,
    fontStyle: 'italic',
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
      funder: '',
      fundCategory: '',
      expenseCategories: [],
      category: ''
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
      funder: event.funder || '',
      fundCategory: event.fundCategory || '',
      expenseCategories: event.expenseCategories || [],
      category: event.category || ''
    });
    setEditingEvent(event);
    setModalVisible(true);
  };

  const closeModal = () => {
    setModalVisible(false);
    setEditingEvent(null);
  };

  const saveEvent = () => {
    if (!eventForm.name || !eventForm.date || !eventForm.location || !eventForm.budget || !eventForm.expenseStatus || !eventForm.funder || !eventForm.fundCategory || !eventForm.category) {
      Alert.alert('Error', 'Please fill in all required fields including expense status, funder, fund category, and category');
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
      funder: eventForm.funder,
      fundCategory: eventForm.fundCategory,
      expenseCategories: eventForm.expenseCategories,
      category: eventForm.category
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

  const toggleExpenseCategory = (category) => {
    const currentCategories = eventForm.expenseCategories || [];
    if (currentCategories.includes(category)) {
      setEventForm({
        ...eventForm,
        expenseCategories: currentCategories.filter(cat => cat !== category)
      });
    } else {
      setEventForm({
        ...eventForm,
        expenseCategories: [...currentCategories, category]
      });
    }
  };

  // Load funders from database
  useEffect(() => {
    const loadFunders = async () => {
      try {
        setLoadingFunders(true);
        const funders = await getFunders();
        const funderNames = funders.map(funder => funder.name);
        setFunderOptions(funderNames);
      } catch (error) {
        console.error('Error loading funders:', error);
        // Fallback to default funders if database fails
        setFunderOptions([
          'ABC Foundation',
          'XYZ Corporation', 
          'DEF Trust',
          'GHI Fund',
          'JKL Organization'
        ]);
      } finally {
        setLoadingFunders(false);
      }
    };

    loadFunders();
  }, []);

  // Load fund categories from database
  useEffect(() => {
    const loadFundCategories = async () => {
      try {
        setLoadingFundCategories(true);
        const db = SQLite.openDatabase('budgetflow.db');
        
        await new Promise((resolve, reject) => {
          db.transaction(tx => {
            tx.executeSql(
              'SELECT * FROM fund_categories ORDER BY name;',
              [],
              (_, { rows }) => {
                const categories = rows._array.map(cat => cat.name);
                setFundCategoryOptions(categories);
                resolve();
              },
              (_, error) => {
                console.error('Error loading fund categories:', error);
                reject(error);
              }
            );
          });
        });
      } catch (error) {
        console.error('Error loading fund categories:', error);
        // Fallback to default fund categories
        setFundCategoryOptions([
          'Government Grants',
          'International Organizations',
          'Private Foundations',
          'Corporate Sponsors',
          'Embassy Funding',
          'NGO Partners',
          'Local Donors',
          'Educational Institutions'
        ]);
      } finally {
        setLoadingFundCategories(false);
      }
    };

    loadFundCategories();
  }, []);

  // Load expense categories from database
  useEffect(() => {
    const loadExpenseCategories = async () => {
      try {
        setLoadingExpenseCategories(true);
        const db = SQLite.openDatabase('budgetflow.db');
        
        await new Promise((resolve, reject) => {
          db.transaction(tx => {
            tx.executeSql(
              'SELECT * FROM categories ORDER BY name;',
              [],
              (_, { rows }) => {
                const categories = rows._array.map(cat => cat.name);
                setExpenseCategoryOptions(categories);
                resolve();
              },
              (_, error) => {
                console.error('Error loading expense categories:', error);
                reject(error);
              }
            );
          });
        });
      } catch (error) {
        console.error('Error loading expense categories:', error);
        // Fallback to default expense categories
        setExpenseCategoryOptions([
          'Venue & Facilities',
          'Catering & Food',
          'Transportation',
          'Marketing & Promotion',
          'Equipment & Technology',
          'Speakers & Training',
          'Accommodation',
          'Materials & Supplies',
          'Security & Safety',
          'Administrative'
        ]);
      } finally {
        setLoadingExpenseCategories(false);
      }
    };

    loadExpenseCategories();
  }, []);

  // Load categories from database
  useEffect(() => {
    const loadCategories = async () => {
      try {
        setLoadingCategories(true);
        const categories = await getCategories();
        const categoryNames = categories.map(cat => cat.name);
        setCategoryOptions(categoryNames);
      } catch (error) {
        console.error('Error loading categories:', error);
        // Fallback to default categories if database fails
        setCategoryOptions([
          'Venue & Facilities',
          'Catering & Food',
          'Transportation',
          'Marketing & Promotion',
          'Equipment & Technology',
          'Speakers & Training',
          'Accommodation',
          'Materials & Supplies',
          'Security & Safety',
          'Administrative'
        ]);
      } finally {
        setLoadingCategories(false);
      }
    };

    loadCategories();
  }, []);

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

            <View style={styles.eventDetails}>
              <View style={styles.eventDetail}>
                <Text style={styles.eventLabel}>Fund Category</Text>
                <Text style={[styles.eventValue, { color: '#64a12d', fontWeight: 'bold' }]}>
                  {event.fundCategory}
                </Text>
              </View>
              <View style={styles.eventDetail}>
                <Text style={styles.eventLabel}>Category</Text>
                <Text style={[styles.eventValue, { color: '#2196F3', fontWeight: 'bold' }]}>
                  {event.category}
                </Text>
              </View>
            </View>

            {event.expenseCategories && event.expenseCategories.length > 0 && (
              <View style={styles.eventDetails}>
                <View style={styles.eventDetail}>
                  <Text style={styles.eventLabel}>Expense Categories</Text>
                  <View style={styles.expenseCategoriesContainer}>
                    {event.expenseCategories.map((category, index) => (
                      <View key={index} style={styles.expenseCategoryTag}>
                        <Text style={styles.expenseCategoryText}>{category}</Text>
                      </View>
                    ))}
                  </View>
                </View>
              </View>
            )}

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
              <View style={{ position: 'relative', overflow: 'visible', zIndex: 10000 }}>
                <TouchableOpacity
                  style={[
                    styles.dropdownButton,
                    isDarkMode && styles.dropdownButtonDark
                  ]}
                  onPress={() => setShowExpenseStatusDropdown(!showExpenseStatusDropdown)}
                >
                  <Text style={[
                    styles.dropdownButtonText,
                    isDarkMode && styles.dropdownButtonTextDark
                  ]}>
                    {eventForm.expenseStatus || 'Select Status'}
                  </Text>
                  <FontAwesome5 
                    name={showExpenseStatusDropdown ? "chevron-up" : "chevron-down"} 
                    size={16} 
                    color={isDarkMode ? '#fff' : '#333'} 
                  />
                </TouchableOpacity>
                
                {showExpenseStatusDropdown && (
                  <View style={[
                    styles.dropdownList,
                    isDarkMode && styles.dropdownListDark
                  ]}>
                    <ScrollView 
                      style={styles.dropdownScrollContainer}
                      showsVerticalScrollIndicator={true}
                      nestedScrollEnabled={true}
                    >
                      {expenseStatusOptions.map((status) => (
                        <TouchableOpacity
                          key={status}
                          style={[
                            styles.dropdownListItem,
                            isDarkMode && styles.dropdownListItemDark,
                            eventForm.expenseStatus === status && styles.dropdownListItemSelected,
                            eventForm.expenseStatus === status && isDarkMode && styles.dropdownListItemSelectedDark
                          ]}
                          onPress={() => {
                            setEventForm({...eventForm, expenseStatus: status});
                            setShowExpenseStatusDropdown(false);
                          }}
                        >
                          <Text style={[
                            styles.dropdownListItemText,
                            isDarkMode && styles.dropdownListItemTextDark,
                            eventForm.expenseStatus === status && styles.dropdownListItemTextSelected
                          ]}>
                            {status}
                          </Text>
                          {eventForm.expenseStatus === status && (
                            <FontAwesome5 name="check-circle" size={18} color="#64a12d" />
                          )}
                        </TouchableOpacity>
                      ))}
                    </ScrollView>
                  </View>
                )}
              </View>
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.inputLabel}>Funder *</Text>
              <View style={{ position: 'relative', overflow: 'visible', zIndex: 10000 }}>
                <TouchableOpacity
                  style={[
                    styles.dropdownButton,
                    isDarkMode && styles.dropdownButtonDark
                  ]}
                  onPress={() => setShowFunderDropdown(!showFunderDropdown)}
                >
                  <Text style={[
                    styles.dropdownButtonText,
                    isDarkMode && styles.dropdownButtonTextDark
                  ]}>
                    {eventForm.funder || 'Select Funder'}
                  </Text>
                  <FontAwesome5 
                    name={showFunderDropdown ? "chevron-up" : "chevron-down"} 
                    size={16} 
                    color={isDarkMode ? '#fff' : '#333'} 
                  />
                </TouchableOpacity>
                
                {showFunderDropdown && (
                  <View style={[
                    styles.dropdownList,
                    isDarkMode && styles.dropdownListDark
                  ]}>
                    <ScrollView 
                      style={styles.dropdownScrollContainer}
                      showsVerticalScrollIndicator={true}
                      nestedScrollEnabled={true}
                    >
                      {loadingFunders ? (
                        <View style={styles.dropdownEmptyState}>
                          <Text style={[
                            styles.dropdownEmptyText,
                            isDarkMode && styles.dropdownEmptyTextDark
                          ]}>
                            Loading funders...
                          </Text>
                        </View>
                      ) : (
                        <>
                          {funderOptions.map((funder) => (
                            <TouchableOpacity
                              key={funder}
                              style={[
                                styles.dropdownListItem,
                                isDarkMode && styles.dropdownListItemDark,
                                eventForm.funder === funder && styles.dropdownListItemSelected,
                                eventForm.funder === funder && isDarkMode && styles.dropdownListItemSelectedDark
                              ]}
                              onPress={() => {
                                setEventForm({...eventForm, funder: funder});
                                setShowFunderDropdown(false);
                              }}
                            >
                              <Text style={[
                                styles.dropdownListItemText,
                                isDarkMode && styles.dropdownListItemTextDark,
                                eventForm.funder === funder && styles.dropdownListItemTextSelected
                              ]}>
                                {funder}
                              </Text>
                              {eventForm.funder === funder && (
                                <FontAwesome5 name="check-circle" size={18} color="#64a12d" />
                              )}
                            </TouchableOpacity>
                          ))}
                          
                          {/* Add New Funder Option */}
                          <TouchableOpacity
                            style={[
                              styles.dropdownListItem,
                              isDarkMode && styles.dropdownListItemDark,
                              { backgroundColor: isDarkMode ? '#1a4d1a' : '#e8f5e8', borderLeftWidth: 4, borderLeftColor: '#64a12d' }
                            ]}
                            onPress={() => {
                              setShowFunderDropdown(false);
                              Alert.prompt(
                                'Add New Funder',
                                'Enter the name of the new funder:',
                                [
                                  { text: 'Cancel', style: 'cancel' },
                                  { 
                                    text: 'Add', 
                                    onPress: async (funderName) => {
                                      if (funderName && funderName.trim()) {
                                        try {
                                          const newFunder = funderName.trim();
                                          // Add to database
                                          await addFunder({
                                            name: newFunder,
                                            contact: '',
                                            amount: 0
                                          });
                                          // Update local state
                                          setFunderOptions([...funderOptions, newFunder]);
                                          setEventForm({...eventForm, funder: newFunder});
                                          Alert.alert('Success', 'Funder added successfully!');
                                        } catch (error) {
                                          console.error('Error adding funder:', error);
                                          Alert.alert('Error', 'Failed to add funder. Please try again.');
                                        }
                                      }
                                    }
                                  }
                                ],
                                'plain-text'
                              );
                            }}
                          >
                            <Text style={[
                              styles.dropdownListItemText,
                              isDarkMode && styles.dropdownListItemTextDark,
                              { color: '#64a12d', fontWeight: 'bold' }
                            ]}>
                              + Add New Funder
                            </Text>
                            <FontAwesome5 name="plus-circle" size={18} color="#64a12d" />
                          </TouchableOpacity>
                        </>
                      )}
                    </ScrollView>
                  </View>
                )}
              </View>
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.inputLabel}>Fund Category *</Text>
              <View style={{ position: 'relative', overflow: 'visible', zIndex: 10000 }}>
                <TouchableOpacity
                  style={[
                    styles.dropdownButton,
                    isDarkMode && styles.dropdownButtonDark
                  ]}
                  onPress={() => setShowFundCategoryDropdown(!showFundCategoryDropdown)}
                >
                  <Text style={[
                    styles.dropdownButtonText,
                    isDarkMode && styles.dropdownButtonTextDark
                  ]}>
                    {eventForm.fundCategory || 'Select Fund Category'}
                  </Text>
                  <FontAwesome5 
                    name={showFundCategoryDropdown ? "chevron-up" : "chevron-down"} 
                    size={16} 
                    color={isDarkMode ? '#fff' : '#333'} 
                  />
                </TouchableOpacity>
                
                {showFundCategoryDropdown && (
                  <View style={[
                    styles.dropdownList,
                    isDarkMode && styles.dropdownListDark
                  ]}>
                    <ScrollView 
                      style={styles.dropdownScrollContainer}
                      showsVerticalScrollIndicator={true}
                      nestedScrollEnabled={true}
                    >
                      {loadingFundCategories ? (
                        <View style={styles.dropdownEmptyState}>
                          <Text style={[
                            styles.dropdownEmptyText,
                            isDarkMode && styles.dropdownEmptyTextDark
                          ]}>
                            Loading fund categories...
                          </Text>
                        </View>
                      ) : (
                        fundCategoryOptions.map((category) => (
                          <TouchableOpacity
                            key={category}
                            style={[
                              styles.dropdownListItem,
                              isDarkMode && styles.dropdownListItemDark,
                              eventForm.fundCategory === category && styles.dropdownListItemSelected,
                              eventForm.fundCategory === category && isDarkMode && styles.dropdownListItemSelectedDark
                            ]}
                            onPress={() => {
                              setEventForm({...eventForm, fundCategory: category});
                              setShowFundCategoryDropdown(false);
                            }}
                          >
                            <Text style={[
                              styles.dropdownListItemText,
                              isDarkMode && styles.dropdownListItemTextDark,
                              eventForm.fundCategory === category && styles.dropdownListItemTextSelected
                            ]}>
                              {category}
                            </Text>
                            {eventForm.fundCategory === category && (
                              <FontAwesome5 name="check-circle" size={18} color="#64a12d" />
                            )}
                          </TouchableOpacity>
                        ))
                      )}
                    </ScrollView>
                  </View>
                )}
              </View>
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.inputLabel}>Category *</Text>
              <View style={{ position: 'relative', overflow: 'visible', zIndex: 10000 }}>
                <TouchableOpacity
                  style={[
                    styles.dropdownButton,
                    isDarkMode && styles.dropdownButtonDark
                  ]}
                  onPress={() => setShowCategoryDropdown(!showCategoryDropdown)}
                >
                  <Text style={[
                    styles.dropdownButtonText,
                    isDarkMode && styles.dropdownButtonTextDark
                  ]}>
                    {eventForm.category || 'Select Category'}
                  </Text>
                  <FontAwesome5 
                    name={showCategoryDropdown ? "chevron-up" : "chevron-down"} 
                    size={16} 
                    color={isDarkMode ? '#fff' : '#333'} 
                  />
                </TouchableOpacity>
                
                {showCategoryDropdown && (
                  <View style={[
                    styles.dropdownList,
                    isDarkMode && styles.dropdownListDark
                  ]}>
                    <ScrollView 
                      style={styles.dropdownScrollContainer}
                      showsVerticalScrollIndicator={true}
                      nestedScrollEnabled={true}
                    >
                      {loadingCategories ? (
                        <View style={styles.dropdownEmptyState}>
                          <Text style={[
                            styles.dropdownEmptyText,
                            isDarkMode && styles.dropdownEmptyTextDark
                          ]}>
                            Loading categories...
                          </Text>
                        </View>
                      ) : (
                        categoryOptions.map((category) => (
                          <TouchableOpacity
                            key={category}
                            style={[
                              styles.dropdownListItem,
                              isDarkMode && styles.dropdownListItemDark,
                              eventForm.category === category && styles.dropdownListItemSelected,
                              eventForm.category === category && isDarkMode && styles.dropdownListItemSelectedDark
                            ]}
                            onPress={() => {
                              setEventForm({...eventForm, category: category});
                              setShowCategoryDropdown(false);
                            }}
                          >
                            <Text style={[
                              styles.dropdownListItemText,
                              isDarkMode && styles.dropdownListItemTextDark,
                              eventForm.category === category && { color: '#2196F3', fontWeight: 'bold' }
                            ]}>
                              {category}
                            </Text>
                            {eventForm.category === category && (
                              <FontAwesome5 name="check-circle" size={18} color="#2196F3" />
                            )}
                          </TouchableOpacity>
                        ))
                      )}
                    </ScrollView>
                  </View>
                )}
              </View>
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.inputLabel}>Expense Categories</Text>
              <Text style={[styles.inputSubLabel, { color: isDarkMode ? '#ccc' : '#666' }]}>
                Select the types of expenses for this event
              </Text>
              <View style={{ position: 'relative', overflow: 'visible', zIndex: 100000 }}>
                <TouchableOpacity
                  style={[
                    styles.dropdownButton,
                    isDarkMode && styles.dropdownButtonDark
                  ]}
                  onPress={() => setShowExpenseCategoriesDropdown(!showExpenseCategoriesDropdown)}
                >
                  <Text style={[
                    styles.dropdownButtonText,
                    isDarkMode && styles.dropdownButtonTextDark
                  ]}>
                    {eventForm.expenseCategories && eventForm.expenseCategories.length > 0 
                      ? `${eventForm.expenseCategories.length} categories selected`
                      : 'Select Expense Categories'
                    }
                  </Text>
                  <FontAwesome5 
                    name={showExpenseCategoriesDropdown ? "chevron-up" : "chevron-down"} 
                    size={16} 
                    color={isDarkMode ? '#fff' : '#333'} 
                  />
                </TouchableOpacity>
                
                {showExpenseCategoriesDropdown && (
                  <View style={[
                    styles.dropdownList,
                    isDarkMode && styles.dropdownListDark,
                    { 
                      position: 'absolute',
                      top: '100%',
                      left: 0,
                      right: 0,
                      backgroundColor: isDarkMode ? '#2a2a2a' : '#fff',
                      borderWidth: 1,
                      borderColor: isDarkMode ? '#555' : '#e0e0e0',
                      borderRadius: 12,
                      marginTop: 6,
                      maxHeight: 200,
                      zIndex: 999999,
                      elevation: 30,
                      shadowColor: '#000',
                      shadowOffset: { width: 0, height: 8 },
                      shadowOpacity: 0.3,
                      shadowRadius: 12,
                      overflow: 'hidden',
                    }
                  ]}>
                    <ScrollView 
                      style={styles.dropdownScrollContainer}
                      showsVerticalScrollIndicator={true}
                      nestedScrollEnabled={true}
                    >
                      {loadingExpenseCategories ? (
                        <View style={styles.dropdownEmptyState}>
                          <Text style={[
                            styles.dropdownEmptyText,
                            isDarkMode && styles.dropdownEmptyTextDark
                          ]}>
                            Loading expense categories...
                          </Text>
                        </View>
                      ) : (
                        expenseCategoryOptions.map((category) => {
                          const isSelected = eventForm.expenseCategories && eventForm.expenseCategories.includes(category);
                          return (
                            <TouchableOpacity
                              key={category}
                              style={[
                                styles.dropdownListItem,
                                isDarkMode && styles.dropdownListItemDark,
                                isSelected && styles.dropdownListItemSelected,
                                isSelected && isDarkMode && styles.dropdownListItemSelectedDark
                              ]}
                              onPress={() => toggleExpenseCategory(category)}
                            >
                              <Text style={[
                                styles.dropdownListItemText,
                                isDarkMode && styles.dropdownListItemTextDark,
                                isSelected && styles.dropdownListItemTextSelected
                              ]}>
                                {category}
                              </Text>
                              {isSelected && (
                                <FontAwesome5 name="check-circle" size={18} color="#64a12d" />
                              )}
                            </TouchableOpacity>
                          );
                        })
                      )}
                    </ScrollView>
                  </View>
                )}
              </View>
              {eventForm.expenseCategories && eventForm.expenseCategories.length > 0 && (
                <View style={styles.selectedCategoriesContainer}>
                  <Text style={[styles.selectedCategoriesLabel, { color: isDarkMode ? '#ccc' : '#666' }]}>
                    Selected: {eventForm.expenseCategories.join(', ')}
                  </Text>
                </View>
              )}
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