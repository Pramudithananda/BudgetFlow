import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, TouchableOpacity, Alert, ActivityIndicator, RefreshControl } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import ExpenseItem from '../../components/ExpenseItem';
import { useTheme } from '../../context/theme';
import { useData } from '../../context/DataContext';

export default function ExpensesScreen() {
  const { colors, isDarkMode } = useTheme();
  const { 
    expenses, 
    categories, 
    loading, 
    error, 
    refreshData 
  } = useData();
  
  const [refreshing, setRefreshing] = useState(false);

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

  const handleAddExpense = () => {
    router.push('/new-expense');
  };

  const handleEditExpense = (expenseId) => {
    Alert.alert('Edit Expense', 'Edit functionality coming soon!');
  };

  const handleDeleteExpense = (expenseId, expenseTitle) => {
    Alert.alert(
      'Delete Expense',
      `Are you sure you want to delete "${expenseTitle}"?`,
      [
        { text: 'Cancel', style: 'cancel' },
        { 
          text: 'Delete', 
          style: 'destructive',
          onPress: () => {
            Alert.alert('Success', 'Expense deleted successfully!');
          }
        }
      ]
    );
  };

  const formatDate = (dateString) => {
    const date = new Date(dateString);
    return date.toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'short',
      day: 'numeric'
    });
  };

  const getTotalAmount = () => {
    return expenses.reduce((sum, expense) => sum + expense.amount, 0);
  };

  const getExpensesByStatus = (status) => {
    return expenses.filter(expense => expense.status === status);
  };

  const getCategoryById = (id) => categories.find(cat => cat.id === id);

  if (loading && !refreshing) {
    return (
      <View style={[styles.container, styles.centered, { backgroundColor: colors.background }]}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={[styles.loadingText, { color: colors.text }]}>Loading expenses...</Text>
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
        <Text style={[styles.title, { color: colors.text }]}>Expenses</Text>
        <Text style={[styles.subtitle, { color: colors.text }]}>
          Total: Rs. {getTotalAmount().toLocaleString()}
        </Text>
      </RNView>

      {/* Add Expense Button */}
      <Card style={styles.card}>
        <Button
          title="Add New Expense"
          onPress={handleAddExpense}
          style={styles.addButton}
        />
      </Card>

      {/* Status Summary */}
      <Card style={styles.card}>
        <Text style={[styles.cardTitle, { color: colors.text }]}>Status Summary</Text>
        <RNView style={styles.statusGrid}>
          {['Spent', 'Available', 'Pending', 'Outstanding'].map((status) => {
            const statusExpenses = getExpensesByStatus(status);
            const totalAmount = statusExpenses.reduce((sum, exp) => sum + exp.amount, 0);
            
            return (
              <RNView key={status} style={styles.statusCard}>
                <Text style={[styles.statusTitle, { color: colors.text }]}>{status}</Text>
                <Text style={[styles.statusAmount, { color: colors.primary }]}>
                  Rs. {totalAmount.toLocaleString()}
                </Text>
                <Text style={[styles.statusCount, { color: colors.text }]}>
                  {statusExpenses.length} expenses
                </Text>
              </RNView>
            );
          })}
        </RNView>
      </Card>

      {/* All Expenses */}
      <Card style={styles.card}>
        <RNView style={styles.cardHeader}>
          <Text style={[styles.cardTitle, { color: colors.text }]}>All Expenses</Text>
          <Text style={[styles.expenseCount, { color: colors.text }]}>
            {expenses.length} expenses
          </Text>
        </RNView>
        
        {expenses.length > 0 ? (
          expenses.map((expense) => {
            const category = getCategoryById(expense.categoryId);
            return (
              <RNView key={expense.id} style={styles.expenseContainer}>
                <ExpenseItem
                  title={expense.title}
                  amount={expense.amount}
                  status={expense.status}
                  assignedTo={expense.assignedTo}
                  onPress={() => router.push(`/expense/${expense.id}`)}
                  style={styles.expenseItem}
                />
                <RNView style={styles.expenseDetails}>
                  <Text style={[styles.expenseDate, { color: colors.text }]}>
                    {formatDate(expense.date)}
                  </Text>
                  {category && (
                    <Text style={[styles.expenseCategory, { color: category.color }]}>
                      {category.name}
                    </Text>
                  )}
                </RNView>
                <RNView style={styles.actionButtons}>
                  <TouchableOpacity
                    style={[styles.actionButton, { backgroundColor: '#64a12d' }]}
                    onPress={() => handleEditExpense(expense.id)}
                  >
                    <FontAwesome5 name="edit" size={14} color="#fff" />
                  </TouchableOpacity>
                  <TouchableOpacity
                    style={[styles.actionButton, { backgroundColor: '#e74c3c' }]}
                    onPress={() => handleDeleteExpense(expense.id, expense.title)}
                  >
                    <FontAwesome5 name="trash" size={14} color="#fff" />
                  </TouchableOpacity>
                </RNView>
              </RNView>
            );
          })
        ) : (
          <RNView style={styles.emptyContainer}>
            <FontAwesome5 name="receipt" size={48} color={colors.text} style={styles.emptyIcon} />
            <Text style={[styles.emptyTitle, { color: colors.text }]}>No expenses yet</Text>
            <Text style={[styles.emptySubtitle, { color: colors.text }]}>
              Add your first expense to get started
            </Text>
          </RNView>
        )}
      </Card>
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
  cardHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 12,
  },
  expenseCount: {
    fontSize: 14,
    opacity: 0.7,
  },
  statusGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
  },
  statusCard: {
    width: '48%',
    backgroundColor: 'rgba(0,0,0,0.05)',
    padding: 12,
    borderRadius: 8,
    marginBottom: 8,
    alignItems: 'center',
  },
  statusTitle: {
    fontSize: 12,
    fontWeight: '600',
    marginBottom: 4,
  },
  statusAmount: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 2,
  },
  statusCount: {
    fontSize: 10,
    opacity: 0.7,
  },
  expenseContainer: {
    marginBottom: 12,
  },
  expenseItem: {
    marginVertical: 0,
  },
  expenseDetails: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginTop: 8,
    paddingHorizontal: 4,
  },
  expenseDate: {
    fontSize: 12,
    opacity: 0.7,
  },
  expenseCategory: {
    fontSize: 12,
    fontWeight: '600',
  },
  actionButtons: {
    flexDirection: 'row',
    justifyContent: 'flex-end',
    marginTop: 8,
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
});