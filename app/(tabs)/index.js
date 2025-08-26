import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, ActivityIndicator, RefreshControl, Alert, TouchableOpacity } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import BudgetSummary from '../../components/BudgetSummary';
import Card from '../../components/Card';
import Button from '../../components/Button';
import CategoryItem from '../../components/CategoryItem';
import ExpenseItem from '../../components/ExpenseItem';
import NotificationCard from '../../components/NotificationCard';
import { getCategories, getExpenses, getBudgetSummary, listenExpenses, listenCategories } from '../../services/sqliteService';
import { useTheme } from '../../context/theme';

export default function HomeScreen() {
  const { colors, isDarkMode } = useTheme();
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [categories, setCategories] = useState([]);
  const [recentExpenses, setRecentExpenses] = useState([]);
  const [budgetSummary, setBudgetSummary] = useState({
    totalBudget: 0,
    receivedFund: 0,
  });
  const [statusTotals, setStatusTotals] = useState({
    remaining: 0,
    pending: 0,
    received: 0,
    spent: 0,
  });
  const [notifications, setNotifications] = useState([]);

  const fetchData = async () => {
    try {
      setLoading(true);
      
      const [budgetData, expensesData, categoriesData] = await Promise.all([
        getBudgetSummary(),
        getExpenses(),
        getCategories()
      ]);
      
      // Calculate total budget as sum of all expenses
      const totalBudget = expensesData.reduce((sum, expense) => sum + (expense.amount || 0), 0);
      
      // Calculate received fund as sum of expenses with status "Received"
      const receivedFund = expensesData
        .filter(expense => expense.status === 'Received')
        .reduce((sum, expense) => sum + (expense.amount || 0), 0);
      
      setBudgetSummary({
        totalBudget,
        receivedFund,
      });
      
      // Calculate totals for each status
      const totals = {
        remaining: 0,
        pending: 0,
        received: 0,
        spent: 0,
      };
      
      expensesData.forEach(expense => {
        if (expense.status === 'Outstanding') {
          totals.remaining += expense.amount;
        } else if (expense.status === 'Pending') {
          totals.pending += expense.amount;
        } else if (expense.status === 'Received') {
          totals.received += expense.amount;
        } else if (expense.status === 'Spent') {
          totals.spent += expense.amount;
        }
      });
      
      setStatusTotals(totals);
      
      // Calculate totals for each category
      const categoriesWithTotals = categoriesData.map(category => {
        const categoryExpenses = expensesData.filter(expense => expense.categoryId === category.id);
        const totalAmount = categoryExpenses.reduce((sum, expense) => sum + (expense.amount || 0), 0);
        const expenseCount = categoryExpenses.length;
        
        return {
          ...category,
          totalAmount,
          expenseCount
        };
      });
      
      setCategories(categoriesWithTotals);
      setRecentExpenses(expensesData.slice(0, 5)); // Get only 5 most recent expenses
      
      // Generate notifications
      generateNotifications(totals, totalBudget, receivedFund);
      
    } catch (error) {
      console.error('Error fetching data:', error);
      Alert.alert('Error', 'Could not load data. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const generateNotifications = (totals, totalBudget, receivedFund) => {
    const newNotifications = [];
    
    // Budget warning
    if (totals.remaining > totalBudget * 0.8) {
      newNotifications.push({
        id: 'budget_warning',
        type: 'warning',
        title: 'Budget Warning',
        message: 'Outstanding expenses are approaching your total budget limit.',
        onPress: () => Alert.alert('Budget Warning', 'Consider reviewing your expenses or increasing your budget.'),
        onDismiss: () => removeNotification('budget_warning')
      });
    }
    
    // High pending amount
    if (totals.pending > receivedFund * 0.5) {
      newNotifications.push({
        id: 'pending_warning',
        type: 'info',
        title: 'Pending Amount Alert',
        message: 'You have a high amount of pending expenses compared to received funds.',
        onPress: () => Alert.alert('Pending Alert', 'Review pending expenses and follow up on fund disbursements.'),
        onDismiss: () => removeNotification('pending_warning')
      });
    }
    
    // Low received funds
    if (receivedFund < totalBudget * 0.3) {
      newNotifications.push({
        id: 'funds_warning',
        type: 'error',
        title: 'Low Fund Receipt',
        message: 'Received funds are significantly lower than total budget.',
        onPress: () => Alert.alert('Funds Warning', 'Focus on securing fund disbursements for your projects.'),
        onDismiss: () => removeNotification('funds_warning')
      });
    }
    
    setNotifications(newNotifications);
  };

  const removeNotification = (id) => {
    setNotifications(prev => prev.filter(notif => notif.id !== id));
  };

  const onRefresh = async () => {
    setRefreshing(true);
    await fetchData();
    setRefreshing(false);
  };

  const getStatusColor = (status) => {
    switch (status) {
      case 'remaining':
        return '#F44336';
      case 'pending':
        return '#FF9800';
      case 'received':
        return '#2196F3';
      case 'spent':
        return '#4CAF50';
      default:
        return '#9E9E9E';
    }
  };

  const getStatusIcon = (status) => {
    switch (status) {
      case 'remaining':
        return 'clock';
      case 'pending':
        return 'hourglass-half';
      case 'received':
        return 'check-circle';
      case 'spent':
        return 'money-bill-wave';
      default:
        return 'question-circle';
    }
  };

  useEffect(() => {
    fetchData();
    
    // Real-time listeners
    const unsubExpenses = listenExpenses(null, () => fetchData());
    const unsubCategories = listenCategories(() => fetchData());
    
    return () => {
      unsubExpenses && unsubExpenses();
      unsubCategories && unsubCategories();
    };
  }, []);

  if (loading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
      </View>
    );
  }

  return (
    <ScrollView 
      style={[styles.container, { backgroundColor: colors.background }]}
      refreshControl={
        <RefreshControl refreshing={refreshing} onRefresh={onRefresh} />
      }
    >
      {/* Welcome Header */}
      <View style={styles.welcomeHeader}>
        <Text style={[styles.welcomeTitle, { color: colors.text }]}>Welcome to BudgetFlow</Text>
        <Text style={[styles.welcomeSubtitle, { color: colors.textSecondary }]}>
          Manage your finances with ease
        </Text>
      </View>

      {/* Notifications */}
      {notifications.length > 0 && (
        <View style={styles.notificationsContainer}>
          {notifications.map((notification) => (
            <NotificationCard
              key={notification.id}
              type={notification.type}
              title={notification.title}
              message={notification.message}
              onPress={notification.onPress}
              onDismiss={notification.onDismiss}
            />
          ))}
        </View>
      )}

      {/* Budget Summary */}
      <View style={styles.section}>
        <BudgetSummary 
          totalBudget={budgetSummary.totalBudget}
          receivedFund={budgetSummary.receivedFund}
          remainingFund={budgetSummary.totalBudget - budgetSummary.receivedFund}
        />
      </View>

      {/* Quick Actions */}
      <View style={styles.section}>
        <Text style={[styles.sectionTitle, { color: colors.text }]}>Quick Actions</Text>
        <View style={styles.quickActionsGrid}>
          <TouchableOpacity 
            style={[styles.quickActionCard, { backgroundColor: colors.card }]}
            onPress={() => router.push('/add-expense')}
          >
            <FontAwesome5 name="plus-circle" size={24} color={colors.primary} />
            <Text style={[styles.quickActionText, { color: colors.text }]}>Add Expense</Text>
          </TouchableOpacity>
          
          <TouchableOpacity 
            style={[styles.quickActionCard, { backgroundColor: colors.card }]}
            onPress={() => router.push('/add-category')}
          >
            <FontAwesome5 name="folder-plus" size={24} color={colors.primary} />
            <Text style={[styles.quickActionText, { color: colors.text }]}>New Category</Text>
          </TouchableOpacity>
          
          <TouchableOpacity 
            style={[styles.quickActionCard, { backgroundColor: colors.card }]}
            onPress={() => router.push('/add-funder')}
          >
            <FontAwesome5 name="user-plus" size={24} color={colors.primary} />
            <Text style={[styles.quickActionText, { color: colors.text }]}>Add Funder</Text>
          </TouchableOpacity>
          
          <TouchableOpacity 
            style={[styles.quickActionCard, { backgroundColor: colors.card }]}
            onPress={() => router.push('/dashboard')}
          >
            <FontAwesome5 name="chart-pie" size={24} color={colors.primary} />
            <Text style={[styles.quickActionText, { color: colors.text }]}>View Reports</Text>
          </TouchableOpacity>
        </View>
      </View>

      {/* Status Overview */}
      <View style={styles.section}>
        <Text style={[styles.sectionTitle, { color: colors.text }]}>Status Overview</Text>
        <View style={styles.statusGrid}>
          {Object.entries(statusTotals).map(([status, amount]) => (
            <Card key={status} style={styles.statusCard}>
              <View style={styles.statusContent}>
                <FontAwesome5 
                  name={getStatusIcon(status)} 
                  size={20} 
                  color={getStatusColor(status)} 
                />
                <Text style={[styles.statusLabel, { color: colors.text }]}>
                  {status.charAt(0).toUpperCase() + status.slice(1)}
                </Text>
                <Text style={[styles.statusAmount, { color: colors.primary }]}>
                  Rs. {amount.toLocaleString()}
                </Text>
              </View>
            </Card>
          ))}
        </View>
      </View>

      {/* Top Categories */}
      <View style={styles.section}>
        <View style={styles.sectionHeader}>
          <Text style={[styles.sectionTitle, { color: colors.text }]}>Top Categories</Text>
          <TouchableOpacity onPress={() => router.push('/category')}>
            <Text style={[styles.viewAllText, { color: colors.primary }]}>View All</Text>
          </TouchableOpacity>
        </View>
        
        {categories.length > 0 ? (
          categories
            .filter(cat => cat.expenseCount > 0)
            .sort((a, b) => b.totalAmount - a.totalAmount)
            .slice(0, 3)
            .map((category) => (
              <CategoryItem
                key={category.id}
                category={category}
                onPress={() => router.push(`/category/${category.id}`)}
              />
            ))
        ) : (
          <Card style={styles.emptyCard}>
            <View style={styles.emptyContent}>
              <FontAwesome5 name="folder-open" size={32} color={colors.textSecondary} />
              <Text style={[styles.emptyText, { color: colors.textSecondary }]}>
                No categories yet
              </Text>
              <Text style={[styles.emptySubtext, { color: colors.textSecondary }]}>
                Create your first category to get started
              </Text>
            </View>
          </Card>
        )}
      </View>

      {/* Recent Expenses */}
      <View style={styles.section}>
        <View style={styles.sectionHeader}>
          <Text style={[styles.sectionTitle, { color: colors.text }]}>Recent Expenses</Text>
          <TouchableOpacity onPress={() => router.push('/all-expenses')}>
            <Text style={[styles.viewAllText, { color: colors.primary }]}>View All</Text>
          </TouchableOpacity>
        </View>
        
        {recentExpenses.length > 0 ? (
          recentExpenses.map((expense) => (
            <ExpenseItem
              key={expense.id}
              expense={expense}
              onPress={() => router.push(`/expense/${expense.id}`)}
            />
          ))
        ) : (
          <Card style={styles.emptyCard}>
            <View style={styles.emptyContent}>
              <FontAwesome5 name="receipt" size={32} color={colors.textSecondary} />
              <Text style={[styles.emptyText, { color: colors.textSecondary }]}>
                No expenses yet
              </Text>
              <Text style={[styles.emptySubtext, { color: colors.textSecondary }]}>
                Add your first expense to start tracking
              </Text>
            </View>
          </Card>
        )}
      </View>

      {/* Quick Stats */}
      <View style={styles.section}>
        <Text style={[styles.sectionTitle, { color: colors.text }]}>Quick Stats</Text>
        <View style={styles.statsGrid}>
          <Card style={styles.statCard}>
            <View style={styles.statContent}>
              <FontAwesome5 name="calendar-check" size={20} color={colors.primary} />
              <Text style={[styles.statValue, { color: colors.text }]}>
                {new Date().getDate()}
              </Text>
              <Text style={[styles.statLabel, { color: colors.textSecondary }]}>
                Days this month
              </Text>
            </View>
          </Card>
          
          <Card style={styles.statCard}>
            <View style={styles.statContent}>
              <FontAwesome5 name="chart-line" size={20} color={colors.primary} />
              <Text style={[styles.statValue, { color: colors.text }]}>
                {((budgetSummary.receivedFund / budgetSummary.totalBudget) * 100).toFixed(1)}%
              </Text>
              <Text style={[styles.statLabel, { color: colors.textSecondary }]}>
                Fund utilization
              </Text>
            </View>
          </Card>
        </View>
      </View>
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
  welcomeHeader: {
    padding: 20,
    alignItems: 'center',
  },
  welcomeTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 8,
  },
  welcomeSubtitle: {
    fontSize: 16,
    textAlign: 'center',
  },
  notificationsContainer: {
    marginBottom: 16,
  },
  section: {
    marginBottom: 24,
  },
  sectionTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    marginBottom: 16,
    paddingHorizontal: 16,
  },
  sectionHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 16,
    marginBottom: 16,
  },
  viewAllText: {
    fontSize: 16,
    fontWeight: '500',
  },
  quickActionsGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    paddingHorizontal: 16,
    gap: 12,
  },
  quickActionCard: {
    width: '45%',
    padding: 20,
    borderRadius: 12,
    alignItems: 'center',
    elevation: 2,
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.1,
    shadowRadius: 3.84,
  },
  quickActionText: {
    fontSize: 14,
    fontWeight: '500',
    marginTop: 12,
    textAlign: 'center',
  },
  statusGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    paddingHorizontal: 16,
    gap: 12,
  },
  statusCard: {
    flex: 1,
    minWidth: '45%',
  },
  statusContent: {
    alignItems: 'center',
    padding: 16,
  },
  statusLabel: {
    fontSize: 12,
    fontWeight: '500',
    marginTop: 8,
    textAlign: 'center',
  },
  statusAmount: {
    fontSize: 16,
    fontWeight: 'bold',
    marginTop: 4,
  },
  statsGrid: {
    flexDirection: 'row',
    paddingHorizontal: 16,
    gap: 12,
  },
  statCard: {
    flex: 1,
  },
  statContent: {
    alignItems: 'center',
    padding: 16,
  },
  statValue: {
    fontSize: 24,
    fontWeight: 'bold',
    marginTop: 8,
  },
  statLabel: {
    fontSize: 12,
    marginTop: 4,
    textAlign: 'center',
  },
  emptyCard: {
    marginHorizontal: 16,
  },
  emptyContent: {
    alignItems: 'center',
    padding: 32,
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