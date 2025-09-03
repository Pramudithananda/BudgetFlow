import React, { useState, useEffect } from 'react';
import {
  View,
  ScrollView,
  StyleSheet,
  Alert,
  TouchableOpacity,
  Modal,
  TextInput,
} from 'react-native';
import { Text } from '../../components/Themed';
import { Card } from '../../components/Card';
import { Button } from '../../components/Button';
import { useTheme } from '../../context/theme';
import { FontAwesome5, MaterialIcons } from '@expo/vector-icons';
import * as Print from 'expo-print';
import * as Sharing from 'expo-sharing';
import * as SQLite from 'expo-sqlite';

export default function ReportsScreen() {
  const { isDarkMode } = useTheme();
  const [events, setEvents] = useState([]);
  const [categories, setCategories] = useState([]);
  const [expenses, setExpenses] = useState([]);
  const [funders, setFunders] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [db, setDb] = useState(null);
  const [dateRange, setDateRange] = useState({
    startDate: '',
    endDate: ''
  });
  const [selectedReportType, setSelectedReportType] = useState('overall');
  const [isGenerating, setIsGenerating] = useState(false);

  useEffect(() => {
    initializeDatabase();
  }, []);

  const initializeDatabase = async () => {
    try {
      const database = SQLite.openDatabase('budgetflow.db');
      setDb(database);
      await initializeScreen(database);
    } catch (err) {
      console.error('Error initializing database:', err);
      setError('Failed to initialize database. Please restart the app.');
      setLoading(false);
    }
  };

  useEffect(() => {
    initializeScreen();
  }, []);

  const initializeScreen = async (database) => {
    try {
      setLoading(true);
      setError(null);
      await loadData(database);
    } catch (err) {
      console.error('Error initializing reports screen:', err);
      setError('Failed to load data. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const loadData = (database) => {
    return new Promise((resolve, reject) => {
      if (!database) {
        reject(new Error('Database not initialized'));
        return;
      }

      let completed = 0;
      const totalQueries = 4;
      
      const checkComplete = () => {
        completed++;
        if (completed === totalQueries) {
          resolve();
        }
      };

      // Load events
      database.transaction(tx => {
        tx.executeSql('SELECT * FROM events ORDER BY startDate DESC;', [], (_, { rows: { _array } }) => {
          setEvents(_array);
          checkComplete();
        }, (_, error) => {
          console.error('Error loading events:', error);
          checkComplete();
        });
      });

      // Load categories
      database.transaction(tx => {
        tx.executeSql('SELECT * FROM categories ORDER BY name;', [], (_, { rows: { _array } }) => {
          setCategories(_array);
          checkComplete();
        }, (_, error) => {
          console.error('Error loading categories:', error);
          checkComplete();
        });
      });

      // Load expenses
      database.transaction(tx => {
        tx.executeSql(`
          SELECT e.*, c.name as categoryName, ev.name as eventName 
          FROM expenses e 
          LEFT JOIN categories c ON e.categoryId = c.id 
          LEFT JOIN events ev ON e.eventId = ev.id 
          ORDER BY e.date DESC;
        `, [], (_, { rows: { _array } }) => {
          setExpenses(_array);
          checkComplete();
        }, (_, error) => {
          console.error('Error loading expenses:', error);
          checkComplete();
        });
      });

      // Load funders
      database.transaction(tx => {
        tx.executeSql('SELECT * FROM funders ORDER BY name;', [], (_, { rows: { _array } }) => {
          setFunders(_array);
          checkComplete();
        }, (_, error) => {
          console.error('Error loading funders:', error);
          checkComplete();
        });
      });
    });
  };

  const generateOverallReport = async () => {
    setIsGenerating(true);
    try {
      const totalBudget = events.reduce((sum, event) => sum + (event.budget || 0), 0);
      const totalExpenses = expenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
      const remainingBudget = totalBudget - totalExpenses;
      const budgetUtilization = totalBudget > 0 ? (totalExpenses / totalBudget) * 100 : 0;

      // Calculate expenses by category
      const expensesByCategory = {};
      categories.forEach(cat => {
        const catExpenses = expenses.filter(exp => exp.categoryId === cat.id);
        expensesByCategory[cat.name] = catExpenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
      });

      // Calculate expenses by event
      const expensesByEvent = {};
      events.forEach(event => {
        const eventExpenses = expenses.filter(exp => exp.eventId === event.id);
        expensesByEvent[event.name] = eventExpenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
      });

      const htmlContent = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>BudgetFlow - Overall Financial Report</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; border-bottom: 2px solid #64a12d; padding-bottom: 20px; margin-bottom: 30px; }
            .summary-box { background-color: #f9f9f9; padding: 20px; border-radius: 8px; margin-bottom: 30px; }
            .summary-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 20px; }
            .summary-item { text-align: center; padding: 15px; background-color: white; border-radius: 5px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
            .summary-value { font-size: 24px; font-weight: bold; color: #64a12d; margin-bottom: 5px; }
            .summary-label { font-size: 14px; color: #666; }
            .section { margin-bottom: 30px; }
            .section-title { font-size: 20px; font-weight: bold; margin-bottom: 15px; color: #333; border-bottom: 1px solid #ddd; padding-bottom: 10px; }
            .table { width: 100%; border-collapse: collapse; margin-top: 15px; }
            .table th, .table td { border: 1px solid #ddd; padding: 10px; text-align: left; }
            .table th { background-color: #64a12d; color: white; font-weight: bold; }
            .table tr:nth-child(even) { background-color: #f9f9f9; }
            .chart-container { margin: 20px 0; text-align: center; }
            .status-badge { padding: 5px 10px; border-radius: 15px; color: white; font-weight: bold; font-size: 12px; }
            .status-planned { background-color: #ff9800; }
            .status-ongoing { background-color: #2196f3; }
            .status-completed { background-color: #4caf50; }
            .status-cancelled { background-color: #f44336; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>BudgetFlow Financial Report</h1>
            <h2>Overall Financial Overview</h2>
            <p>Generated on: ${new Date().toLocaleDateString()}</p>
            ${dateRange.startDate && dateRange.endDate ? `<p>Period: ${dateRange.startDate} to ${dateRange.endDate}</p>` : ''}
          </div>
          
          <div class="summary-box">
            <h3>Financial Summary</h3>
            <div class="summary-grid">
              <div class="summary-item">
                <div class="summary-value">$${totalBudget.toFixed(2)}</div>
                <div class="summary-label">Total Budget</div>
              </div>
              <div class="summary-item">
                <div class="summary-value">$${totalExpenses.toFixed(2)}</div>
                <div class="summary-label">Total Expenses</div>
              </div>
              <div class="summary-item">
                <div class="summary-value">$${remainingBudget.toFixed(2)}</div>
                <div class="summary-label">Remaining Budget</div>
              </div>
              <div class="summary-item">
                <div class="summary-value">${budgetUtilization.toFixed(1)}%</div>
                <div class="summary-label">Budget Utilization</div>
              </div>
            </div>
          </div>
          
          <div class="section">
            <h3 class="section-title">Events Overview</h3>
            <table class="table">
              <thead>
                <tr>
                  <th>Event Name</th>
                  <th>Status</th>
                  <th>Budget</th>
                  <th>Expenses</th>
                  <th>Remaining</th>
                  <th>Utilization</th>
                </tr>
              </thead>
              <tbody>
                ${events.map(event => {
                  const eventExpenses = expenses.filter(exp => exp.eventId === event.id);
                  const totalEventExpenses = eventExpenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
                  const eventRemaining = (event.budget || 0) - totalEventExpenses;
                  const eventUtilization = event.budget > 0 ? (totalEventExpenses / event.budget) * 100 : 0;
                  
                  return `
                    <tr>
                      <td>${event.name}</td>
                      <td><span class="status-badge status-${event.status}">${event.status.toUpperCase()}</span></td>
                      <td>$${(event.budget || 0).toFixed(2)}</td>
                      <td>$${totalEventExpenses.toFixed(2)}</td>
                      <td>$${eventRemaining.toFixed(2)}</td>
                      <td>${eventUtilization.toFixed(1)}%</td>
                    </tr>
                  `;
                }).join('')}
              </tbody>
            </table>
          </div>
          
          <div class="section">
            <h3 class="section-title">Expenses by Category</h3>
            <table class="table">
              <thead>
                <tr>
                  <th>Category</th>
                  <th>Total Amount</th>
                  <th>Percentage</th>
                </tr>
              </thead>
              <tbody>
                ${Object.entries(expensesByCategory)
                  .filter(([_, amount]) => amount > 0)
                  .sort(([_, a], [__, b]) => b - a)
                  .map(([category, amount]) => {
                    const percentage = totalExpenses > 0 ? (amount / totalExpenses) * 100 : 0;
                    return `
                      <tr>
                        <td>${category}</td>
                        <td>$${amount.toFixed(2)}</td>
                        <td>${percentage.toFixed(1)}%</td>
                      </tr>
                    `;
                  }).join('')}
              </tbody>
            </table>
          </div>
          
          <div class="section">
            <h3 class="section-title">Recent Expenses</h3>
            <table class="table">
              <thead>
                <tr>
                  <th>Date</th>
                  <th>Description</th>
                  <th>Category</th>
                  <th>Event</th>
                  <th>Amount</th>
                </tr>
              </thead>
              <tbody>
                ${expenses.slice(0, 20).map(exp => `
                  <tr>
                    <td>${exp.date || 'N/A'}</td>
                    <td>${exp.description || 'N/A'}</td>
                    <td>${exp.categoryName || 'Uncategorized'}</td>
                    <td>${exp.eventName || 'No Event'}</td>
                    <td>$${(exp.amount || 0).toFixed(2)}</td>
                  </tr>
                `).join('')}
              </tbody>
            </table>
          </div>
          
          <div class="section">
            <h3 class="section-title">Funders Summary</h3>
            <table class="table">
              <thead>
                <tr>
                  <th>Funder Name</th>
                  <th>Contact</th>
                  <th>Total Funded</th>
                </tr>
              </thead>
              <tbody>
                ${funders.map(funder => `
                  <tr>
                    <td>${funder.name}</td>
                    <td>${funder.contact || 'N/A'}</td>
                    <td>$${(funder.amount || 0).toFixed(2)}</td>
                  </tr>
                `).join('')}
              </tbody>
            </table>
          </div>
          
          <div class="summary-box">
            <h3>Report Summary</h3>
            <p>This comprehensive financial report covers all aspects of your budget management including events, expenses, categories, and funders. 
            The total budget allocation is $${totalBudget.toFixed(2)} with $${totalExpenses.toFixed(2)} in expenses, 
            resulting in $${remainingBudget.toFixed(2)} remaining budget.</p>
            
            <p><strong>Key Insights:</strong></p>
            <ul>
              <li>Budget utilization: ${budgetUtilization.toFixed(1)}%</li>
              <li>Total events: ${events.length}</li>
              <li>Total expense categories: ${Object.keys(expensesByCategory).length}</li>
              <li>Total funders: ${funders.length}</li>
            </ul>
          </div>
        </body>
        </html>
      `;

      const { uri } = await Print.printToFileAsync({ html: htmlContent });
      
      if (await Sharing.isAvailableAsync()) {
        await Sharing.shareAsync(uri, {
          mimeType: 'application/pdf',
          dialogTitle: 'BudgetFlow Overall Report',
          UTI: 'com.adobe.pdf'
        });
      } else {
        Alert.alert('Sharing not available', 'PDF generated successfully but sharing is not available on this device.');
      }
    } catch (error) {
      console.error('Error generating overall report:', error);
      Alert.alert('Error', 'Failed to generate overall report');
    } finally {
      setIsGenerating(false);
    }
  };

  const generateEventReport = async (event) => {
    setIsGenerating(true);
    try {
      const eventExpenses = expenses.filter(exp => exp.eventId === event.id);
      const totalExpenses = eventExpenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
      const remainingBudget = (event.budget || 0) - totalExpenses;
      const budgetUtilization = event.budget > 0 ? (totalExpenses / event.budget) * 100 : 0;

      const htmlContent = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>${event.name} - Event Report</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; border-bottom: 2px solid #64a12d; padding-bottom: 20px; margin-bottom: 30px; }
            .event-info { margin-bottom: 30px; }
            .expenses-table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            .expenses-table th, .expenses-table td { border: 1px solid #ddd; padding: 8px; text-align: left; }
            .expenses-table th { background-color: #64a12d; color: white; }
            .summary { background-color: #f9f9f9; padding: 20px; border-radius: 5px; margin-top: 20px; }
            .status-${event.status} { padding: 5px 10px; border-radius: 15px; color: white; font-weight: bold; }
            .status-planned { background-color: #ff9800; }
            .status-ongoing { background-color: #2196f3; }
            .status-completed { background-color: #4caf50; }
            .status-cancelled { background-color: #f44336; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>${event.name}</h1>
            <h2>Event Financial Report</h2>
            <p>Generated on: ${new Date().toLocaleDateString()}</p>
          </div>
          
          <div class="event-info">
            <h3>Event Details</h3>
            <p><strong>Description:</strong> ${event.description || 'No description'}</p>
            <p><strong>Start Date:</strong> ${event.startDate || 'Not specified'}</p>
            <p><strong>End Date:</strong> ${event.endDate || 'Not specified'}</p>
            <p><strong>Location:</strong> ${event.location || 'Not specified'}</p>
            <p><strong>Status:</strong> <span class="status-${event.status}">${event.status.toUpperCase()}</span></p>
          </div>
          
          <div class="budget-info">
            <h3>Budget Information</h3>
            <p><strong>Total Budget:</strong> $${(event.budget || 0).toFixed(2)}</p>
            <p><strong>Total Expenses:</strong> $${totalExpenses.toFixed(2)}</p>
            <p><strong>Remaining Budget:</strong> $${remainingBudget.toFixed(2)}</p>
            <p><strong>Budget Utilization:</strong> ${budgetUtilization.toFixed(1)}%</p>
          </div>
          
          <div class="expenses-details">
            <h3>Expense Details</h3>
            ${eventExpenses.length > 0 ? `
              <table class="expenses-table">
                <thead>
                  <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Category</th>
                    <th>Amount</th>
                  </tr>
                </thead>
                <tbody>
                  ${eventExpenses.map(exp => `
                    <tr>
                      <td>${exp.date || 'N/A'}</td>
                      <td>${exp.description || 'N/A'}</td>
                      <td>${exp.categoryName || 'Uncategorized'}</td>
                      <td>$${(exp.amount || 0).toFixed(2)}</td>
                    </tr>
                  `).join('')}
                </tbody>
              </table>
            ` : '<p>No expenses recorded for this event.</p>'}
          </div>
          
          <div class="summary">
            <h3>Summary</h3>
            <p>This event report shows the financial overview of "${event.name}". 
            The total budget allocated was $${(event.budget || 0).toFixed(2)}, 
            with $${totalExpenses.toFixed(2)} spent, leaving $${remainingBudget.toFixed(2)} remaining.</p>
          </div>
        </body>
        </html>
      `;

      const { uri } = await Print.printToFileAsync({ html: htmlContent });
      
      if (await Sharing.isAvailableAsync()) {
        await Sharing.shareAsync(uri, {
          mimeType: 'application/pdf',
          dialogTitle: `Event Report - ${event.name}`,
          UTI: 'com.adobe.pdf'
        });
      } else {
        Alert.alert('Sharing not available', 'PDF generated successfully but sharing is not available on this device.');
      }
    } catch (error) {
      console.error('Error generating event report:', error);
      Alert.alert('Error', 'Failed to generate event report');
    } finally {
      setIsGenerating(false);
    }
  };

  const generateCategoryReport = async (category) => {
    setIsGenerating(true);
    try {
      const categoryExpenses = expenses.filter(exp => exp.categoryId === category.id);
      const totalAmount = categoryExpenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
      const totalAllExpenses = expenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
      const percentage = totalAllExpenses > 0 ? (totalAmount / totalAllExpenses) * 100 : 0;

      const htmlContent = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>${category.name} - Category Report</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; border-bottom: 2px solid #64a12d; padding-bottom: 20px; margin-bottom: 30px; }
            .category-info { margin-bottom: 30px; }
            .expenses-table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            .expenses-table th, .expenses-table td { border: 1px solid #ddd; padding: 8px; text-align: left; }
            .expenses-table th { background-color: #64a12d; color: white; }
            .summary { background-color: #f9f9f9; padding: 20px; border-radius: 5px; margin-top: 20px; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>${category.name}</h1>
            <h2>Category Expense Report</h2>
            <p>Generated on: ${new Date().toLocaleDateString()}</p>
          </div>
          
          <div class="category-info">
            <h3>Category Summary</h3>
            <p><strong>Category Name:</strong> ${category.name}</p>
            <p><strong>Total Expenses:</strong> $${totalAmount.toFixed(2)}</p>
            <p><strong>Percentage of Total:</strong> ${percentage.toFixed(1)}%</p>
            <p><strong>Number of Transactions:</strong> ${categoryExpenses.length}</p>
          </div>
          
          <div class="expenses-details">
            <h3>Expense Details</h3>
            ${categoryExpenses.length > 0 ? `
              <table class="expenses-table">
                <thead>
                  <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Event</th>
                    <th>Amount</th>
                  </tr>
                </thead>
                <tbody>
                  ${categoryExpenses.map(exp => `
                    <tr>
                      <td>${exp.date || 'N/A'}</td>
                      <td>${exp.description || 'N/A'}</td>
                      <td>${exp.eventName || 'No Event'}</td>
                      <td>$${(exp.amount || 0).toFixed(2)}</td>
                    </tr>
                  `).join('')}
                </tbody>
              </table>
            ` : '<p>No expenses recorded for this category.</p>'}
          </div>
          
          <div class="summary">
            <h3>Summary</h3>
            <p>This category report shows all expenses under "${category.name}". 
            The total amount spent in this category is $${totalAmount.toFixed(2)}, 
            which represents ${percentage.toFixed(1)}% of your total expenses.</p>
          </div>
        </body>
        </html>
      `;

      const { uri } = await Print.printToFileAsync({ html: htmlContent });
      
      if (await Sharing.isAvailableAsync()) {
        await Sharing.shareAsync(uri, {
          mimeType: 'application/pdf',
          dialogTitle: `Category Report - ${category.name}`,
          UTI: 'com.adobe.pdf'
        });
      } else {
        Alert.alert('Sharing not available', 'PDF generated successfully but sharing is not available on this device.');
      }
    } catch (error) {
      console.error('Error generating category report:', error);
      Alert.alert('Error', 'Failed to generate category report');
    } finally {
      setIsGenerating(false);
    }
  };

  if (loading) {
    return (
      <View style={[styles.container, { backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5' }]}>
        <View style={styles.header}>
          <Text style={[styles.headerTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
            Reports & Analytics
          </Text>
        </View>
        <View style={styles.loadingContainer}>
          <FontAwesome5 name="spinner" size={48} color="#64a12d" />
          <Text style={[styles.loadingText, { color: isDarkMode ? '#fff' : '#333' }]}>
            Loading reports data...
          </Text>
        </View>
      </View>
    );
  }

  if (error) {
    return (
      <View style={[styles.container, { backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5' }]}>
        <View style={styles.header}>
          <Text style={[styles.headerTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
            Reports & Analytics
          </Text>
        </View>
        <View style={styles.errorContainer}>
          <FontAwesome5 name="exclamation-triangle" size={48} color="#f44336" />
          <Text style={[styles.errorText, { color: isDarkMode ? '#fff' : '#333' }]}>
            {error}
          </Text>
          <Button
            title="Retry"
            onPress={initializeScreen}
            icon="refresh"
            style={styles.retryButton}
          />
        </View>
      </View>
    );
  }

  return (
    <View style={[styles.container, { backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5' }]}>
      <View style={styles.header}>
        <Text style={[styles.headerTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
          Reports & Analytics
        </Text>
      </View>

      <ScrollView style={styles.content}>
        {/* Overall Report Section */}
        <Card style={styles.reportCard}>
          <View style={styles.reportHeader}>
            <FontAwesome5 name="chart-pie" size={24} color="#64a12d" />
            <Text style={[styles.reportTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
              Overall Financial Report
            </Text>
          </View>
          <Text style={[styles.reportDescription, { color: isDarkMode ? '#ccc' : '#666' }]}>
            Generate a comprehensive report covering all events, expenses, categories, and funders
          </Text>
          
          <View style={styles.dateInputs}>
            <View style={styles.inputGroup}>
              <Text style={[styles.inputLabel, { color: isDarkMode ? '#fff' : '#333' }]}>Start Date</Text>
              <TextInput
                style={[styles.textInput, { 
                  backgroundColor: isDarkMode ? '#444' : '#f9f9f9',
                  color: isDarkMode ? '#fff' : '#333',
                  borderColor: isDarkMode ? '#555' : '#ddd'
                }]}
                value={dateRange.startDate}
                onChangeText={(text) => setDateRange({ ...dateRange, startDate: text })}
                placeholder="YYYY-MM-DD (Optional)"
                placeholderTextColor={isDarkMode ? '#888' : '#999'}
              />
            </View>
            <View style={styles.inputGroup}>
              <Text style={[styles.inputLabel, { color: isDarkMode ? '#fff' : '#333' }]}>End Date</Text>
              <TextInput
                style={[styles.textInput, { 
                  backgroundColor: isDarkMode ? '#444' : '#f9f9f9',
                  color: isDarkMode ? '#fff' : '#333',
                  borderColor: isDarkMode ? '#555' : '#ddd'
                }]}
                value={dateRange.endDate}
                onChangeText={(text) => setDateRange({ ...dateRange, endDate: text })}
                placeholder="YYYY-MM-DD (Optional)"
                placeholderTextColor={isDarkMode ? '#888' : '#999'}
              />
            </View>
          </View>
          
          <Button
            title={isGenerating ? "Generating..." : "Generate Overall Report"}
            onPress={generateOverallReport}
            icon="file-pdf"
            style={styles.generateButton}
            disabled={isGenerating}
          />
        </Card>

        {/* Event Reports Section */}
        <Card style={styles.reportCard}>
          <View style={styles.reportHeader}>
            <FontAwesome5 name="calendar-alt" size={24} color="#64a12d" />
            <Text style={[styles.reportTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
              Individual Event Reports
            </Text>
          </View>
          <Text style={[styles.reportDescription, { color: isDarkMode ? '#ccc' : '#666' }]}>
            Generate detailed financial reports for specific events
          </Text>
          
          {events.length === 0 ? (
            <Text style={[styles.noDataText, { color: isDarkMode ? '#ccc' : '#666' }]}>
              No events available. Create events first to generate reports.
            </Text>
          ) : (
            events.map((event) => (
              <View key={event.id} style={styles.eventReportItem}>
                <View style={styles.eventInfo}>
                  <Text style={[styles.eventName, { color: isDarkMode ? '#fff' : '#333' }]}>
                    {event.name}
                  </Text>
                  <Text style={[styles.eventDetails, { color: isDarkMode ? '#ccc' : '#666' }]}>
                    Budget: ${(event.budget || 0).toFixed(2)} | Status: {event.status}
                  </Text>
                </View>
                <Button
                  title="Generate Report"
                  onPress={() => generateEventReport(event)}
                  icon="file-pdf"
                  style={styles.eventReportButton}
                  disabled={isGenerating}
                />
              </View>
            ))
          )}
        </Card>

        {/* Category Reports Section */}
        <Card style={styles.reportCard}>
          <View style={styles.reportHeader}>
            <FontAwesome5 name="list" size={24} color="#64a12d" />
            <Text style={[styles.reportTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
              Category Expense Reports
            </Text>
          </View>
          <Text style={[styles.reportDescription, { color: isDarkMode ? '#ccc' : '#666' }]}>
            Generate expense reports by category
          </Text>
          
          {categories.length === 0 ? (
            <Text style={[styles.noDataText, { color: isDarkMode ? '#ccc' : '#666' }]}>
              No categories available. Create categories first to generate reports.
            </Text>
          ) : (
            categories.map((category) => (
              <View key={category.id} style={styles.categoryReportItem}>
                <View style={styles.categoryInfo}>
                  <Text style={[styles.categoryName, { color: isDarkMode ? '#fff' : '#333' }]}>
                    {category.name}
                  </Text>
                  <Text style={[styles.categoryDetails, { color: isDarkMode ? '#ccc' : '#666' }]}>
                    {expenses.filter(exp => exp.categoryId === category.id).length} expenses
                  </Text>
                </View>
                <Button
                  title="Generate Report"
                  onPress={() => generateCategoryReport(category)}
                  icon="file-pdf"
                  style={styles.categoryReportButton}
                  disabled={isGenerating}
                />
              </View>
            ))
          )}
        </Card>

        {/* Quick Stats */}
        <Card style={styles.reportCard}>
          <View style={styles.reportHeader}>
            <FontAwesome5 name="chart-bar" size={24} color="#64a12d" />
            <Text style={[styles.reportTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
              Quick Statistics
            </Text>
          </View>
          
          <View style={styles.statsGrid}>
            <View style={styles.statItem}>
              <Text style={[styles.statValue, { color: isDarkMode ? '#fff' : '#333' }]}>
                {events.length}
              </Text>
              <Text style={[styles.statLabel, { color: isDarkMode ? '#ccc' : '#666' }]}>
                Total Events
              </Text>
            </View>
            <View style={styles.statItem}>
              <Text style={[styles.statValue, { color: isDarkMode ? '#fff' : '#333' }]}>
                {expenses.length}
              </Text>
              <Text style={[styles.statLabel, { color: isDarkMode ? '#ccc' : '#666' }]}>
                Total Expenses
              </Text>
            </View>
            <View style={styles.statItem}>
              <Text style={[styles.statValue, { color: isDarkMode ? '#fff' : '#333' }]}>
                {categories.length}
              </Text>
              <Text style={[styles.statLabel, { color: isDarkMode ? '#ccc' : '#666' }]}>
                Categories
              </Text>
            </View>
            <View style={styles.statItem}>
              <Text style={[styles.statValue, { color: isDarkMode ? '#fff' : '#333' }]}>
                {funders.length}
              </Text>
              <Text style={[styles.statLabel, { color: isDarkMode ? '#ccc' : '#666' }]}>
                Funders
              </Text>
            </View>
          </View>
        </Card>
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
  },
  header: {
    marginBottom: 20,
  },
  headerTitle: {
    fontSize: 24,
    fontWeight: 'bold',
  },
  content: {
    flex: 1,
  },
  reportCard: {
    marginBottom: 20,
    padding: 20,
  },
  reportHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
  },
  reportTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginLeft: 12,
  },
  reportDescription: {
    fontSize: 14,
    marginBottom: 16,
    lineHeight: 20,
  },
  dateInputs: {
    flexDirection: 'row',
    marginBottom: 16,
  },
  inputGroup: {
    flex: 1,
    marginRight: 10,
  },
  inputLabel: {
    fontSize: 14,
    fontWeight: '600',
    marginBottom: 6,
  },
  textInput: {
    borderWidth: 1,
    borderRadius: 8,
    padding: 10,
    fontSize: 14,
  },
  generateButton: {
    alignSelf: 'center',
    paddingHorizontal: 30,
    paddingVertical: 12,
  },
  eventReportItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingVertical: 12,
    borderBottomWidth: 1,
    borderBottomColor: '#eee',
  },
  eventInfo: {
    flex: 1,
    marginRight: 12,
  },
  eventName: {
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 4,
  },
  eventDetails: {
    fontSize: 12,
  },
  eventReportButton: {
    paddingHorizontal: 16,
    paddingVertical: 8,
  },
  categoryReportItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingVertical: 12,
    borderBottomWidth: 1,
    borderBottomColor: '#eee',
  },
  categoryInfo: {
    flex: 1,
    marginRight: 12,
  },
  categoryName: {
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 4,
  },
  categoryDetails: {
    fontSize: 12,
  },
  categoryReportButton: {
    paddingHorizontal: 16,
    paddingVertical: 8,
  },
  noDataText: {
    textAlign: 'center',
    fontStyle: 'italic',
    marginTop: 10,
  },
  statsGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
  },
  statItem: {
    width: '48%',
    alignItems: 'center',
    padding: 16,
    backgroundColor: '#f8f9fa',
    borderRadius: 8,
    marginBottom: 12,
  },
  statValue: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#64a12d',
    marginBottom: 4,
  },
  statLabel: {
    fontSize: 12,
    textAlign: 'center',
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 40,
  },
  loadingText: {
    fontSize: 18,
    fontWeight: 'bold',
    marginTop: 16,
    textAlign: 'center',
  },
  errorContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 40,
  },
  errorText: {
    fontSize: 16,
    textAlign: 'center',
    marginTop: 16,
    marginBottom: 20,
    lineHeight: 24,
  },
  retryButton: {
    paddingHorizontal: 30,
    paddingVertical: 12,
  },
});