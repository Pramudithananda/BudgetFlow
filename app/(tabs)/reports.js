import React, { useState } from 'react';
import { View, Text, StyleSheet, TouchableOpacity, ScrollView, Alert } from 'react-native';
import { useTheme } from '../../context/theme';
import { FontAwesome5 } from '@expo/vector-icons';
import * as Print from 'expo-print';
import * as Sharing from 'expo-sharing';

export default function ReportsScreen() {
  const { isDarkMode } = useTheme();
  const [isGenerating, setIsGenerating] = useState(false);
  
  // Sample data
  const events = [
    {
      id: 1,
      name: 'Sample Event 1',
      description: 'This is a sample event for testing',
      startDate: '2025-01-01',
      endDate: '2025-01-31',
      budget: 1000.00,
      location: 'Sample Location 1',
      status: 'planned'
    },
    {
      id: 2,
      name: 'Sample Event 2',
      description: 'Another sample event for testing',
      startDate: '2025-02-01',
      endDate: '2025-02-28',
      budget: 2000.00,
      location: 'Sample Location 2',
      status: 'ongoing'
    }
  ];

  const expenses = [
    {
      id: 1,
      description: 'Sample Expense 1',
      amount: 150.00,
      date: '2025-01-15',
      categoryName: 'Food & Beverages',
      eventName: 'Sample Event 1'
    },
    {
      id: 2,
      description: 'Sample Expense 2',
      amount: 300.00,
      date: '2025-01-20',
      categoryName: 'Transportation',
      eventName: 'Sample Event 1'
    }
  ];

  const generateOverallReport = async () => {
    setIsGenerating(true);
    try {
      const totalBudget = events.reduce((sum, event) => sum + (event.budget || 0), 0);
      const totalExpenses = expenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
      const remainingBudget = totalBudget - totalExpenses;
      const budgetUtilization = totalBudget > 0 ? (totalExpenses / totalBudget) * 100 : 0;

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
            .section-title { font-size: 18px; font-weight: bold; margin-bottom: 15px; color: #333; }
            .event-item { display: flex; justify-content: space-between; padding: 10px; border-bottom: 1px solid #eee; }
            .event-name { font-weight: bold; }
            .event-budget { color: #64a12d; font-weight: bold; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>BudgetFlow</h1>
            <h2>Overall Financial Report</h2>
            <p>Generated on: ${new Date().toLocaleDateString()}</p>
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
            <div class="section-title">Event Details</div>
            ${events.map(event => `
              <div style="margin-bottom: 15px; padding: 15px; background-color: #f9f9f9; border-radius: 5px;">
                <h4>${event.name}</h4>
                <p><strong>Budget:</strong> $${event.budget.toFixed(2)}</p>
                <p><strong>Status:</strong> ${event.status}</p>
                <p><strong>Duration:</strong> ${event.startDate} to ${event.endDate}</p>
              </div>
            `).join('')}
          </div>
        </body>
        </html>
      `;

      const { uri } = await Print.printToFileAsync({ html: htmlContent });
      await Sharing.shareAsync(uri, {
        mimeType: 'application/pdf',
        dialogTitle: 'Share Overall Report'
      });
    } catch (error) {
      console.error('Error generating overall report:', error);
      Alert.alert('Error', 'Failed to generate overall report');
    } finally {
      setIsGenerating(false);
    }
  };

  const generateEventReport = async (event) => {
    try {
      const eventExpenses = expenses.filter(exp => exp.eventName === event.name);
      const totalExpenses = eventExpenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
      const remainingBudget = (event.budget || 0) - totalExpenses;

      const htmlContent = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>Event Report - ${event.name}</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; border-bottom: 2px solid #64a12d; padding-bottom: 20px; margin-bottom: 30px; }
            .event-info { background-color: #f9f9f9; padding: 20px; border-radius: 8px; margin-bottom: 30px; }
            .expenses-table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            .expenses-table th, .expenses-table td { border: 1px solid #ddd; padding: 8px; text-align: left; }
            .expenses-table th { background-color: #64a12d; color: white; }
            .summary { background-color: #f9f9f9; padding: 20px; border-radius: 5px; margin-top: 20px; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>${event.name}</h1>
            <h2>Event Report</h2>
            <p>Generated on: ${new Date().toLocaleDateString()}</p>
          </div>
          
          <div class="event-info">
            <h3>Event Details</h3>
            <p><strong>Description:</strong> ${event.description || 'No description'}</p>
            <p><strong>Start Date:</strong> ${event.startDate || 'Not specified'}</p>
            <p><strong>End Date:</strong> ${event.endDate || 'Not specified'}</p>
            <p><strong>Location:</strong> ${event.location || 'Not specified'}</p>
            <p><strong>Status:</strong> ${event.status.toUpperCase()}</p>
          </div>
          
          <div class="budget-info">
            <h3>Budget Information</h3>
            <p><strong>Total Budget:</strong> $${(event.budget || 0).toFixed(2)}</p>
            <p><strong>Total Expenses:</strong> $${totalExpenses.toFixed(2)}</p>
            <p><strong>Remaining Budget:</strong> $${remainingBudget.toFixed(2)}</p>
            <p><strong>Budget Utilization:</strong> ${event.budget ? ((totalExpenses / event.budget) * 100).toFixed(1) : 0}%</p>
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
      await Sharing.shareAsync(uri, {
        mimeType: 'application/pdf',
        dialogTitle: `Event Report - ${event.name}`
      });
    } catch (error) {
      console.error('Error generating event report:', error);
      Alert.alert('Error', 'Failed to generate event report');
    }
  };

  return (
    <View style={[styles.container, { backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5' }]}>
      <View style={styles.header}>
        <Text style={[styles.title, { color: isDarkMode ? '#fff' : '#333' }]}>
          Reports & Analytics
        </Text>
      </View>

      <ScrollView style={styles.content}>
        <View style={[styles.overviewCard, { backgroundColor: isDarkMode ? '#2a2a2a' : '#fff' }]}>
          <Text style={[styles.cardTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
            Financial Overview
          </Text>
          
          <View style={styles.statsGrid}>
            <View style={styles.statItem}>
              <Text style={styles.statValue}>
                ${events.reduce((sum, event) => sum + (event.budget || 0), 0).toFixed(2)}
              </Text>
              <Text style={[styles.statLabel, { color: isDarkMode ? '#ccc' : '#666' }]}>
                Total Budget
              </Text>
            </View>
            
            <View style={styles.statItem}>
              <Text style={styles.statValue}>
                ${expenses.reduce((sum, exp) => sum + (exp.amount || 0), 0).toFixed(2)}
              </Text>
              <Text style={[styles.statLabel, { color: isDarkMode ? '#ccc' : '#666' }]}>
                Total Expenses
              </Text>
            </View>
            
            <View style={styles.statItem}>
              <Text style={styles.statValue}>
                {events.length}
              </Text>
              <Text style={[styles.statLabel, { color: isDarkMode ? '#ccc' : '#666' }]}>
                Total Events
              </Text>
            </View>
            
            <View style={styles.statItem}>
              <Text style={styles.statValue}>
                {expenses.length}
              </Text>
              <Text style={[styles.statLabel, { color: isDarkMode ? '#ccc' : '#666' }]}>
                Total Expenses
              </Text>
            </View>
          </View>
        </View>

        <View style={[styles.reportsCard, { backgroundColor: isDarkMode ? '#2a2a2a' : '#fff' }]}>
          <Text style={[styles.cardTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
            Generate Reports
          </Text>
          
          <TouchableOpacity
            style={[styles.reportButton, { opacity: isGenerating ? 0.6 : 1 }]}
            onPress={generateOverallReport}
            disabled={isGenerating}
          >
            <FontAwesome5 name="file-pdf" size={16} color="#fff" />
            <Text style={styles.reportButtonText}>
              {isGenerating ? 'Generating...' : 'Generate Overall Report'}
            </Text>
          </TouchableOpacity>
        </View>

        <View style={[styles.eventsCard, { backgroundColor: isDarkMode ? '#2a2a2a' : '#fff' }]}>
          <Text style={[styles.cardTitle, { color: isDarkMode ? '#fff' : '#333' }]}>
            Event Reports
          </Text>
          
          {events.map(event => (
            <View key={event.id} style={styles.eventItem}>
              <View style={styles.eventInfo}>
                <Text style={[styles.eventName, { color: isDarkMode ? '#fff' : '#333' }]}>
                  {event.name}
                </Text>
                <Text style={[styles.eventDetails, { color: isDarkMode ? '#ccc' : '#666' }]}>
                  Budget: ${event.budget.toFixed(2)} | Status: {event.status}
                </Text>
              </View>
              
              <TouchableOpacity
                style={styles.generateButton}
                onPress={() => generateEventReport(event)}
              >
                <FontAwesome5 name="file-alt" size={16} color="#fff" />
                <Text style={styles.generateButtonText}>Report</Text>
              </TouchableOpacity>
            </View>
          ))}
        </View>
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  header: {
    paddingHorizontal: 20,
    paddingVertical: 15,
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
  },
  content: {
    flex: 1,
    paddingHorizontal: 20,
  },
  overviewCard: {
    marginBottom: 20,
    padding: 20,
    borderRadius: 8,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  cardTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 16,
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
  reportsCard: {
    marginBottom: 20,
    padding: 20,
    borderRadius: 8,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  reportButton: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#64a12d',
    paddingVertical: 12,
    paddingHorizontal: 20,
    borderRadius: 8,
  },
  reportButtonText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
    marginLeft: 8,
  },
  eventsCard: {
    marginBottom: 20,
    padding: 20,
    borderRadius: 8,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  eventItem: {
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
  generateButton: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: '#64a12d',
    paddingHorizontal: 16,
    paddingVertical: 8,
    borderRadius: 8,
  },
  generateButtonText: {
    color: '#fff',
    fontSize: 14,
    fontWeight: 'bold',
    marginLeft: 8,
  },
});