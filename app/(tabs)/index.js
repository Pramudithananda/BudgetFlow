import { useState } from 'react';
import { StyleSheet, ScrollView, View as RNView, StatusBar, TouchableOpacity, Modal } from 'react-native';
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
  
  // Sample data for Birthday Celebration
  const [budgetSummary] = useState({
    totalBudget: 100000,
    receivedFund: 25000,
  });
  
  const [statusTotals] = useState({
    Pending: 35000,    // Welfare Funding
    Spent: 25000,      // Sujith
    Available: 40000,  // Nirvan
    Outstanding: 0,
  });
  
  const [categories] = useState([
    { id: 1, name: 'Food & Beverages', color: '#64a12d', totalAmount: 60000, expenseCount: 1 },
    { id: 2, name: 'Decorations', color: '#ff6b6b', totalAmount: 20000, expenseCount: 1 },
    { id: 3, name: 'Transportation', color: '#4ecdc4', totalAmount: 10000, expenseCount: 1 },
    { id: 4, name: 'Other Expenses', color: '#45b7d1', totalAmount: 10000, expenseCount: 1 }
  ]);
  
  const [recentExpenses] = useState([
    { id: 1, title: 'Food & Beverages', amount: 60000, status: 'Spent', categoryId: 1, date: '2024-01-15' },
    { id: 2, title: 'Decorations', amount: 20000, status: 'Available', categoryId: 2, date: '2024-01-16' },
    { id: 3, title: 'Transportation', amount: 10000, status: 'Pending', categoryId: 3, date: '2024-01-17' },
    { id: 4, title: 'Other Expenses', amount: 10000, status: 'Outstanding', categoryId: 4, date: '2024-01-18' }
  ]);
  
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
  
  const [selectedEvent, setSelectedEvent] = useState(null);
  const [showEventModal, setShowEventModal] = useState(false);
  const [showEventDropdown, setShowEventDropdown] = useState(false);

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

  return (
    <>
      <StatusBar
        barStyle="light-content"
        backgroundColor={colors.primary}
        translucent={false}
      />
      <ScrollView 
        style={[styles.container, { backgroundColor: colors.background }]}
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
          {categories.map((category) => (
            <CategoryItem
              key={category.id}
              name={category.name}
              totalAmount={category.totalAmount}
              totalExpenses={category.expenseCount}
              onPress={() => router.push(`/category/${category.id}`)}
            />
          ))}
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
          {recentExpenses.map((expense) => (
            <ExpenseItem
              key={expense.id}
              title={expense.title}
              amount={expense.amount}
              status={expense.status}
              assignedTo={expense.assignedTo}
              onPress={() => {}}
            />
          ))}
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

              <Card style={styles.modalCard}>
                <Text style={[styles.cardTitle, { color: colors.text }]}>Funder Details</Text>
                {selectedEvent.funders.map((funder, index) => (
                  <RNView key={index} style={styles.funderRow}>
                    <Text style={[styles.funderName, { color: colors.text }]}>{funder.name}</Text>
                    <Text style={[styles.funderAmount, { color: colors.text }]}>Rs. {funder.amount.toLocaleString()}</Text>
                    <Text style={[styles.funderStatus, { 
                      color: funder.status === 'Spent' ? '#ff4757' : 
                            funder.status === 'Available' ? '#2ed573' : '#ff6b6b'
                    }]}>{funder.status}</Text>
                  </RNView>
                ))}
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