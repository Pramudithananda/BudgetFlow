import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, ActivityIndicator, RefreshControl, Alert } from 'react-native';
import { Text, View } from '../../../components/Themed';
import { router, useLocalSearchParams } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../../components/Card';
import Button from '../../../components/Button';
import { useTheme } from '../../../context/theme';
import { useData } from '../../../context/DataContext';

export default function ExpenseDetailScreen() {
  const { colors, isDarkMode } = useTheme();
  const { id } = useLocalSearchParams();
  const { getExpenseById, getCategoryById } = useData();
  const [loading, setLoading] = useState(false);
  const [refreshing, setRefreshing] = useState(false);

  // Get expense data from DataContext
  const expense = getExpenseById(id);
  const category = expense ? getCategoryById(expense.categoryId) : null;

  // Debug logging
  console.log('ExpenseDetailScreen:', {
    expenseId: id,
    expense: expense,
    category: category
  });

  const onRefresh = async () => {
    setRefreshing(true);
    // Data is already available from DataContext
    setRefreshing(false);
  };

  const handleDelete = () => {
    Alert.alert(
      'Delete Expense',
      'Are you sure you want to delete this expense?',
      [
        { text: 'Cancel', style: 'cancel' },
        { 
          text: 'Delete', 
          style: 'destructive',
          onPress: async () => {
            try {
              await deleteExpense(id);
              Alert.alert('Success', 'Expense deleted successfully');
              router.back();
            } catch (error) {
              console.error('Error deleting expense:', error);
              Alert.alert('Error', 'Could not delete expense. Please try again.');
            }
          }
        }
      ]
    );
  };

  // Check if expense exists
  if (!expense) {
    return (
      <View style={styles.loadingContainer}>
        <Text style={[styles.errorText, { color: colors.text }]}>Expense not found</Text>
        <Button title="Go Back" onPress={() => router.back()} />
      </View>
    );
  }

  const getStatusColor = (status) => {
    switch (status) {
      case 'Received':
        return colors.success;
      case 'Pending':
        return colors.warning;
      default:
        return colors.text;
    }
  };

  return (
    <ScrollView 
      style={[styles.container, { backgroundColor: colors.background }]}
      refreshControl={
        <RefreshControl refreshing={refreshing} onRefresh={onRefresh} />
      }
    >
      <Card style={styles.expenseCard}>
        <Text style={styles.expenseTitle}>{expense.title}</Text>
        <Text style={[styles.expenseAmount, { color: colors.primary }]}>Rs. {expense.amount?.toLocaleString()}</Text>
        
        <RNView style={styles.detailRow}>
          <Text style={styles.detailLabel}>Status:</Text>
          <Text style={[styles.detailValue, { color: getStatusColor(expense.status) }]}>
            {expense.status}
          </Text>
        </RNView>

        {expense.assignedTo && (
          <RNView style={styles.detailRow}>
            <Text style={styles.detailLabel}>Assigned To:</Text>
            <Text style={styles.detailValue}>{expense.assignedTo}</Text>
          </RNView>
        )}

        {category && (
          <RNView style={styles.detailRow}>
            <Text style={styles.detailLabel}>Category:</Text>
            <Text style={styles.detailValue}>{category.name}</Text>
          </RNView>
        )}

        {expense.date && (
          <RNView style={styles.detailRow}>
            <Text style={styles.detailLabel}>Date:</Text>
            <Text style={styles.detailValue}>{expense.date}</Text>
          </RNView>
        )}

        {expense.description && (
          <RNView style={styles.notesSection}>
            <Text style={styles.detailLabel}>Description:</Text>
            <Text style={styles.notes}>{expense.description}</Text>
          </RNView>
        )}

        <RNView style={styles.buttonRow}>
          <Button
            title="Edit"
            onPress={() => router.push({
              pathname: '/edit-expense/[id]',
              params: { id: expense.id }
            })}
            variant="outline"
            style={styles.actionButton}
          />
          <Button
            title="Delete"
            onPress={handleDelete}
            variant="danger"
            style={styles.actionButton}
          />
        </RNView>
      </Card>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  errorText: {
    fontSize: 18,
    marginBottom: 20,
    textAlign: 'center',
  },
  expenseCard: {
    margin: 16,
  },
  expenseTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 8,
  },
  expenseAmount: {
    fontSize: 32,
    fontWeight: 'bold',
    marginBottom: 24,
  },
  detailRow: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
  },
  detailLabel: {
    fontSize: 16,
    fontWeight: '600',
    marginRight: 8,
    minWidth: 100,
  },
  detailValue: {
    fontSize: 16,
    flex: 1,
  },
  notesSection: {
    marginTop: 8,
    marginBottom: 24,
  },
  notes: {
    fontSize: 16,
    marginTop: 8,
  },
  buttonRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginTop: 16,
  },
  actionButton: {
    flex: 1,
    marginHorizontal: 8,
  },
}); 