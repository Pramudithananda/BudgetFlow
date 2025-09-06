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
import { useData } from '../../context/DataContext';

export default function HomeScreen() {
  const { colors, isDarkMode } = useTheme();
  
  // Safe data access with fallbacks
  let categories = [];
  let expenses = [];
  let events = [];
  let budgetSummary = { totalBudget: 0, totalSpent: 0, totalReceived: 0, remaining: 0, pending: 0 };
  let statusTotals = { Pending: 0, Spent: 0, Available: 0, Outstanding: 0 };
  let getExpensesByCategory = () => [];
  
  try {
    const data = useData();
    categories = data.categories || [];
    expenses = data.expenses || [];
    events = data.events || [];
    budgetSummary = data.getBudgetSummary ? data.getBudgetSummary() : budgetSummary;
    statusTotals = data.getStatusTotals ? data.getStatusTotals() : statusTotals;
    getExpensesByCategory = data.getExpensesByCategory || getExpensesByCategory;
  } catch (error) {
    console.warn('Error accessing data context:', error);
  }
  
  // Get dynamic data from context
  const recentExpenses = expenses.slice(-4); // Get last 4 expenses
  
  const [selectedEvent, setSelectedEvent] = useState(null);
  const [showEventModal, setShowEventModal] = useState(false);
  const [showEventDropdown, setShowEventDropdown] = useState(false);

  const formatCurrency = (amount) => {
    return new Intl.NumberFormat('en-LK', {
      style: 'currency',
      currency: 'LKR',
      minimumFractionDigits: 2,
      maximumFractionDigits: 2,
    }).format(amount);
  };

  const formatDate = (dateString) => {
    const options = { year: 'numeric', month: 'long', day: 'numeric' };
    return new Date(dateString).toLocaleDateString(undefined, {
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
          receivedFund={budgetSummary.totalReceived}
          spent={statusTotals.Spent}
        />

        {/* Funding Status */}
        <Card style={styles.card}>
          <Text style={styles.cardTitle}>Funding Status</Text>
          <RNView style={styles.statusGrid}>
            {Object.entries(statusTotals).map(([status, amount]) => (
              <RNView key={status} style={styles.statusItem}>
                <Text style={styles.statusLabel}>{status}</Text>
                <Text style={styles.statusValue}>Rs. {amount.toLocaleString()}</Text>
              </RNView>
            ))}
          </RNView>
        </Card>

        {/* Events Section */}
        <Card style={styles.card}>
          <RNView style={styles.cardHeader}>
            <Text style={styles.cardTitle}>Events</Text>
            <TouchableOpacity onPress={() => setShowEventDropdown(!showEventDropdown)} style={styles.dropdownButton}>
              <Text style={styles.dropdownButtonText}>{selectedEvent ? selectedEvent.name : 'Select Event'}</Text>
              <FontAwesome5 name={showEventDropdown ? "chevron-up" : "chevron-down"} size={14} color={colors.text} />
            </TouchableOpacity>
          </RNView>
          {showEventDropdown && (
            <RNView style={[styles.dropdownContainer, { backgroundColor: colors.card }]}>
              {events.map((event) => (
                <TouchableOpacity 
                  key={event.id} 
                  style={styles.dropdownItem} 
                  onPress={() => {
                    setSelectedEvent(event);
                    setShowEventDropdown(false);
                    setShowEventModal(true);
                  }}
                >
                  <Text style={styles.dropdownItemText}>{event.name}</Text>
                </TouchableOpacity>
              ))}
            </RNView>
          )}
          {!selectedEvent && (
            <Text style={styles.noDataText}>Select an event to view details.</Text>
          )}
        </Card>

        {/* Categories Section */}
        <Card style={styles.card}>
          <RNView style={styles.cardHeader}>
            <Text style={styles.cardTitle}>Categories</Text>
            <Button
              title="Add Category"
              onPress={() => router.push('/new-category')}
              style={styles.addButton}
            />
          </RNView>
          {categories.map((category) => {
            const categoryExpenses = getExpensesByCategory(category.id);
            const totalAmount = categoryExpenses.reduce((sum, exp) => sum + exp.amount, 0);
            return (
              <CategoryItem
                key={category.id}
                name={category.name}
                totalAmount={totalAmount}
                totalExpenses={categoryExpenses.length}
                onPress={() => router.push(`/category/${category.id}`)}
              />
            );
          })}
        </Card>

        {/* Recent Expenses */}
        <Card style={styles.card}>
          <RNView style={styles.cardHeader}>
            <Text style={styles.cardTitle}>Recent Expenses</Text>
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
              onPress={() => router.push(`/expense/${expense.id}`)}
            />
          ))}
        </Card>
      </ScrollView>

      {/* Event Details Modal */}
      <Modal
        animationType="slide"
        transparent={true}
        visible={showEventModal}
        onRequestClose={() => setShowEventModal(false)}
      >
        <RNView style={styles.modalOverlay}>
          <View style={[styles.modalContent, { backgroundColor: colors.card }]}>
            <RNView style={styles.modalHeader}>
              <Text style={styles.modalTitle}>{selectedEvent?.name}</Text>
              <TouchableOpacity onPress={() => setShowEventModal(false)}>
                <FontAwesome5 name="times" size={24} color={colors.text} />
              </TouchableOpacity>
            </RNView>
            {selectedEvent && (
              <ScrollView style={styles.modalBody}>
                <Text style={styles.modalText}>Date: {formatDate(selectedEvent.date)}</Text>
                <Text style={styles.modalText}>Category: {selectedEvent.category}</Text>
                <Text style={styles.modalText}>Total Funding: {formatCurrency(selectedEvent.totalFunding)}</Text>
                <Text style={styles.modalText}>Received Funding: {formatCurrency(selectedEvent.receivedFunding)}</Text>
                <Text style={styles.modalText}>Pending Funding: {formatCurrency(selectedEvent.pendingFunding)}</Text>

                <Text style={styles.modalSubtitle}>Expense Breakdown:</Text>
                {categories.map((cat) => {
                  const categoryExpenses = getExpensesByCategory(cat.id);
                  const totalAmount = categoryExpenses.reduce((sum, exp) => sum + exp.amount, 0);
                  if (totalAmount > 0) {
                    return (
                      <RNView key={cat.id} style={styles.modalExpenseItem}>
                        <Text style={styles.modalExpenseTitle}>{cat.name}:</Text>
                        <Text style={styles.modalExpenseAmount}>{formatCurrency(totalAmount)}</Text>
                      </RNView>
                    );
                  }
                  return null;
                })}
              </ScrollView>
            )}
          </View>
        </RNView>
      </Modal>
    </>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  card: {
    marginHorizontal: 16,
    marginTop: 16,
  },
  cardHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 10,
  },
  cardTitle: {
    fontSize: 18,
    fontWeight: 'bold',
  },
  addButton: {
    paddingVertical: 8,
    paddingHorizontal: 12,
    borderRadius: 8,
  },
  statusGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
    marginTop: 10,
  },
  statusItem: {
    width: '48%',
    padding: 10,
    borderRadius: 8,
    marginBottom: 10,
    backgroundColor: '#f0f0f0',
  },
  statusLabel: {
    fontSize: 14,
    fontWeight: 'bold',
    marginBottom: 5,
  },
  statusValue: {
    fontSize: 16,
  },
  dropdownButton: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 8,
    borderRadius: 8,
    borderWidth: 1,
    borderColor: '#ccc',
  },
  dropdownButtonText: {
    marginRight: 8,
  },
  dropdownContainer: {
    position: 'absolute',
    top: 50,
    right: 10,
    left: 10,
    borderRadius: 8,
    borderWidth: 1,
    borderColor: '#ccc',
    zIndex: 1000,
    maxHeight: 200,
    overflow: 'hidden',
  },
  dropdownItem: {
    padding: 12,
    borderBottomWidth: 1,
    borderBottomColor: '#eee',
  },
  dropdownItemText: {
    fontSize: 16,
  },
  noDataText: {
    textAlign: 'center',
    marginTop: 20,
    fontSize: 16,
    color: '#888',
  },
  modalOverlay: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
  },
  modalContent: {
    width: '90%',
    borderRadius: 10,
    padding: 20,
    maxHeight: '80%',
  },
  modalHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 15,
  },
  modalTitle: {
    fontSize: 22,
    fontWeight: 'bold',
  },
  modalBody: {
    marginTop: 10,
  },
  modalText: {
    fontSize: 16,
    marginBottom: 8,
  },
  modalSubtitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginTop: 15,
    marginBottom: 10,
  },
  modalExpenseItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 5,
  },
  modalExpenseTitle: {
    fontSize: 16,
  },
  modalExpenseAmount: {
    fontSize: 16,
    fontWeight: 'bold',
  },
});