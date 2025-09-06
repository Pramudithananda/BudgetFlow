import { useState } from 'react';
import { StyleSheet, ScrollView, View as RNView, TouchableOpacity, Alert } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import CategoryItem from '../../components/CategoryItem';
import { useTheme } from '../../context/theme';
import { useData } from '../../context/DataContext';

export default function CategoryScreen() {
  const { colors, isDarkMode } = useTheme();
  
  // Use static sample data for now to ensure it works
  const categories = [
    { id: 1, name: 'Food & Beverages', color: '#64a12d', description: 'Meals, snacks, and drinks' },
    { id: 2, name: 'Decorations', color: '#ff6b6b', description: 'Party decorations and setup' },
    { id: 3, name: 'Transportation', color: '#4ecdc4', description: 'Travel and transport costs' },
    { id: 4, name: 'Other Expenses', color: '#45b7d1', description: 'Miscellaneous expenses' }
  ];
  
  const expenses = [
    { id: 1, title: 'Food & Beverages', amount: 60000, status: 'Spent', categoryId: 1, assignedTo: 'Sujith', date: '2024-01-15', description: 'Birthday party catering' },
    { id: 2, title: 'Decorations', amount: 20000, status: 'Available', categoryId: 2, assignedTo: 'Nirvan', date: '2024-01-16', description: 'Party decorations and balloons' },
    { id: 3, title: 'Transportation', amount: 10000, status: 'Pending', categoryId: 3, assignedTo: 'Welfare', date: '2024-01-17', description: 'Transport for guests' },
    { id: 4, title: 'Other Expenses', amount: 10000, status: 'Outstanding', categoryId: 4, assignedTo: 'Sujith', date: '2024-01-18', description: 'Miscellaneous costs' }
  ];
  
  const getExpensesByCategory = (categoryId) => expenses.filter(exp => exp.categoryId === categoryId);
  const deleteCategory = (id) => {
    alert('Delete category feature coming soon!');
  };

  const handleDeleteCategory = (categoryId, categoryName) => {
    Alert.alert(
      'Delete Category',
      `Are you sure you want to delete "${categoryName}"? All associated expenses will be removed.`,
      [
        { text: 'Cancel', style: 'cancel' },
        { 
          text: 'Delete', 
          style: 'destructive',
          onPress: () => {
            try {
              deleteCategory(categoryId);
              Alert.alert('Success', 'Category deleted successfully');
            } catch (error) {
              Alert.alert('Error', 'Failed to delete category. Please try again.');
            }
          }
        }
      ]
    );
  };

  const handleEditCategory = (categoryId) => {
    router.push(`/edit-category/${categoryId}`);
  };

  return (
    <ScrollView 
      style={[styles.container, { backgroundColor: colors.background }]}
    >
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
          categories.map((category) => {
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
          })
        ) : (
          <RNView style={styles.emptyContainer}>
            <FontAwesome5 name="list" size={48} color={colors.text} style={styles.emptyIcon} />
            <Text style={[styles.emptyTitle, { color: colors.text }]}>No categories yet</Text>
            <Text style={[styles.emptySubtitle, { color: colors.text }]}>
              Add categories to organize your expenses
            </Text>
            <Button
              title="Add Your First Category"
              onPress={() => router.push('/new-category')}
              style={styles.emptyButton}
            />
          </RNView>
        )}
      </Card>
    </ScrollView>
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
  categoryItem: {
    marginVertical: 2,
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
    fontWeight: 'bold',
    marginBottom: 8,
  },
  emptySubtitle: {
    fontSize: 14,
    opacity: 0.7,
    textAlign: 'center',
    marginBottom: 20,
  },
  emptyButton: {
    paddingHorizontal: 20,
    paddingVertical: 10,
  },
});