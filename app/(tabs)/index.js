import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, ActivityIndicator, RefreshControl, StatusBar, TouchableOpacity, Modal } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import BudgetSummary from '../../components/BudgetSummary';
import Card from '../../components/Card';
import Button from '../../components/Button';
import CategoryItem from '../../components/CategoryItem';
import ExpenseItem from '../../components/ExpenseItem';
import { useTheme } from '../../context/theme';

export default function HomeScreen() {
  const { colors, isDarkMode } = useTheme();
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [categories, setCategories] = useState([]);
  const [recentExpenses, setRecentExpenses] = useState([]);
  const [events, setEvents] = useState([]);
  const [budgetSummary, setBudgetSummary] = useState({
    totalBudget: 0,
    receivedFund: 0,
  });
  const [statusTotals, setStatusTotals] = useState({
    Pending: 0,
    Spent: 0,
    Available: 0,
    Outstanding: 0,
  });
  
  const [selectedEvent, setSelectedEvent] = useState(null);
  const [showEventModal, setShowEventModal] = useState(false);
  const [showEventDropdown, setShowEventDropdown] = useState(false);

  const fetchData = async () => {
    try {
      setLoading(true);
      
      // Simulate loading delay
      await new Promise(resolve => setTimeout(resolve, 500));
      
      // Static data for demonstration
      const budgetData = { totalBudget: 100000, receivedFund: 25000 };
      const expensesData = [
        { id: 1, title: 'Food & Beverages', amount: 60000, status: 'Spent', categoryId: 1, date: '2024-01-15' },
        { id: 2, title: 'Decorations', amount: 20000, status: 'Available', categoryId: 2, date: '2024-01-16' },
        { id: 3, title: 'Transportation', amount: 10000, status: 'Pending', categoryId: 3, date: '2024-01-17' },
        { id: 4, title: 'Other Expenses', amount: 10000, status: 'Outstanding', categoryId: 4, date: '2024-01-18' }
      ];
      const categoriesData = [
        { id: 1, name: 'Food & Beverages', color: '#64a12d', totalAmount: 60000, expenseCount: 1 },
        { id: 2, name: 'Decorations', color: '#ff6b6b', totalAmount: 20000, expenseCount: 1 },
        { id: 3, name: 'Transportation', color: '#4ecdc4', totalAmount: 10000, expenseCount: 1 },
        { id: 4, name: 'Other Expenses', color: '#45b7d1', totalAmount: 10000, expenseCount: 1 }
      ];
      const eventsData = [
        { id: 1, name: 'Birthday Celebration', date: '2024-10-01', category: 'Conference', totalFunding: 100000, receivedFunding: 25000, pendingFunding: 75000 }
      ];
      
      setBudgetSummary(budgetData);
      setEvents(eventsData);
      setStatusTotals({
        Pending: 10000,
        Spent: 60000,
        Available: 20000,
        Outstanding: 10000,
      });
      setCategories(categoriesData);
      setRecentExpenses(expensesData.slice(0, 5));
    } catch (error) {
      console.error('Error in fetchData:', error);
    } finally {
      setLoading(false);
    }
  };

  const onRefresh = async () => {
    setRefreshing(true);
    await fetchData();
    setRefreshing(false);
  };

  // Event handling functions
  const handleEventSelect = (event) => {
    setSelectedEvent(event);
    setShowEventModal(true);
    setShowEventDropdown(false);
  };

  const formatDate = (dateString) => {
    return new Date(dateString).toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    });
  };

  useEffect(() => {
    fetchData();
  }, []); // Empty dependency array to run only once

  if (loading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={styles.loadingText}>Loading BudgetFlow...</Text>
      </View>
    );
  }

  return (
    <>
      <StatusBar
        barStyle="light-content"
        backgroundColor={colors.primary}
        translucent={false}
      />
      <ScrollView 
        style={[styles.container, { backgroundColor: colors.background }]}
        refreshControl={
          <RefreshControl refreshing={refreshing} onRefresh={onRefresh} />
        }
      >
        {/* Budget Summary */}
        <BudgetSummary 
          totalBudget={budgetSummary.totalBudget}
          receivedFund={budgetSummary.receivedFund}
        />

        {/* Funding Status Summary */}
        <Card style={styles.card}>
          <Text style={[styles.cardTitle, { color: colors.text }]}>Funding Status</Text>
          <RNView style={styles.statusGrid}>
            <RNView style={styles.statusItem}>
              <Text style={[styles.statusLabel, { color: colors.text }]}>Pending</Text>
              <Text style={[styles.statusAmount, { color: '#ff6b6b' }]}>Rs. {statusTotals.Pending.toLocaleString()}</Text>
            </RNView>
            <RNView style={styles.statusItem}>
              <Text style={[styles.statusLabel, { color: colors.text }]}>Spent</Text>
              <Text style={[styles.statusAmount, { color: '#ff4757' }]}>Rs. {statusTotals.Spent.toLocaleString()}</Text>
            </RNView>
            <RNView style={styles.statusItem}>
              <Text style={[styles.statusLabel, { color: colors.text }]}>Available</Text>
              <Text style={[styles.statusAmount, { color: '#2ed573' }]}>Rs. {statusTotals.Available.toLocaleString()}</Text>
            </RNView>
            <RNView style={styles.statusItem}>
              <Text style={[styles.statusLabel, { color: colors.text }]}>Outstanding</Text>
              <Text style={[styles.statusAmount, { color: '#ffa502' }]}>Rs. {statusTotals.Outstanding.toLocaleString()}</Text>
            </RNView>
          </RNView>
        </Card>

        {/* Event Selection */}
        <Card style={styles.card}>
          <Text style={[styles.cardTitle, { color: colors.text }]}>Select Event</Text>
          <TouchableOpacity 
            style={[styles.dropdownButton, { borderColor: colors.border }]}
            onPress={() => setShowEventDropdown(!showEventDropdown)}
          >
            <Text style={[styles.dropdownText, { color: colors.text }]}>
              {selectedEvent ? selectedEvent.name : 'Select an event'}
            </Text>
            <FontAwesome5 
              name={showEventDropdown ? 'chevron-up' : 'chevron-down'} 
              size={16} 
              color={colors.text} 
            />
          </TouchableOpacity>
          
          {showEventDropdown && (
            <RNView style={[styles.dropdown, { backgroundColor: colors.background, borderColor: colors.border }]}>
              {events.map((event) => (
                <TouchableOpacity
                  key={event.id}
                  style={[styles.dropdownItem, { borderBottomColor: colors.border }]}
                  onPress={() => handleEventSelect(event)}
                >
                  <Text style={[styles.dropdownItemText, { color: colors.text }]}>{event.name}</Text>
                  <Text style={[styles.dropdownItemDate, { color: colors.text }]}>{formatDate(event.date)}</Text>
                </TouchableOpacity>
              ))}
            </RNView>
          )}
        </Card>

        {/* Categories */}
        <Card style={styles.card}>
          <RNView style={styles.cardHeader}>
            <Text style={[styles.cardTitle, { color: colors.text }]}>Categories</Text>
            <Button
              title="Add Category"
              onPress={() => router.push('/new-category')}
              style={styles.addButton}
            />
          </RNView>
          {categories.length > 0 ? (
            categories.map((category) => (
              <CategoryItem
                key={category.id}
                category={category}
                onPress={() => router.push(`/category/${category.id}`)}
              />
            ))
          ) : (
            <Text style={[styles.emptyText, { color: colors.text }]}>No categories yet</Text>
          )}
        </Card>

        {/* Recent Expenses */}
        <Card style={styles.card}>
          <RNView style={styles.cardHeader}>
            <Text style={[styles.cardTitle, { color: colors.text }]}>Recent Expenses</Text>
            <Button
              title="Add Expense"
              onPress={() => router.push('/new-expense')}
              style={styles.addButton}
            />
          </RNView>
          {recentExpenses.length > 0 ? (
            recentExpenses.map((expense) => (
              <ExpenseItem
                key={expense.id}
                expense={expense}
                onPress={() => {}}
              />
            ))
          ) : (
            <Text style={[styles.emptyText, { color: colors.text }]}>No expenses yet</Text>
          )}
        </Card>
      </ScrollView>

      {/* Event Details Modal */}
      <Modal
        visible={showEventModal}
        animationType="slide"
        presentationStyle="pageSheet"
      >
        <View style={[styles.modalContainer, { backgroundColor: colors.background }]}>
          <RNView style={styles.modalHeader}>
            <Text style={[styles.modalTitle, { color: colors.text }]}>Event Details</Text>
            <TouchableOpacity onPress={() => setShowEventModal(false)}>
              <FontAwesome5 name="times" size={24} color={colors.text} />
            </TouchableOpacity>
          </RNView>
          
          {selectedEvent && (
            <ScrollView style={styles.modalContent}>
              <Text style={[styles.eventName, { color: colors.text }]}>{selectedEvent.name}</Text>
              <Text style={[styles.eventDate, { color: colors.text }]}>{formatDate(selectedEvent.date)}</Text>
              <Text style={[styles.eventCategory, { color: colors.text }]}>Category: {selectedEvent.category}</Text>
              
              <Card style={styles.modalCard}>
                <Text style={[styles.cardTitle, { color: colors.text }]}>Funding Summary</Text>
                <RNView style={styles.fundingRow}>
                  <Text style={[styles.fundingLabel, { color: colors.text }]}>Total Funding:</Text>
                  <Text style={[styles.fundingAmount, { color: colors.text }]}>Rs. {selectedEvent.totalFunding.toLocaleString()}</Text>
                </RNView>
                <RNView style={styles.fundingRow}>
                  <Text style={[styles.fundingLabel, { color: colors.text }]}>Received:</Text>
                  <Text style={[styles.fundingAmount, { color: '#2ed573' }]}>Rs. {selectedEvent.receivedFunding.toLocaleString()}</Text>
                </RNView>
                <RNView style={styles.fundingRow}>
                  <Text style={[styles.fundingLabel, { color: colors.text }]}>Pending:</Text>
                  <Text style={[styles.fundingAmount, { color: '#ff6b6b' }]}>Rs. {selectedEvent.pendingFunding.toLocaleString()}</Text>
                </RNView>
              </Card>
            </ScrollView>
          )}
        </View>
      </Modal>
    </>
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
    padding: 20,
  },
  loadingText: {
    marginTop: 16,
    fontSize: 16,
    fontWeight: '500',
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
  statusGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
  },
  statusItem: {
    width: '48%',
    marginBottom: 12,
  },
  statusLabel: {
    fontSize: 14,
    fontWeight: '500',
    marginBottom: 4,
  },
  statusAmount: {
    fontSize: 16,
    fontWeight: 'bold',
  },
  dropdownButton: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 12,
    borderWidth: 1,
    borderRadius: 8,
    marginBottom: 8,
  },
  dropdownText: {
    fontSize: 16,
  },
  dropdown: {
    borderWidth: 1,
    borderRadius: 8,
    maxHeight: 200,
  },
  dropdownItem: {
    padding: 12,
    borderBottomWidth: 1,
  },
  dropdownItemText: {
    fontSize: 16,
    fontWeight: '500',
  },
  dropdownItemDate: {
    fontSize: 14,
    opacity: 0.7,
    marginTop: 2,
  },
  emptyText: {
    textAlign: 'center',
    fontSize: 16,
    opacity: 0.7,
    marginVertical: 20,
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
  eventName: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 8,
  },
  eventDate: {
    fontSize: 16,
    opacity: 0.7,
    marginBottom: 4,
  },
  eventCategory: {
    fontSize: 16,
    opacity: 0.7,
    marginBottom: 20,
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
  fundingLabel: {
    fontSize: 16,
  },
  fundingAmount: {
    fontSize: 16,
    fontWeight: 'bold',
  },
});