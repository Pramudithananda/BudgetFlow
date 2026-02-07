import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, ActivityIndicator, RefreshControl, TouchableOpacity, Alert, Platform } from 'react-native';
import { Text, View } from '../../components/Themed';
import { FontAwesome5 } from '@expo/vector-icons';
import BudgetSummary from '../../components/BudgetSummary';
import Card from '../../components/Card';
import Button from '../../components/Button';
import NotificationCard from '../../components/NotificationCard';
import { LineChartComponent, BarChartComponent, PieChartComponent } from '../../components/Chart';
import { getBudgetSummary, getExpenses, getCategories, getFunders, listenExpenses, listenCategories, listenFunders } from '../../services/sqliteService';
import * as Print from 'expo-print';
import * as Sharing from 'expo-sharing';
import { useTheme } from '../../context/theme';

export default function DashboardScreen() {
  const { colors, isDarkMode } = useTheme();
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [budgetSummary, setBudgetSummary] = useState({
    totalBudget: 0,
    receivedFund: 0,
    peopleOverFund: 0,
    remainingFund: 0,
  });
  const [statusCounts, setStatusCounts] = useState({
    remaining: 0,
    pending: 0,
    received: 0,
    spent: 0,
  });
  const [statusAmounts, setStatusAmounts] = useState({
    remaining: 0,
    pending: 0,
    received: 0,
    spent: 0,
  });
  const [categoryBreakdown, setCategoryBreakdown] = useState([]);
  const [funderBreakdown, setFunderBreakdown] = useState([]);
  const [funderMap, setFunderMap] = useState({}); // id -> name for report usage
  const [recentExpenses, setRecentExpenses] = useState([]);
  const [notifications, setNotifications] = useState([]);
  const [selectedChart, setSelectedChart] = useState('category'); // category, funder, trend

  const fetchData = async () => {
    try {
      setLoading(true);
      
      const [budgetData, expensesDataRaw, categoriesData, fundersData] = await Promise.all([
        getBudgetSummary(),
        getExpenses(),
        getCategories(),
        getFunders()
      ]);
      // Normalize Firestore Timestamp fields to ISO strings for reliable Date handling
      const expensesData = expensesDataRaw.map(exp => ({
        ...exp,
        createdAt: exp.createdAt?.toDate ? exp.createdAt.toDate().toISOString() : exp.createdAt,
        updatedAt: exp.updatedAt?.toDate ? exp.updatedAt.toDate().toISOString() : exp.updatedAt,
      }));
      
      // Calculate total budget as sum of all expenses
      const totalBudget = expensesData.reduce((sum, expense) => sum + (expense.amount || 0), 0);
      
      // Calculate received fund as sum of expenses with status "Received"
      const receivedFund = expensesData
        .filter(expense => expense.status === 'Received')
        .reduce((sum, expense) => sum + (expense.amount || 0), 0);
      
      setBudgetSummary({
        totalBudget,
        receivedFund,
        remainingFund: totalBudget - receivedFund,
        peopleOverFund: 0, // This is not used anymore
      });
      
      // Calculate status counts and amounts
      const counts = {
        remaining: 0,
        pending: 0,
        received: 0,
        spent: 0,
      };
      
      const amounts = {
        remaining: 0,
        pending: 0,
        received: 0,
        spent: 0,
      };
      
      expensesData.forEach(expense => {
        if (expense.status === 'Outstanding') {
          counts.remaining += 1;
          amounts.remaining += expense.amount;
        } else if (expense.status === 'Pending') {
          counts.pending += 1;
          amounts.pending += expense.amount;
        } else if (expense.status === 'Received') {
          counts.received += 1;
          amounts.received += expense.amount;
        } else if (expense.status === 'Spent') {
          counts.spent += 1;
          amounts.spent += expense.amount;
        }
      });
      
      setStatusCounts(counts);
      setStatusAmounts(amounts);
      
      // Calculate category breakdown
      const categoryMap = {};
      categoriesData.forEach(category => {
        categoryMap[category.id] = category.name;
      });
      
      const categoryData = {};
      expensesData.forEach(expense => {
        const categoryName = categoryMap[expense.categoryId] || 'Uncategorized';
        if (!categoryData[categoryName]) {
          categoryData[categoryName] = 0;
        }
        categoryData[categoryName] += expense.amount || 0;
      });
      
      const categoryBreakdownData = Object.entries(categoryData).map(([name, amount]) => ({
        name,
        amount,
        color: getRandomColor(),
        legendFontColor: isDarkMode ? '#fff' : '#000',
        legendFontSize: 12,
      }));
      
      setCategoryBreakdown(categoryBreakdownData);
      
      // Calculate funder breakdown
      const funderMap = {};
      fundersData.forEach(funder => {
        funderMap[funder.id] = funder.name;
      });
      setFunderMap(funderMap);
      
      const funderData = {};
      expensesData.forEach(expense => {
        const funderName = funderMap[expense.funderId] || 'Unknown';
        if (!funderData[funderName]) {
          funderData[funderName] = 0;
        }
        funderData[funderName] += expense.amount || 0;
      });
      
      const funderBreakdownData = Object.entries(funderData).map(([name, amount]) => ({
        name,
        amount,
        color: getRandomColor(),
        legendFontColor: isDarkMode ? '#fff' : '#000',
        legendFontSize: 12,
      }));
      
      setFunderBreakdown(funderBreakdownData);
      
      // Get recent expenses
      const sortedExpenses = [...expensesData].sort((a, b) => 
        new Date(b.createdAt) - new Date(a.createdAt)
      );
      setRecentExpenses(sortedExpenses.slice(0, 5));
      
      // Generate notifications
      generateNotifications(amounts, totalBudget, receivedFund);
      
    } catch (error) {
      console.error('Error fetching dashboard data:', error);
      Alert.alert('Error', 'Could not load dashboard data. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const generateNotifications = (amounts, totalBudget, receivedFund) => {
    const newNotifications = [];
    
    // Budget warning
    if (amounts.remaining > totalBudget * 0.8) {
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
    if (amounts.pending > receivedFund * 0.5) {
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

  const getRandomColor = () => {
    const colors = ['#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0', '#9966FF', '#FF9F40'];
    return colors[Math.floor(Math.random() * colors.length)];
  };

  const onRefresh = async () => {
    setRefreshing(true);
    await fetchData();
    setRefreshing(false);
  };

  const generateReport = async () => {
    try {
      const reportData = {
        budgetSummary,
        statusCounts,
        statusAmounts,
        categoryBreakdown,
        funderBreakdown,
        recentExpenses,
        generatedAt: new Date().toLocaleString(),
      };

      const htmlContent = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>BudgetFlow Report</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; border-bottom: 2px solid #64a12d; padding-bottom: 20px; margin-bottom: 30px; }
            .section { margin-bottom: 30px; }
            .section h2 { color: #64a12d; border-bottom: 1px solid #eee; padding-bottom: 10px; }
            .summary-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 20px; margin-bottom: 20px; }
            .summary-card { background: #f9f9f9; padding: 15px; border-radius: 8px; border-left: 4px solid #64a12d; }
            .summary-card h3 { margin: 0 0 10px 0; color: #333; }
            .summary-card .amount { font-size: 24px; font-weight: bold; color: #64a12d; }
            .table { width: 100%; border-collapse: collapse; margin-top: 15px; }
            .table th, .table td { border: 1px solid #ddd; padding: 12px; text-align: left; }
            .table th { background-color: #f2f2f2; font-weight: bold; }
            .status-outstanding { color: #F44336; }
            .status-pending { color: #FF9800; }
            .status-received { color: #2196F3; }
            .status-spent { color: #4CAF50; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>💰 BudgetFlow Report</h1>
            <p>Generated on ${reportData.generatedAt}</p>
          </div>

          <div class="section">
            <h2>📊 Budget Summary</h2>
            <div class="summary-grid">
              <div class="summary-card">
                <h3>Total Budget</h3>
                <div class="amount">Rs. ${reportData.budgetSummary.totalBudget.toLocaleString()}</div>
              </div>
              <div class="summary-card">
                <h3>Received Funds</h3>
                <div class="amount">Rs. ${reportData.budgetSummary.receivedFund.toLocaleString()}</div>
              </div>
              <div class="summary-card">
                <h3>Remaining Budget</h3>
                <div class="amount">Rs. ${reportData.budgetSummary.remainingFund.toLocaleString()}</div>
              </div>
              <div class="summary-card">
                <h3>Total Spent</h3>
                <div class="amount">Rs. ${reportData.statusAmounts.spent.toLocaleString()}</div>
              </div>
            </div>
          </div>

          <div class="section">
            <h2>📈 Status Breakdown</h2>
            <table class="table">
              <thead>
                <tr>
                  <th>Status</th>
                  <th>Count</th>
                  <th>Amount</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="status-outstanding">Outstanding</td>
                  <td>${reportData.statusCounts.remaining}</td>
                  <td>Rs. ${reportData.statusAmounts.remaining.toLocaleString()}</td>
                </tr>
                <tr>
                  <td class="status-pending">Pending</td>
                  <td>${reportData.statusCounts.pending}</td>
                  <td>Rs. ${reportData.statusAmounts.pending.toLocaleString()}</td>
                </tr>
                <tr>
                  <td class="status-received">Received</td>
                  <td>${reportData.statusCounts.received}</td>
                  <td>Rs. ${reportData.statusAmounts.received.toLocaleString()}</td>
                </tr>
                <tr>
                  <td class="status-spent">Spent</td>
                  <td>${reportData.statusCounts.spent}</td>
                  <td>Rs. ${reportData.statusAmounts.spent.toLocaleString()}</td>
                </tr>
              </tbody>
            </table>
          </div>

          <div class="section">
            <h2>🏷️ Category Breakdown</h2>
            <table class="table">
              <thead>
                <tr>
                  <th>Category</th>
                  <th>Amount</th>
                </tr>
              </thead>
              <tbody>
                ${reportData.categoryBreakdown.map(cat => `
                  <tr>
                    <td>${cat.name}</td>
                    <td>Rs. ${cat.amount.toLocaleString()}</td>
                  </tr>
                `).join('')}
              </tbody>
            </table>
          </div>

          <div class="section">
            <h2>👥 Funder Breakdown</h2>
            <table class="table">
              <thead>
                <tr>
                  <th>Funder</th>
                  <th>Amount</th>
                </tr>
              </thead>
              <tbody>
                ${reportData.funderBreakdown.map(funder => `
                  <tr>
                    <td>${funder.name}</td>
                    <td>Rs. ${funder.amount.toLocaleString()}</td>
                  </tr>
                `).join('')}
              </tbody>
            </table>
          </div>

          <div class="section">
            <h2>📝 Recent Expenses</h2>
            <table class="table">
              <thead>
                <tr>
                  <th>Title</th>
                  <th>Amount</th>
                  <th>Status</th>
                  <th>Date</th>
                </tr>
              </thead>
              <tbody>
                ${reportData.recentExpenses.map(expense => `
                  <tr>
                    <td>${expense.title}</td>
                    <td>Rs. ${expense.amount.toLocaleString()}</td>
                    <td class="status-${expense.status.toLowerCase()}">${expense.status}</td>
                    <td>${new Date(expense.createdAt).toLocaleDateString()}</td>
                  </tr>
                `).join('')}
              </tbody>
            </table>
          </div>
        </body>
        </html>
      `;

      const { uri } = await Print.printToFileAsync({ html: htmlContent });
      
      if (Platform.OS === 'ios') {
        await Sharing.shareAsync(uri);
      } else {
        await Sharing.shareAsync(uri, { mimeType: 'application/pdf', dialogTitle: 'Share Report' });
      }
    } catch (error) {
      console.error('Error generating report:', error);
      Alert.alert('Error', 'Could not generate report. Please try again.');
    }
  };

  useEffect(() => {
    fetchData();
    
    // Real-time listeners
    const unsubExpenses = listenExpenses(null, () => fetchData());
    const unsubCategories = listenCategories(() => fetchData());
    const unsubFunders = listenFunders(() => fetchData());
    
    return () => {
      unsubExpenses && unsubExpenses();
      unsubCategories && unsubCategories();
      unsubFunders && unsubFunders();
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
          remainingFund={budgetSummary.remainingFund}
        />
      </View>

      {/* Status Overview Cards */}
      <View style={styles.section}>
        <Text style={[styles.sectionTitle, { color: colors.text }]}>Status Overview</Text>
        <View style={styles.statusGrid}>
          {Object.entries(statusAmounts).map(([status, amount]) => (
            <Card key={status} style={styles.statusCard}>
              <View style={styles.statusContent}>
                <FontAwesome5 
                  name={getStatusIcon(status)} 
                  size={24} 
                  color={getStatusColor(status)} 
                />
                <Text style={[styles.statusLabel, { color: colors.text }]}>
                  {status.charAt(0).toUpperCase() + status.slice(1)}
                </Text>
                <Text style={[styles.statusAmount, { color: colors.primary }]}>
                  Rs. {amount.toLocaleString()}
                </Text>
                <Text style={[styles.statusCount, { color: colors.textSecondary }]}>
                  {statusCounts[status]} items
                </Text>
              </View>
            </Card>
          ))}
        </View>
      </View>

      {/* Chart Selection */}
      <View style={styles.section}>
        <View style={styles.chartHeader}>
          <Text style={[styles.sectionTitle, { color: colors.text }]}>Analytics</Text>
          <View style={styles.chartTabs}>
            {[
              { key: 'category', label: 'Categories', icon: 'list' },
              { key: 'funder', label: 'Funders', icon: 'users' },
              { key: 'trend', label: 'Trends', icon: 'chart-line' }
            ].map((tab) => (
              <TouchableOpacity
                key={tab.key}
                style={[
                  styles.chartTab,
                  selectedChart === tab.key && { backgroundColor: colors.primary }
                ]}
                onPress={() => setSelectedChart(tab.key)}
              >
                <FontAwesome5 
                  name={tab.icon} 
                  size={16} 
                  color={selectedChart === tab.key ? '#fff' : colors.text} 
                />
                <Text style={[
                  styles.chartTabText,
                  { color: selectedChart === tab.key ? '#fff' : colors.text }
                ]}>
                  {tab.label}
                </Text>
              </TouchableOpacity>
            ))}
          </View>
        </View>

        {/* Charts */}
        {selectedChart === 'category' && categoryBreakdown.length > 0 && (
          <Card style={styles.chartCard}>
            <PieChartComponent data={categoryBreakdown} />
          </Card>
        )}

        {selectedChart === 'funder' && funderBreakdown.length > 0 && (
          <Card style={styles.chartCard}>
            <BarChartComponent 
              data={{
                labels: funderBreakdown.map(f => f.name),
                datasets: [{
                  data: funderBreakdown.map(f => f.amount)
                }]
              }}
            />
          </Card>
        )}

        {selectedChart === 'trend' && (
          <Card style={styles.chartCard}>
            <LineChartComponent 
              data={{
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                datasets: [{
                  data: [0, 0, 0, 0, 0, 0] // Placeholder data
                }]
              }}
            />
          </Card>
        )}
      </View>

      {/* Recent Expenses */}
      <View style={styles.section}>
        <View style={styles.sectionHeader}>
          <Text style={[styles.sectionTitle, { color: colors.text }]}>Recent Expenses</Text>
          <TouchableOpacity onPress={() => {}}>
            <Text style={[styles.viewAllText, { color: colors.primary }]}>View All</Text>
          </TouchableOpacity>
        </View>
        
        {recentExpenses.map((expense) => (
          <Card key={expense.id} style={styles.expenseCard}>
            <View style={styles.expenseContent}>
              <View style={styles.expenseInfo}>
                <Text style={[styles.expenseTitle, { color: colors.text }]}>{expense.title}</Text>
                <Text style={[styles.expenseCategory, { color: colors.textSecondary }]}>
                  {categoryBreakdown.find(cat => cat.name === expense.categoryName)?.name || 'Uncategorized'}
                </Text>
              </View>
              <View style={styles.expenseDetails}>
                <Text style={[styles.expenseAmount, { color: colors.primary }]}>
                  Rs. {expense.amount.toLocaleString()}
                </Text>
                <View style={[
                  styles.statusBadge,
                  { backgroundColor: getStatusColor(expense.status) + '20' }
                ]}>
                  <Text style={[styles.statusText, { color: getStatusColor(expense.status) }]}>
                    {expense.status}
                  </Text>
                </View>
              </View>
            </View>
          </Card>
        ))}
      </View>

      {/* Report Generation */}
      <View style={styles.section}>
        <Button 
          title="📊 Generate Report" 
          onPress={generateReport}
          style={styles.reportButton}
        />
      </View>
    </ScrollView>
  );
}

// Helper functions
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

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
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
    fontSize: 14,
    fontWeight: '500',
    marginTop: 8,
    textAlign: 'center',
  },
  statusAmount: {
    fontSize: 18,
    fontWeight: 'bold',
    marginTop: 4,
  },
  statusCount: {
    fontSize: 12,
    marginTop: 4,
  },
  chartHeader: {
    paddingHorizontal: 16,
    marginBottom: 16,
  },
  chartTabs: {
    flexDirection: 'row',
    marginTop: 12,
    gap: 8,
  },
  chartTab: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 16,
    paddingVertical: 8,
    borderRadius: 20,
    gap: 8,
  },
  chartTabText: {
    fontSize: 14,
    fontWeight: '500',
  },
  chartCard: {
    marginHorizontal: 16,
  },
  expenseCard: {
    marginHorizontal: 16,
    marginBottom: 8,
  },
  expenseContent: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 16,
  },
  expenseInfo: {
    flex: 1,
  },
  expenseTitle: {
    fontSize: 16,
    fontWeight: '500',
    marginBottom: 4,
  },
  expenseCategory: {
    fontSize: 14,
  },
  expenseDetails: {
    alignItems: 'flex-end',
  },
  expenseAmount: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 4,
  },
  statusBadge: {
    paddingHorizontal: 8,
    paddingVertical: 4,
    borderRadius: 12,
  },
  statusText: {
    fontSize: 12,
    fontWeight: '500',
  },
  reportButton: {
    marginHorizontal: 16,
    backgroundColor: '#64a12d',
  },
}); 