import { useState } from 'react';
import { StyleSheet, ScrollView, View as RNView } from 'react-native';
import { Text, View } from '../../../components/Themed';
import { router, useLocalSearchParams } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../../components/Card';
import Button from '../../../components/Button';
import ExpenseItem from '../../../components/ExpenseItem';
import { useTheme } from '../../../context/theme';

export default function CategoryDetailScreen() {
  const { colors, isDarkMode } = useTheme();
  const { id } = useLocalSearchParams();
  
  // Static sample data for categories
  const categoriesData = [
    { id: 1, name: 'Food & Beverages', color: '#64a12d', description: 'Meals, snacks, and drinks' },
    { id: 2, name: 'Decorations', color: '#ff6b6b', description: 'Party decorations and setup' },
    { id: 3, name: 'Transportation', color: '#4ecdc4', description: 'Travel and transport costs' },
    { id: 4, name: 'Other Expenses', color: '#45b7d1', description: 'Miscellaneous expenses' }
  ];

  // Static sample data for expenses
  const expensesData = [
    { id: 1, title: 'Food & Beverages', amount: 60000, status: 'Spent', categoryId: 1, assignedTo: 'Sujith', date: '2024-01-15' },
    { id: 2, title: 'Decorations', amount: 20000, status: 'Available', categoryId: 2, assignedTo: 'Nirvan', date: '2024-01-16' },
    { id: 3, title: 'Transportation', amount: 10000, status: 'Pending', categoryId: 3, assignedTo: 'Welfare', date: '2024-01-17' },
    { id: 4, title: 'Other Expenses', amount: 10000, status: 'Outstanding', categoryId: 4, assignedTo: 'Sujith', date: '2024-01-18' }
  ];

  // Find the category by ID
  const category = categoriesData.find(cat => String(cat.id) === String(id));
  
  // Get expenses for this category
  const expenses = expensesData.filter(expense => String(expense.categoryId) === String(id));
  
  // Calculate total amount
  const totalAmount = expenses.reduce((sum, expense) => sum + (expense.amount || 0), 0);

  const handleDeleteCategory = () => {
    // Show info message since this is static data
    alert('Delete Category feature coming soon!');
  };

  const handleEditCategory = () => {
    // Show info message since this is static data
    alert('Edit Category feature coming soon!');
  };

  if (!category) {
    return (
      <View style={styles.errorContainer}>
        <FontAwesome5 name="exclamation-triangle" size={48} color={colors.text} />
        <Text style={[styles.errorText, { color: colors.text }]}>Category not found</Text>
        <Button
          title="Go Back"
          onPress={() => router.back()}
          style={styles.backButton}
        />
      </View>
    );
  }

  return (
    <ScrollView 
      style={[styles.container, { backgroundColor: colors.background }]}
    >
      <Card style={styles.headerCard}>
        <Text style={[styles.categoryName, { color: colors.text }]}>{category.name}</Text>
        {category.description && (
          <Text style={[styles.categoryDescription, { color: colors.text }]}>{category.description}</Text>
        )}
        <RNView style={styles.statsRow}>
          <RNView style={styles.statItem}>
            <Text style={[styles.statNumber, { color: colors.primary }]}>{expenses.length}</Text>
            <Text style={[styles.statLabel, { color: colors.text }]}>Expenses</Text>
          </RNView>
          <RNView style={styles.statItem}>
            <Text style={[styles.statNumber, { color: colors.primary }]}>Rs. {totalAmount.toLocaleString()}</Text>
            <Text style={[styles.statLabel, { color: colors.text }]}>Total</Text>
          </RNView>
        </RNView>
        <RNView style={styles.buttonRow}>
          <Button
            title="+ Add Expense"
            onPress={() => router.push({
              pathname: '/new-expense',
              params: { preSelectedCategory: id }
            })}
            style={styles.addButton}
          />
          <Button
            title="Edit"
            onPress={handleEditCategory}
            variant="outline"
            style={styles.actionButton}
          />
          <Button
            title="Delete"
            onPress={handleDeleteCategory}
            variant="danger"
            style={styles.actionButton}
          />
        </RNView>
      </Card>

      <Text style={[styles.sectionTitle, { color: colors.text }]}>Expenses</Text>

      {expenses.length === 0 ? (
        <Card style={styles.emptyCard}>
          <RNView style={styles.emptyState}>
            <FontAwesome5 name="receipt" size={36} color={colors.text} />
            <Text style={[styles.emptyText, { color: colors.text }]}>No expenses yet</Text>
            <Text style={[styles.emptySubtext, { color: colors.text }]}>
              Add expenses to this category to track your spending
            </Text>
            <Button 
              title="Add Your First Expense" 
              onPress={() => router.push({
                pathname: '/new-expense',
                params: { preSelectedCategory: id }
              })}
              style={styles.firstButton}
            />
          </RNView>
        </Card>
      ) : (
        expenses.map((expense) => (
          <ExpenseItem
            key={expense.id}
            title={expense.title}
            amount={expense.amount}
            status={expense.status}
            assignedTo={expense.assignedTo}
            onPress={() => alert('Expense details coming soon!')}
            style={styles.expenseItem}
          />
        ))
      )}
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  errorContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
  },
  errorText: {
    fontSize: 18,
    fontWeight: 'bold',
    marginTop: 16,
    marginBottom: 20,
  },
  backButton: {
    paddingHorizontal: 20,
    paddingVertical: 10,
  },
  headerCard: {
    margin: 16,
  },
  categoryName: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 8,
  },
  categoryDescription: {
    fontSize: 16,
    marginBottom: 16,
    opacity: 0.8,
  },
  statsRow: {
    flexDirection: 'row',
    marginBottom: 16,
  },
  statItem: {
    marginRight: 24,
  },
  statNumber: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 4,
  },
  statLabel: {
    fontSize: 14,
    opacity: 0.8,
  },
  buttonRow: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  addButton: {
    flex: 1,
    marginRight: 8,
  },
  actionButton: {
    marginHorizontal: 4,
    paddingHorizontal: 12,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginHorizontal: 16,
    marginTop: 16,
    marginBottom: 8,
  },
  emptyCard: {
    margin: 16,
  },
  emptyState: {
    alignItems: 'center',
    justifyContent: 'center',
    padding: 32,
  },
  emptyText: {
    fontSize: 18,
    fontWeight: '600',
    marginTop: 16,
    marginBottom: 8,
  },
  emptySubtext: {
    fontSize: 14,
    textAlign: 'center',
    marginBottom: 24,
    opacity: 0.8,
  },
  firstButton: {
    width: '100%',
  },
  expenseItem: {
    marginHorizontal: 16,
    marginBottom: 8,
  },
});