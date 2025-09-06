import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, ActivityIndicator, RefreshControl, Alert, StatusBar, TouchableOpacity, Modal } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import BudgetSummary from '../../components/BudgetSummary';
import Card from '../../components/Card';
import Button from '../../components/Button';
import CategoryItem from '../../components/CategoryItem';
import ExpenseItem from '../../components/ExpenseItem';
import { getCategories, getExpenses, getBudgetSummary, listenExpenses, listenCategories, getEvents, getEventFundingSummary } from '../../services/sqliteService';
import { useTheme } from '../../context/theme';

export default function HomeScreen() {
  const { colors, isDarkMode } = useTheme();
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [categories, setCategories] = useState([]);
  const [recentExpenses, setRecentExpenses] = useState([]);
  const [events, setEvents] = useState([]);
  const [budgetSummary, setBudgetSummary] = useState({
    totalBudget: 0,
    receivedFund: 0,
  });
  const [statusTotals, setStatusTotals] = useState({
    Pending: 0,
    Spent: 0,
    Available: 0,
    Outstanding: 0,
  });
  
  
  const [selectedEvent, setSelectedEvent] = useState(null);
  const [showEventModal, setShowEventModal] = useState(false);
  const [showEventDropdown, setShowEventDropdown] = useState(false);

  const fetchData = async () => {
    try {
      setLoading(true);
      
      // Initialize database first
      const { ensureDatabase } = await import('../../services/sqliteService');
      await ensureDatabase();
      
      const [budgetData, expensesData, categoriesData, eventsData] = await Promise.all([
        getBudgetSummary().catch(err => {
          console.warn('Budget fetch failed, using defaults:', err);
          return { totalBudget: 0, receivedFund: 0 };
        }),
        getExpenses().catch(err => {
          console.warn('Expenses fetch failed, using empty array:', err);
          return [];
        }),
        getCategories().catch(err => {
          console.warn('Categories fetch failed, using empty array:', err);
          return [];
        }),
        getEvents().catch(err => {
          console.warn('Events fetch failed, using empty array:', err);
          return [];
        })
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
      
      // Set events data
      setEvents(eventsData);
      
      // Calculate funding totals from all events
      const fundingTotals = {
        Pending: 0,
        Spent: 0,
        Available: 0,
        Outstanding: 0,
      };
      
      // Get funding summary for each event
      for (const event of eventsData) {
        try {
          const eventFunding = await database.getEventFundingSummary(event.id);
          fundingTotals.Pending += eventFunding.Pending || 0;
          fundingTotals.Spent += eventFunding.Spent || 0;
          fundingTotals.Available += eventFunding.Available || 0;
          fundingTotals.Outstanding += eventFunding.Outstanding || 0;
        } catch (err) {
          console.warn(`Failed to get funding for event ${event.id}:`, err);
        }
      }
      
      setStatusTotals(fundingTotals);
      
      // Calculate totals for each status (legacy for expenses)
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
      console.log('Categories data from database:', categoriesData);
      console.log('Expenses data from database:', expensesData);
      
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
      
      console.log('Categories with totals:', categoriesWithTotals);
      setCategories(categoriesWithTotals);
      setRecentExpenses(expensesData.slice(0, 5)); // Get only 5 most recent expenses
    } catch (error) {
      console.error('Error fetching data:', error);
      // Don't show alert for database initialization errors, just log and continue
      console.warn('Continuing with default data due to error:', error);
    } finally {
      setLoading(false);
    }
  };

  const onRefresh = async () => {
    setRefreshing(true);
    await fetchData();
    setRefreshing(false);
  };

  // Event handling functions
  const handleEventSelect = (event) => {
    setSelectedEvent(event);
    setShowEventModal(true);
    setShowEventDropdown(false);
  };

  const closeEventModal = () => {
    setShowEventModal(false);
    setSelectedEvent(null);
  };

  const formatCurrency = (amount) => {
    return new Intl.NumberFormat('en-LK', {
      style: 'currency',
      currency: 'LKR',
      minimumFractionDigits: 0,
    }).format(amount);
  };

  const formatDate = (dateString) => {
    return new Date(dateString).toLocaleDateString('en-LK', {
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    });
  };

  useEffect(() => {
    fetchData();
  const unsubscribeExpenses = listenExpenses(null, (expensesLive) => {
      const expensesData = expensesLive.map(exp => ({
        ...exp,
        createdAt: exp.createdAt?.toDate ? exp.createdAt.toDate().toISOString() : exp.createdAt,
      }));
      // Recompute budget & status totals
      const totalBudget = expensesData.reduce((sum, e) => sum + (e.amount || 0), 0);
      const receivedFund = expensesData.filter(e=> e.status==='Received').reduce((s,e)=> s + (e.amount||0),0);
      setBudgetSummary(prev => ({ ...prev, totalBudget, receivedFund }));
      const totals = { remaining:0,pending:0,received:0,spent:0 };
      expensesData.forEach(e=>{
        if(e.status==='Outstanding') totals.remaining += e.amount||0;
        else if(e.status==='Pending') totals.pending += e.amount||0;
        else if(e.status==='Received') totals.received += e.amount||0;
        else if(e.status==='Spent') totals.spent += e.amount||0;
      });
      setStatusTotals(totals);
      // Update categories amounts (requires categories state)
      setCategories(prevCats => prevCats.map(cat => {
        const catExpenses = expensesData.filter(e=> e.categoryId===cat.id);
        const totalAmount = catExpenses.reduce((s,e)=> s + (e.amount||0),0);
        return { ...cat, totalAmount, expenseCount: catExpenses.length };
      }));
      setRecentExpenses(expensesData.slice(0,5));
    });
    // Listen for category additions/updates
    const unsubscribeCategories = listenCategories((catsLive) => {
      console.log('Categories updated in real-time on home screen:', catsLive);
      if (catsLive && catsLive.length > 0) {
        // Recalculate totals for each category
        getExpenses().then(expensesData => {
          const categoriesWithTotals = catsLive.map(category => {
            const categoryExpenses = expensesData.filter(expense => expense.categoryId === category.id);
            const totalAmount = categoryExpenses.reduce((sum, expense) => sum + (expense.amount || 0), 0);
            const expenseCount = categoryExpenses.length;
            
            return {
              ...category,
              totalAmount,
              expenseCount
            };
          });
          console.log('Updated categories with totals:', categoriesWithTotals);
          setCategories(categoriesWithTotals);
        }).catch(err => console.error('Error updating categories on home screen:', err));
      }
    });
    return () => {
      unsubscribeExpenses && unsubscribeExpenses();
      unsubscribeCategories && unsubscribeCategories();
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
    <>
      <StatusBar
        barStyle="light-content"
        backgroundColor={colors.primary}
        translucent={false}
      />
      <ScrollView 
        style={[styles.container, { backgroundColor: colors.background }]}
        refreshControl={
          <RefreshControl refreshing={refreshing} onRefresh={onRefresh} />
        }
      >
        <BudgetSummary
          totalBudget={budgetSummary.totalBudget}
          receivedFund={budgetSummary.receivedFund}
          spent={statusTotals.spent}
        />
        
        {/* Events Dropdown Section */}
        <Card style={styles.sectionCard}>
          <RNView style={styles.sectionHeader}>
            <Text style={styles.sectionTitle}>Events Overview</Text>
            <TouchableOpacity 
              style={styles.eventsDropdownButton}
              onPress={() => setShowEventDropdown(!showEventDropdown)}
            >
              <Text style={styles.eventsDropdownText}>
                {showEventDropdown ? 'Hide Events' : 'View Events'}
              </Text>
              <FontAwesome5 
                name={showEventDropdown ? 'chevron-up' : 'chevron-down'} 
                size={16} 
                color={colors.primary} 
              />
            </TouchableOpacity>
          </RNView>
          
          {showEventDropdown && (
            <RNView style={styles.eventsList}>
              {events.map((event) => (
                <TouchableOpacity
                  key={event.id}
                  style={[styles.eventItem, { backgroundColor: isDarkMode ? '#333' : '#f8f9fa' }]}
                  onPress={() => handleEventSelect(event)}
                >
                  <RNView style={styles.eventHeader}>
                    <Text style={[styles.eventName, { color: colors.text }]}>{event.name}</Text>
                    <FontAwesome5 name="chevron-right" size={14} color={colors.text} />
                  </RNView>
                  <Text style={[styles.eventDate, { color: colors.textSecondary }]}>
                    {formatDate(event.date)}
                  </Text>
                  <Text style={[styles.eventLocation, { color: colors.textSecondary }]}>
                    📍 {event.location}
                  </Text>
                  <RNView style={styles.eventBudget}>
                    <Text style={[styles.eventBudgetText, { color: colors.text }]}>
                      Budget: {formatCurrency(event.budget)} | Spent: {formatCurrency(event.spent)}
                    </Text>
                  </RNView>
                </TouchableOpacity>
              ))}
            </RNView>
          )}
        </Card>
        
        <Card style={styles.sectionCard}>
          <RNView style={styles.sectionHeader}>
            <Text style={styles.sectionTitle}>Expense Status by Events</Text>
          </RNView>
          
          {/* Overall Summary */}
          <RNView style={styles.overallSummary}>
            <Text style={[styles.summaryTitle, { color: colors.text }]}>Overall Summary</Text>
            <RNView style={styles.statusCardsContainer}>
              <RNView style={[styles.statusCard, { backgroundColor: isDarkMode ? 'rgba(255, 39, 39, 0.73)' : '#FFCCCC' }]}>
                <Text style={styles.statusAmount}>Rs. {events.reduce((sum, event) => sum + event.expenses.outstanding, 0).toLocaleString()}</Text>
                <Text style={styles.statusLabel}>Outstanding</Text>
              </RNView>
              <RNView style={[styles.statusCard, { backgroundColor: isDarkMode ? 'rgba(255, 148, 33, 0.7)' : '#ffe0b2ff' }]}>
                <Text style={styles.statusAmount}>Rs. {events.reduce((sum, event) => sum + event.expenses.pending, 0).toLocaleString()}</Text>
                <Text style={styles.statusLabel}>Pending</Text>
              </RNView>
              <RNView style={[styles.statusCard, { backgroundColor: isDarkMode ? 'rgba(51, 125, 254, 0.57)' : '#c4d9ffff' }]}>
                <Text style={styles.statusAmount}>Rs. {events.reduce((sum, event) => sum + event.expenses.available, 0).toLocaleString()}</Text>
                <Text style={styles.statusLabel}>Available</Text>
              </RNView>
              <RNView style={[styles.statusCard, { backgroundColor: isDarkMode ? 'rgba(83, 255, 49, 0.5)' : '#3ee14977' }]}>
                <Text style={styles.statusAmount}>Rs. {events.reduce((sum, event) => sum + event.expenses.spent, 0).toLocaleString()}</Text>
                <Text style={styles.statusLabel}>Spent</Text>
              </RNView>
            </RNView>
          </RNView>

          {/* Event-wise Breakdown */}
          <RNView style={styles.eventBreakdown}>
            <Text style={[styles.breakdownTitle, { color: colors.text }]}>Event-wise Breakdown</Text>
            {events.map((event) => (
              <RNView key={event.id} style={[styles.eventStatusCard, { backgroundColor: isDarkMode ? '#333' : '#f8f9fa' }]}>
                <Text style={[styles.eventStatusName, { color: colors.text }]}>{event.name}</Text>
                <RNView style={styles.eventStatusGrid}>
                  <RNView style={styles.eventStatusItem}>
                    <Text style={[styles.eventStatusAmount, { color: '#f44336' }]}>
                      Rs. {event.expenses.outstanding.toLocaleString()}
                    </Text>
                    <Text style={[styles.eventStatusLabel, { color: colors.textSecondary }]}>Outstanding</Text>
                  </RNView>
                  <RNView style={styles.eventStatusItem}>
                    <Text style={[styles.eventStatusAmount, { color: '#ff9800' }]}>
                      Rs. {event.expenses.pending.toLocaleString()}
                    </Text>
                    <Text style={[styles.eventStatusLabel, { color: colors.textSecondary }]}>Pending</Text>
                  </RNView>
                  <RNView style={styles.eventStatusItem}>
                    <Text style={[styles.eventStatusAmount, { color: '#2196F3' }]}>
                      Rs. {event.expenses.available.toLocaleString()}
                    </Text>
                    <Text style={[styles.eventStatusLabel, { color: colors.textSecondary }]}>Available</Text>
                  </RNView>
                  <RNView style={styles.eventStatusItem}>
                    <Text style={[styles.eventStatusAmount, { color: '#4caf50' }]}>
                      Rs. {event.expenses.spent.toLocaleString()}
                    </Text>
                    <Text style={[styles.eventStatusLabel, { color: colors.textSecondary }]}>Spent</Text>
                  </RNView>
                </RNView>
              </RNView>
            ))}
          </RNView>
        </Card>
        
        <Card style={styles.sectionCard}>
          <RNView style={styles.sectionHeader}>
            <Text style={styles.sectionTitle}>Categories</Text>
            <Button 
              title="Add Category" 
              onPress={() => router.push('/new-category')}
              variant="outline"
              style={styles.addButton}
            />
          </RNView>
          
          {categories.length === 0 ? (
            <RNView style={styles.emptyState}>
              <FontAwesome5 name="list" size={24} color={colors.text} />
              <Text style={styles.emptyText}>No categories yet</Text>
              <Text style={styles.emptySubtext}>Add categories to organize your expenses</Text>
            </RNView>
          ) : (
            categories.slice(0, 3).map((category) => (
              <CategoryItem
                key={category.id}
                name={category.name}
                totalExpenses={category.expenseCount || 0}
                totalAmount={category.totalAmount || 0}
                onPress={() => router.push(`/category/${category.id}`)}
              />
            ))
          )}
          
          {categories.length > 3 && (
            <Button
              title="View All Categories"
              onPress={() => router.push('/category')}
              variant="outline"
              style={styles.viewAllButton}
            />
          )}
        </Card>
        
        <Card style={styles.sectionCard}>
          <RNView style={styles.sectionHeader}>
            <Text style={styles.sectionTitle}>Recent Expenses</Text>
            <Button 
              title="Add Expense" 
              onPress={() => router.push('/new-expense')}
              variant="outline"
              style={styles.addButton}
            />
          </RNView>
          
          {recentExpenses.length === 0 ? (
            <RNView style={styles.emptyState}>
              <FontAwesome5 name="receipt" size={24} color={colors.text} />
              <Text style={styles.emptyText}>No expenses yet</Text>
              <Text style={styles.emptySubtext}>Add your first expense to get started</Text>
            </RNView>
          ) : (
            recentExpenses.map((expense) => (
              <ExpenseItem
                key={expense.id}
                title={expense.title}
                amount={expense.amount}
                status={expense.status}
                assignedTo={expense.assignedTo}
                onPress={() => router.push(`/expense/${expense.id}`)}
              />
            ))
          )}
          
          {recentExpenses.length > 0 && (
            <Button
              title="View All Expenses"
              onPress={() => router.push('/all-expenses')}
              variant="outline"
              style={styles.viewAllButton}
            />
          )}
        </Card>
      </ScrollView>

      {/* Individual Event Modal */}
      <Modal
        visible={showEventModal}
        transparent={true}
        animationType="slide"
        onRequestClose={closeEventModal}
      >
        <View style={styles.modalContainer}>
          <View style={[styles.modalContent, { backgroundColor: colors.background }]}>
            {selectedEvent && (
              <>
                <View style={styles.modalHeader}>
                  <Text style={[styles.modalTitle, { color: colors.text }]}>
                    {selectedEvent.name}
                  </Text>
                  <TouchableOpacity onPress={closeEventModal} style={styles.closeButton}>
                    <FontAwesome5 name="times" size={20} color={colors.text} />
                  </TouchableOpacity>
                </View>

                <ScrollView style={styles.modalBody}>
                  <View style={styles.eventDetailSection}>
                    <Text style={[styles.detailLabel, { color: colors.textSecondary }]}>Date</Text>
                    <Text style={[styles.detailValue, { color: colors.text }]}>
                      {formatDate(selectedEvent.date)}
                    </Text>
                  </View>

                  <View style={styles.eventDetailSection}>
                    <Text style={[styles.detailLabel, { color: colors.textSecondary }]}>Location</Text>
                    <Text style={[styles.detailValue, { color: colors.text }]}>
                      📍 {selectedEvent.location}
                    </Text>
                  </View>

                  <View style={styles.eventDetailSection}>
                    <Text style={[styles.detailLabel, { color: colors.textSecondary }]}>Budget</Text>
                    <Text style={[styles.detailValue, { color: '#64a12d', fontWeight: 'bold' }]}>
                      {formatCurrency(selectedEvent.budget)}
                    </Text>
                  </View>

                  <View style={styles.eventDetailSection}>
                    <Text style={[styles.detailLabel, { color: colors.textSecondary }]}>Spent</Text>
                    <Text style={[styles.detailValue, { color: '#f44336', fontWeight: 'bold' }]}>
                      {formatCurrency(selectedEvent.spent)}
                    </Text>
                  </View>

                  <View style={styles.eventDetailSection}>
                    <Text style={[styles.detailLabel, { color: colors.textSecondary }]}>Remaining</Text>
                    <Text style={[styles.detailValue, { color: '#2196F3', fontWeight: 'bold' }]}>
                      {formatCurrency(selectedEvent.budget - selectedEvent.spent)}
                    </Text>
                  </View>

                  <View style={styles.eventDetailSection}>
                    <Text style={[styles.detailLabel, { color: colors.textSecondary }]}>Utilization</Text>
                    <Text style={[styles.detailValue, { color: colors.text }]}>
                      {((selectedEvent.spent / selectedEvent.budget) * 100).toFixed(1)}%
                    </Text>
                  </View>

                  {selectedEvent.description && (
                    <View style={styles.eventDetailSection}>
                      <Text style={[styles.detailLabel, { color: colors.textSecondary }]}>Description</Text>
                      <Text style={[styles.detailValue, { color: colors.text }]}>
                        {selectedEvent.description}
                      </Text>
                    </View>
                  )}

                  <View style={styles.progressSection}>
                    <Text style={[styles.detailLabel, { color: colors.textSecondary }]}>Budget Progress</Text>
                    <View style={[styles.progressBar, { backgroundColor: isDarkMode ? '#333' : '#e0e0e0' }]}>
                      <View 
                        style={[
                          styles.progressFill, 
                          { 
                            width: `${(selectedEvent.spent / selectedEvent.budget) * 100}%`,
                            backgroundColor: selectedEvent.spent > selectedEvent.budget ? '#f44336' : '#64a12d'
                          }
                        ]} 
                      />
                    </View>
                    <Text style={[styles.progressText, { color: colors.textSecondary }]}>
                      {formatCurrency(selectedEvent.spent)} of {formatCurrency(selectedEvent.budget)}
                    </Text>
                  </View>

                  {/* Expense Status Breakdown */}
                  <View style={styles.expenseBreakdownSection}>
                    <Text style={[styles.detailLabel, { color: colors.textSecondary }]}>Expense Status Breakdown</Text>
                    <View style={styles.expenseBreakdownGrid}>
                      <View style={styles.expenseBreakdownItem}>
                        <Text style={[styles.expenseBreakdownAmount, { color: '#f44336' }]}>
                          {formatCurrency(selectedEvent.expenses.outstanding)}
                        </Text>
                        <Text style={[styles.expenseBreakdownLabel, { color: colors.textSecondary }]}>Outstanding</Text>
                      </View>
                      <View style={styles.expenseBreakdownItem}>
                        <Text style={[styles.expenseBreakdownAmount, { color: '#ff9800' }]}>
                          {formatCurrency(selectedEvent.expenses.pending)}
                        </Text>
                        <Text style={[styles.expenseBreakdownLabel, { color: colors.textSecondary }]}>Pending</Text>
                      </View>
                      <View style={styles.expenseBreakdownItem}>
                        <Text style={[styles.expenseBreakdownAmount, { color: '#2196F3' }]}>
                          {formatCurrency(selectedEvent.expenses.available)}
                        </Text>
                        <Text style={[styles.expenseBreakdownLabel, { color: colors.textSecondary }]}>Available</Text>
                      </View>
                      <View style={styles.expenseBreakdownItem}>
                        <Text style={[styles.expenseBreakdownAmount, { color: '#4caf50' }]}>
                          {formatCurrency(selectedEvent.expenses.spent)}
                        </Text>
                        <Text style={[styles.expenseBreakdownLabel, { color: colors.textSecondary }]}>Spent</Text>
                      </View>
                    </View>
                  </View>
                </ScrollView>

                <View style={styles.modalActions}>
                  <TouchableOpacity 
                    style={[styles.modalButton, styles.closeModalButton]}
                    onPress={closeEventModal}
                  >
                    <Text style={styles.modalButtonText}>Close</Text>
                  </TouchableOpacity>
                </View>
              </>
            )}
          </View>
        </View>
      </Modal>
    </>
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
  sectionCard: {
    marginTop: 16,
  },
  sectionHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 16,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: 'bold',
  },
  statusCardsContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
  },
  statusCard: {
    width: '48%',
    padding: 12,
    borderRadius: 8,
    marginBottom: 12,
  },
  statusAmount: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 4,
  },
  statusLabel: {
    fontSize: 14,
  },
  addButton: {
    width: 150,
  },
  viewAllButton: {
    marginTop: 16,
  },
  emptyState: {
    alignItems: 'center',
    paddingVertical: 32,
  },
  emptyText: {
    fontSize: 16,
    fontWeight: '600',
    marginTop: 12,
  },
  emptySubtext: {
    fontSize: 14,
    marginTop: 4,
  },
  
  // Events dropdown styles
  eventsDropdownButton: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderRadius: 8,
    borderWidth: 1,
    borderColor: '#64a12d',
  },
  eventsDropdownText: {
    fontSize: 14,
    fontWeight: '600',
    color: '#64a12d',
    marginRight: 8,
  },
  eventsList: {
    marginTop: 12,
  },
  eventItem: {
    padding: 16,
    borderRadius: 12,
    marginBottom: 12,
    borderWidth: 1,
    borderColor: '#e0e0e0',
  },
  eventHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 8,
  },
  eventName: {
    fontSize: 16,
    fontWeight: 'bold',
    flex: 1,
  },
  eventDate: {
    fontSize: 14,
    marginBottom: 4,
  },
  eventLocation: {
    fontSize: 14,
    marginBottom: 8,
  },
  eventBudget: {
    marginTop: 8,
  },
  eventBudgetText: {
    fontSize: 14,
    fontWeight: '500',
  },
  
  // Modal styles
  modalContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'rgba(0,0,0,0.5)',
  },
  modalContent: {
    width: '90%',
    maxHeight: '80%',
    borderRadius: 16,
    padding: 0,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.3,
    shadowRadius: 8,
    elevation: 8,
  },
  modalHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 20,
    borderBottomWidth: 1,
    borderBottomColor: '#e0e0e0',
  },
  modalTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    flex: 1,
  },
  closeButton: {
    padding: 8,
  },
  modalBody: {
    padding: 20,
    maxHeight: 400,
  },
  eventDetailSection: {
    marginBottom: 16,
  },
  detailLabel: {
    fontSize: 14,
    fontWeight: '600',
    marginBottom: 4,
  },
  detailValue: {
    fontSize: 16,
  },
  progressSection: {
    marginTop: 20,
    paddingTop: 20,
    borderTopWidth: 1,
    borderTopColor: '#e0e0e0',
  },
  progressBar: {
    height: 8,
    borderRadius: 4,
    marginVertical: 8,
  },
  progressFill: {
    height: '100%',
    borderRadius: 4,
  },
  progressText: {
    fontSize: 14,
    textAlign: 'center',
  },
  modalActions: {
    flexDirection: 'row',
    justifyContent: 'center',
    padding: 20,
    borderTopWidth: 1,
    borderTopColor: '#e0e0e0',
  },
  modalButton: {
    paddingHorizontal: 24,
    paddingVertical: 12,
    borderRadius: 8,
    minWidth: 100,
  },
  closeModalButton: {
    backgroundColor: '#64a12d',
  },
  modalButtonText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
    textAlign: 'center',
  },
  
  // Expense breakdown styles
  overallSummary: {
    marginBottom: 20,
  },
  summaryTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 12,
  },
  eventBreakdown: {
    marginTop: 20,
  },
  breakdownTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 12,
  },
  eventStatusCard: {
    padding: 16,
    borderRadius: 12,
    marginBottom: 12,
    borderWidth: 1,
    borderColor: '#e0e0e0',
  },
  eventStatusName: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 12,
  },
  eventStatusGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
  },
  eventStatusItem: {
    width: '48%',
    alignItems: 'center',
    marginBottom: 8,
  },
  eventStatusAmount: {
    fontSize: 14,
    fontWeight: 'bold',
    marginBottom: 2,
  },
  eventStatusLabel: {
    fontSize: 12,
  },
  
  // Modal expense breakdown styles
  expenseBreakdownSection: {
    marginTop: 20,
    paddingTop: 20,
    borderTopWidth: 1,
    borderTopColor: '#e0e0e0',
  },
  expenseBreakdownGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
    marginTop: 12,
  },
  expenseBreakdownItem: {
    width: '48%',
    alignItems: 'center',
    marginBottom: 12,
    padding: 12,
    borderRadius: 8,
    backgroundColor: 'rgba(0,0,0,0.05)',
  },
  expenseBreakdownAmount: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 4,
  },
  expenseBreakdownLabel: {
    fontSize: 12,
  },
}); 