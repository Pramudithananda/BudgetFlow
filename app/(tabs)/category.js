import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, TouchableOpacity, Alert, ActivityIndicator, RefreshControl } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import CategoryItem from '../../components/CategoryItem';
import { useTheme } from '../../context/theme';
import { useData } from '../../context/DataContext';

export default function CategoriesScreen() {
  const { colors, isDarkMode } = useTheme();
  const { 
    categories, 
    expenses, 
    loading, 
    error, 
    getExpensesByCategory,
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

  const handleDeleteCategory = (categoryId, categoryName) => {
    Alert.alert(
      'Delete Category',
      `Are you sure you want to delete "${categoryName}"?`,
      [
        { text: 'Cancel', style: 'cancel' },
        { 
          text: 'Delete', 
          style: 'destructive',
          onPress: () => {
            Alert.alert('Success', 'Category deleted successfully!');
          }
        }
      ]
    );
  };

  if (loading && !refreshing) {
    return (
      <View style={[styles.container, styles.centered, { backgroundColor: colors.background }]}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={[styles.loadingText, { color: colors.text }]}>Loading categories...</Text>
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
        <Text style={[styles.title, { color: colors.text }]}>Categories</Text>
        <Text style={[styles.subtitle, { color: colors.text }]}>
          {categories.length} categories
        </Text>
      </RNView>

      {/* Add Category Button */}
      <Card style={styles.card}>
        <Button
          title="Add New Category"
          onPress={() => router.push('/new-category')}
          style={styles.addButton}
        />
      </Card>

      {/* Categories List */}
      <Card style={styles.card}>
        <Text style={[styles.cardTitle, { color: colors.text }]}>All Categories</Text>
        
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
              Add your first category to get started
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