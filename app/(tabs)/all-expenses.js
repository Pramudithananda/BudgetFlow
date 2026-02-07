import React, { useState, useEffect } from 'react';
import { 
  StyleSheet, 
  ScrollView, 
  View as RNView, 
  ActivityIndicator, 
  RefreshControl, 
  TouchableOpacity,
  Alert,
  FlatList
} from 'react-native';
import { Text, View } from '../../components/Themed';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import ExpenseItem from '../../components/ExpenseItem';
import SearchBar from '../../components/SearchBar';
import FilterModal from '../../components/FilterModal';
import { getExpenses, getCategories, getFunders, listenExpenses } from '../../services/sqliteService';
import { useTheme } from '../../context/theme';

export default function AllExpensesScreen() {
  const { colors, isDarkMode } = useTheme();
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [expenses, setExpenses] = useState([]);
  const [filteredExpenses, setFilteredExpenses] = useState([]);
  const [categories, setCategories] = useState([]);
  const [funders, setFunders] = useState([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [filters, setFilters] = useState({});
  const [showFilterModal, setShowFilterModal] = useState(false);
  const [sortBy, setSortBy] = useState('date'); // date, amount, status

  const fetchData = async () => {
    try {
      setLoading(true);
      
      const [expensesData, categoriesData, fundersData] = await Promise.all([
        getExpenses(),
        getCategories(),
        getFunders()
      ]);
      
      // Add category and funder names to expenses
      const expensesWithDetails = expensesData.map(expense => {
        const category = categoriesData.find(cat => cat.id === expense.categoryId);
        const funder = fundersData.find(fund => fund.id === expense.funderId);
        return {
          ...expense,
          categoryName: category?.name || 'Uncategorized',
          funderName: funder?.name || 'Unknown'
        };
      });
      
      setExpenses(expensesWithDetails);
      setCategories(categoriesData);
      setFunders(fundersData);
    } catch (error) {
      console.error('Error fetching data:', error);
      Alert.alert('Error', 'Could not load expenses. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const onRefresh = async () => {
    setRefreshing(true);
    await fetchData();
    setRefreshing(false);
  };

  const handleSearch = (query) => {
    setSearchQuery(query);
    applyFiltersAndSearch(query, filters);
  };

  const handleFilterChange = (newFilters) => {
    setFilters(newFilters);
    applyFiltersAndSearch(searchQuery, newFilters);
  };

  const applyFiltersAndSearch = (query, filterSettings) => {
    let filtered = [...expenses];

    // Apply search filter
    if (query.trim()) {
      filtered = filtered.filter(expense => 
        expense.title.toLowerCase().includes(query.toLowerCase()) ||
        expense.categoryName.toLowerCase().includes(query.toLowerCase()) ||
        expense.funderName.toLowerCase().includes(query.toLowerCase())
      );
    }

    // Apply status filter
    if (filterSettings.status) {
      filtered = filtered.filter(expense => expense.status === filterSettings.status);
    }

    // Apply category filter
    if (filterSettings.categoryId) {
      filtered = filtered.filter(expense => expense.categoryId === filterSettings.categoryId);
    }

    // Apply funder filter
    if (filterSettings.funderId) {
      filtered = filtered.filter(expense => expense.funderId === filterSettings.funderId);
    }

    // Apply amount range filter
    if (filterSettings.amountRange) {
      filtered = filtered.filter(expense => {
        const amount = expense.amount || 0;
        switch (filterSettings.amountRange) {
          case 'under_10k':
            return amount < 10000;
          case '10k_50k':
            return amount >= 10000 && amount < 50000;
          case '50k_100k':
            return amount >= 50000 && amount < 100000;
          case 'over_100k':
            return amount >= 100000;
          default:
            return true;
        }
      });
    }

    // Apply sorting
    filtered.sort((a, b) => {
      switch (sortBy) {
        case 'amount':
          return (b.amount || 0) - (a.amount || 0);
        case 'status':
          return a.status.localeCompare(b.status);
        case 'date':
        default:
          return new Date(b.createdAt) - new Date(a.createdAt);
      }
    });

    setFilteredExpenses(filtered);
  };

  const getStatusColor = (status) => {
    switch (status) {
      case 'Outstanding':
        return '#F44336';
      case 'Pending':
        return '#FF9800';
      case 'Received':
        return '#2196F3';
      case 'Spent':
        return '#4CAF50';
      default:
        return '#9E9E9E';
    }
  };

  const getStatusIcon = (status) => {
    switch (status) {
      case 'Outstanding':
        return 'clock';
      case 'Pending':
        return 'hourglass-half';
      case 'Received':
        return 'check-circle';
      case 'Spent':
        return 'money-bill-wave';
      default:
        return 'question-circle';
    }
  };

  useEffect(() => {
    fetchData();
    
    // Real-time expenses listener
    const unsubscribe = listenExpenses(null, (expensesLive) => {
      const expensesWithDetails = expensesLive.map(expense => {
        const category = categories.find(cat => cat.id === expense.categoryId);
        const funder = funders.find(fund => fund.id === expense.funderId);
        return {
          ...expense,
          categoryName: category?.name || 'Uncategorized',
          funderName: funder?.name || 'Unknown'
        };
      });
      setExpenses(expensesWithDetails);
      applyFiltersAndSearch(searchQuery, filters);
    });

    return () => unsubscribe && unsubscribe();
  }, []);

  useEffect(() => {
    applyFiltersAndSearch(searchQuery, filters);
  }, [expenses, sortBy]);

  if (loading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
      </View>
    );
  }

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      {/* Header with Search and Filter */}
      <View style={styles.header}>
        <SearchBar
          value={searchQuery}
          onChangeText={handleSearch}
          placeholder="Search expenses..."
          onClear={() => handleSearch('')}
        />
        
        <View style={styles.headerActions}>
          <TouchableOpacity
            style={[styles.filterButton, { backgroundColor: colors.card }]}
            onPress={() => setShowFilterModal(true)}
          >
            <FontAwesome5 name="filter" size={16} color={colors.text} />
            <Text style={[styles.filterButtonText, { color: colors.text }]}>Filter</Text>
          </TouchableOpacity>
          
          <TouchableOpacity
            style={[styles.sortButton, { backgroundColor: colors.card }]}
            onPress={() => {
              const sortOptions = ['date', 'amount', 'status'];
              const currentIndex = sortOptions.indexOf(sortBy);
              const nextIndex = (currentIndex + 1) % sortOptions.length;
              setSortBy(sortOptions[nextIndex]);
            }}
          >
            <FontAwesome5 name="sort" size={16} color={colors.text} />
            <Text style={[styles.sortButtonText, { color: colors.text }]}>
              {sortBy === 'date' ? 'Date' : sortBy === 'amount' ? 'Amount' : 'Status'}
            </Text>
          </TouchableOpacity>
        </View>
      </View>

      {/* Summary Cards */}
      <ScrollView 
        horizontal 
        showsHorizontalScrollIndicator={false}
        style={styles.summaryContainer}
        contentContainerStyle={styles.summaryContent}
      >
        {['Outstanding', 'Pending', 'Received', 'Spent'].map((status) => {
          const count = filteredExpenses.filter(exp => exp.status === status).length;
          const total = filteredExpenses
            .filter(exp => exp.status === status)
            .reduce((sum, exp) => sum + (exp.amount || 0), 0);
          
          return (
            <Card key={status} style={styles.summaryCard}>
              <View style={styles.summaryContent}>
                <FontAwesome5 
                  name={getStatusIcon(status)} 
                  size={24} 
                  color={getStatusColor(status)} 
                />
                <Text style={[styles.summaryTitle, { color: colors.text }]}>{status}</Text>
                <Text style={[styles.summaryCount, { color: colors.text }]}>{count}</Text>
                <Text style={[styles.summaryAmount, { color: colors.primary }]}>
                  Rs. {total.toLocaleString()}
                </Text>
              </View>
            </Card>
          );
        })}
      </ScrollView>

      {/* Expenses List */}
      <FlatList
        data={filteredExpenses}
        keyExtractor={(item) => item.id.toString()}
        renderItem={({ item }) => (
          <ExpenseItem
            expense={item}
            onPress={() => {
              // Navigate to expense detail/edit screen
              Alert.alert('Expense Details', `${item.title}\nAmount: Rs. ${item.amount}\nStatus: ${item.status}`);
            }}
          />
        )}
        refreshControl={
          <RefreshControl refreshing={refreshing} onRefresh={onRefresh} />
        }
        ListEmptyComponent={
          <View style={styles.emptyContainer}>
            <FontAwesome5 name="receipt" size={48} color={colors.textSecondary} />
            <Text style={[styles.emptyText, { color: colors.textSecondary }]}>
              {searchQuery || Object.keys(filters).length > 0 
                ? 'No expenses match your search criteria'
                : 'No expenses found'
              }
            </Text>
            <Text style={[styles.emptySubtext, { color: colors.textSecondary }]}>
              {searchQuery || Object.keys(filters).length > 0 
                ? 'Try adjusting your search or filters'
                : 'Add your first expense to get started'
              }
            </Text>
          </View>
        }
        contentContainerStyle={styles.listContainer}
      />

      {/* Filter Modal */}
      <FilterModal
        visible={showFilterModal}
        onClose={() => setShowFilterModal(false)}
        onApply={handleFilterChange}
        categories={categories}
        funders={funders}
        initialFilters={filters}
      />
    </View>
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
  header: {
    padding: 16,
  },
  headerActions: {
    flexDirection: 'row',
    marginTop: 12,
    gap: 12,
  },
  filterButton: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 16,
    paddingVertical: 10,
    borderRadius: 20,
    gap: 8,
  },
  filterButtonText: {
    fontSize: 14,
    fontWeight: '500',
  },
  sortButton: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 16,
    paddingVertical: 10,
    borderRadius: 20,
    gap: 8,
  },
  sortButtonText: {
    fontSize: 14,
    fontWeight: '500',
  },
  summaryContainer: {
    marginBottom: 16,
  },
  summaryContent: {
    paddingHorizontal: 16,
  },
  summaryCard: {
    marginRight: 12,
    minWidth: 100,
  },
  summaryContent: {
    alignItems: 'center',
    padding: 16,
  },
  summaryTitle: {
    fontSize: 12,
    fontWeight: '500',
    marginTop: 8,
    textAlign: 'center',
  },
  summaryCount: {
    fontSize: 18,
    fontWeight: 'bold',
    marginTop: 4,
  },
  summaryAmount: {
    fontSize: 12,
    fontWeight: '500',
    marginTop: 4,
    textAlign: 'center',
  },
  listContainer: {
    paddingBottom: 20,
  },
  emptyContainer: {
    alignItems: 'center',
    padding: 40,
  },
  emptyText: {
    fontSize: 18,
    fontWeight: '600',
    marginTop: 16,
    textAlign: 'center',
  },
  emptySubtext: {
    fontSize: 14,
    marginTop: 8,
    textAlign: 'center',
    opacity: 0.7,
  },
});