import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, StatusBar, TouchableOpacity, Modal, ActivityIndicator, Alert, RefreshControl } from 'react-native';
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
  const { 
    categories, 
    funders, 
    expenses, 
    events, 
    loading, 
    error, 
    getBudgetSummary, 
    getStatusTotals, 
    getExpensesByCategory,
    refreshData 
  } = useData();
  
  const [refreshing, setRefreshing] = useState(false);

  // Get dynamic data from context
  const budgetSummary = getBudgetSummary();
  const statusTotals = getStatusTotals();
  
  // Get dynamic data from context
  const recentExpenses = expenses.slice(-4); // Get last 4 expenses

  const [selectedEvent, setSelectedEvent] = useState(null);
  const [showEventModal, setShowEventModal] = useState(false);
  const [showEventDropdown, setShowEventDropdown] = useState(false);

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

  if (loading && !refreshing) {
    return (
      <View style={[styles.container, styles.centered, { backgroundColor: colors.background }]}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={[styles.loadingText, { color: colors.text }]}>Loading data...</Text>
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
          <RefreshControl
            refreshing={refreshing}
            onRefresh={onRefresh}
            colors={[colors.primary]}
            tintColor={colors.primary}
          />
        }
      >
        {/* Budget Summary */}
        <BudgetSummary 
          totalBudget={budgetSummary.totalBudget}
          receivedFund={budgetSummary.totalReceived}
          spent={statusTotals.Spent}
        />

        {/* Funding Status */}
        <Card style={styles.card}>
          <Text style={[styles.cardTitle, { color: colors.text }]}>Funding Status</Text>
          <RNView style={styles.statusGrid}>
            {Object.entries(statusTotals).map(([status, amount]) => {
              // Get status-specific colors
              const getStatusColor = (status) => {
                switch (status) {
                  case 'Outstanding':
                    return isDarkMode ? '#ff6b6b' : '#e74c3c';
                  case 'Pending':
                    return isDarkMode ? '#f39c12' : '#f39c12';
                  case 'Available':
                    return isDarkMode ? '#3498db' : '#3498db';
                  case 'Spent':
                    return isDarkMode ? '#2ecc71' : '#27ae60';
                  default:
                    return colors.primary;
                }
              };

              // Get status-specific background colors
              const getStatusBackgroundColor = (status) => {
                switch (status) {
                  case 'Outstanding':
                    return isDarkMode ? 'rgba(255, 107, 107, 0.15)' : 'rgba(231, 76, 60, 0.1)';
                  case 'Pending':
                    return isDarkMode ? 'rgba(243, 156, 18, 0.15)' : 'rgba(243, 156, 18, 0.1)';
                  case 'Available':
                    return isDarkMode ? 'rgba(52, 152, 219, 0.15)' : 'rgba(52, 152, 219, 0.1)';
                  case 'Spent':
                    return isDarkMode ? 'rgba(46, 204, 113, 0.15)' : 'rgba(39, 174, 96, 0.1)';
                  default:
                    return isDarkMode ? 'rgba(255,255,255,0.1)' : '#f8f9fa';
                }
              };

              const statusColor = getStatusColor(status);
              const statusBackgroundColor = getStatusBackgroundColor(status);
              
              return (
                <RNView 
                  key={status} 
                  style={[
                    styles.statusItem, 
                    { 
                      backgroundColor: statusBackgroundColor,
                      borderColor: statusColor,
                      borderWidth: 2
                    }
                  ]}
                >
                  <Text style={[styles.statusLabel, { color: statusColor }]}>{status}</Text>
                  <Text style={[styles.statusValue, { color: colors.text }]}>Rs. {amount.toLocaleString()}</Text>
                </RNView>
              );
            })}
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
                color={category.color}
                onPress={() => router.push(`/category/${category.id}`)}
                style={styles.categoryItem}
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
  categoryItem: {
    marginVertical: 2,
  },
  centered: {
    justifyContent: 'center',
    alignItems: 'center',
  },
  loadingText: {
    marginTop: 16,
    fontSize: 16,
  },
  statusGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
    marginTop: 10,
  },
  statusItem: {
    width: '48%',
    padding: 14,
    borderRadius: 12,
    marginBottom: 12,
    shadowOffset: {
      width: 0,
      height: 3,
    },
    shadowOpacity: 0.15,
    shadowRadius: 4,
    elevation: 3,
  },
  statusLabel: {
    fontSize: 15,
    fontWeight: 'bold',
    marginBottom: 6,
  },
  statusValue: {
    fontSize: 17,
    fontWeight: '700',
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