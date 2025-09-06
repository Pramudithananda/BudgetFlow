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
  const { categories, deleteCategory, getExpensesByCategory } = useData();

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
              <RNView key={category.id} style={styles.categoryContainer}>
                <CategoryItem
                  name={category.name}
                  totalAmount={totalAmount}
                  totalExpenses={categoryExpenses.length}
                  onPress={() => router.push(`/category/${category.id}`)}
                />
                <RNView style={styles.actionButtons}>
                  <TouchableOpacity
                    style={[styles.actionButton, { backgroundColor: '#64a12d' }]}
                    onPress={() => handleEditCategory(category.id)}
                  >
                    <FontAwesome5 name="edit" size={16} color="#fff" />
                  </TouchableOpacity>
                  <TouchableOpacity
                    style={[styles.actionButton, { backgroundColor: '#e74c3c' }]}
                    onPress={() => handleDeleteCategory(category.id, category.name)}
                  >
                    <FontAwesome5 name="trash" size={16} color="#fff" />
                  </TouchableOpacity>
                </RNView>
              </RNView>
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
  categoryContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
  },
  actionButtons: {
    flexDirection: 'row',
    marginLeft: 10,
  },
  actionButton: {
    width: 36,
    height: 36,
    borderRadius: 18,
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