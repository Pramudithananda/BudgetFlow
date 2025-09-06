import { useState } from 'react';
import { StyleSheet, ScrollView, View as RNView } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import CategoryItem from '../../components/CategoryItem';
import { useTheme } from '../../context/theme';

export default function CategoryScreen() {
  const { colors, isDarkMode } = useTheme();
  
  // Static sample data for categories
  const [categories] = useState([
    { id: 1, name: 'Food & Beverages', color: '#64a12d', totalAmount: 60000, expenseCount: 1 },
    { id: 2, name: 'Decorations', color: '#ff6b6b', totalAmount: 20000, expenseCount: 1 },
    { id: 3, name: 'Transportation', color: '#4ecdc4', totalAmount: 10000, expenseCount: 1 },
    { id: 4, name: 'Other Expenses', color: '#45b7d1', totalAmount: 10000, expenseCount: 1 }
  ]);

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
          categories.map((category) => (
            <CategoryItem
              key={category.id}
              name={category.name}
              totalAmount={category.totalAmount}
              totalExpenses={category.expenseCount}
              onPress={() => router.push(`/category/${category.id}`)}
            />
          ))
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