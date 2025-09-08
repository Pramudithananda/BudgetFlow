import { useState } from 'react';
import { StyleSheet, ScrollView, View as RNView } from 'react-native';
import { Text, View } from '../../../components/Themed';
import { router, useLocalSearchParams } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../../components/Card';
import Button from '../../../components/Button';
import ExpenseItem from '../../../components/ExpenseItem';
import { useTheme } from '../../../context/theme';
import { useData } from '../../../context/DataContext';

export default function CategoryDetailScreen() {
  const { colors, isDarkMode } = useTheme();
  const { id } = useLocalSearchParams();
  const { getCategoryById, getExpensesByCategory, categories, expenses: allExpenses, deleteCategory } = useData();
  
  // Get category and expenses from DataContext
  const category = getCategoryById(id) || categories.find(cat => String(cat.id) === String(id));
  const expenses = allExpenses ? allExpenses.filter(exp => String(exp.categoryId) === String(id)) : [];
  
  // Calculate total amount
  const totalAmount = expenses.reduce((sum, expense) => sum + (expense.amount || 0), 0);

  // Debug logging
  console.log('CategoryDetailScreen:', {
    categoryId: id,
    categoryIdType: typeof id,
    category: category,
    expenses: expenses,
    totalAmount: totalAmount,
    allCategories: categories,
    allExpenses: allExpenses,
    categoryFound: !!category,
    expensesFound: expenses.length
  });

  const handleDeleteCategory = () => {
    Alert.alert(
      'Delete Category',
      `Are you sure you want to delete "${category?.name}"? This action cannot be undone.`,
      [
        { text: 'Cancel', style: 'cancel' },
        { 
          text: 'Delete', 
          style: 'destructive',
          onPress: async () => {
            try {
              await deleteCategory(id);
              Alert.alert('Success', 'Category deleted successfully!', [
                { text: 'OK', onPress: () => router.push('/category') }
              ]);
            } catch (error) {
              Alert.alert('Error', 'Could not delete category. Please try again.');
            }
          }
        }
      ]
    );
  };

  const handleEditCategory = () => {
    // Navigate to edit category page
    router.push(`/edit-category/${id}`);
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