import React, { useState } from 'react';
import { View, StyleSheet, ScrollView, TouchableOpacity, Alert, Modal } from 'react-native';
import { Text } from '../../components/Themed';
import { useTheme } from '../../context/theme';
import { FontAwesome5 } from '@expo/vector-icons';
import * as Print from 'expo-print';
import * as Sharing from 'expo-sharing';

export default function ReportsScreen() {
  const { isDarkMode, colors } = useTheme();
  const [loading, setLoading] = useState(false);
  const [showEventModal, setShowEventModal] = useState(false);
  const [selectedEvent, setSelectedEvent] = useState(null);

  // Your sample data for reports
  const sampleData = {
    events: [
      { 
        id: 1, 
        name: 'Birthday Celebration', 
        date: '2024-10-01', 
        category: 'Conference',
        totalFunding: 100000,
        receivedFunding: 25000,
        pendingFunding: 75000,
        expenses: [
          { category: 'Food & Beverages', amount: 60000, status: 'Spent' },
          { category: 'Decorations', amount: 20000, status: 'Available' },
          { category: 'Transportation', amount: 10000, status: 'Pending' },
          { category: 'Other Expenses', amount: 10000, status: 'Outstanding' }
        ],
        funders: [
          { name: 'Sujith', amount: 25000, status: 'Spent' },
          { name: 'Nirvan', amount: 40000, status: 'Available' },
          { name: 'Welfare Funding', amount: 35000, status: 'Pending' }
        ]
      }
    ],
    categories: [
      { id: 1, name: 'Food & Beverages', color: '#64a12d', totalAmount: 60000, expenseCount: 1 },
      { id: 2, name: 'Decorations', color: '#ff6b6b', totalAmount: 20000, expenseCount: 1 },
      { id: 3, name: 'Transportation', color: '#4ecdc4', totalAmount: 10000, expenseCount: 1 },
      { id: 4, name: 'Other Expenses', color: '#45b7d1', totalAmount: 10000, expenseCount: 1 }
    ],
    funders: [
      { id: 1, name: 'Sujith', phone: '+94 77 123 4567', email: 'sujith@example.com', totalAmount: 25000, status: 'Spent' },
      { id: 2, name: 'Nirvan', phone: '+94 78 234 5678', email: 'nirvan@example.com', totalAmount: 40000, status: 'Available' },
      { id: 3, name: 'Welfare Funding', phone: '+94 11 345 6789', email: 'welfare@funding.org', totalAmount: 35000, status: 'Pending' }
    ]
  };

  const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5',
    },
    header: {
      padding: 20,
      backgroundColor: isDarkMode ? '#2a2a2a' : '#fff',
      borderBottomWidth: 1,
      borderBottomColor: isDarkMode ? '#333' : '#e0e0e0',
    },
    headerTitle: {
      fontSize: 24,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      textAlign: 'center',
    },
    content: {
      padding: 20,
    },
    overviewCard: {
      backgroundColor: isDarkMode ? '#2a2a2a' : '#fff',
      padding: 20,
      borderRadius: 12,
      marginBottom: 20,
      shadowColor: '#000',
      shadowOffset: { width: 0, height: 2 },
      shadowOpacity: 0.1,
      shadowRadius: 4,
      elevation: 3,
    },
    overviewTitle: {
      fontSize: 20,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      marginBottom: 16,
      textAlign: 'center',
    },
    statsRow: {
      flexDirection: 'row',
      justifyContent: 'space-between',
      marginBottom: 12,
    },
    statItem: {
      flex: 1,
      alignItems: 'center',
    },
    statValue: {
      fontSize: 18,
      fontWeight: 'bold',
      color: '#64a12d',
      marginBottom: 4,
    },
    statLabel: {
      fontSize: 12,
      color: isDarkMode ? '#999' : '#666',
      textAlign: 'center',
    },
    reportSection: {
      marginBottom: 20,
    },
    sectionTitle: {
      fontSize: 18,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      marginBottom: 12,
    },
    reportButton: {
      backgroundColor: '#64a12d',
      padding: 16,
      borderRadius: 12,
      marginBottom: 12,
      flexDirection: 'row',
      alignItems: 'center',
      shadowColor: '#000',
      shadowOffset: { width: 0, height: 2 },
      shadowOpacity: 0.1,
      shadowRadius: 4,
      elevation: 3,
    },
    reportButtonText: {
      color: '#fff',
      fontSize: 16,
      fontWeight: 'bold',
      marginLeft: 12,
    },
    loadingText: {
      color: isDarkMode ? '#fff' : '#333',
      textAlign: 'center',
      marginTop: 20,
      fontSize: 16,
    },
    modalOverlay: {
      flex: 1,
      justifyContent: 'center',
      alignItems: 'center',
      backgroundColor: 'rgba(0, 0, 0, 0.5)',
    },
    modalContent: {
      width: '90%',
      backgroundColor: isDarkMode ? '#2a2a2a' : '#fff',
      borderRadius: 12,
      padding: 20,
      maxHeight: '80%',
    },
    modalTitle: {
      fontSize: 20,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      marginBottom: 20,
      textAlign: 'center',
    },
    eventItem: {
      padding: 15,
      borderBottomWidth: 1,
      borderBottomColor: isDarkMode ? '#333' : '#e0e0e0',
    },
    eventName: {
      fontSize: 16,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      marginBottom: 4,
    },
    eventDate: {
      fontSize: 14,
      color: isDarkMode ? '#999' : '#666',
    },
    closeButton: {
      marginTop: 20,
      backgroundColor: '#64a12d',
      padding: 12,
      borderRadius: 8,
      alignItems: 'center',
    },
    closeButtonText: {
      color: '#fff',
      fontSize: 16,
      fontWeight: 'bold',
    },
  });

  const formatCurrency = (amount) => {
    return new Intl.NumberFormat('en-LK', {
      style: 'currency',
      currency: 'LKR',
      minimumFractionDigits: 0,
    }).format(amount);
  };

  const calculateTotals = () => {
    const totalBudget = sampleData.events.reduce((sum, event) => sum + event.totalFunding, 0);
    const totalSpent = sampleData.events.reduce((sum, event) => 
      sum + event.expenses.reduce((expSum, exp) => expSum + exp.amount, 0), 0);
    const totalFunds = sampleData.funders.reduce((sum, funder) => sum + funder.totalAmount, 0);
    const totalReceived = sampleData.events.reduce((sum, event) => sum + event.receivedFunding, 0);
    
    return {
      totalBudget,
      totalSpent,
      totalFunds,
      totalReceived,
      remaining: totalBudget - totalSpent,
      pending: totalFunds - totalReceived
    };
  };

  const generateOverallReport = async () => {
    setLoading(true);
    try {
      const totals = calculateTotals();
      
      const html = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>BudgetFlow - Overall Report</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; color: #64a12d; margin-bottom: 30px; }
            .section { margin-bottom: 25px; }
            .section h3 { color: #333; border-bottom: 2px solid #64a12d; padding-bottom: 5px; }
            .stats { display: flex; justify-content: space-around; margin: 20px 0; }
            .stat { text-align: center; }
            .stat-value { font-size: 24px; font-weight: bold; color: #64a12d; }
            .stat-label { font-size: 14px; color: #666; }
            table { width: 100%; border-collapse: collapse; margin: 15px 0; }
            th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
            th { background-color: #64a12d; color: white; }
            .total { font-weight: bold; background-color: #f5f5f5; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>BudgetFlow - Overall Financial Report</h1>
            <p>Generated on: ${new Date().toLocaleDateString('en-LK')}</p>
          </div>
          
          <div class="section">
            <h3>Financial Overview</h3>
            <div class="stats">
              <div class="stat">
                <div class="stat-value">${formatCurrency(totals.totalBudget)}</div>
                <div class="stat-label">Total Budget</div>
              </div>
              <div class="stat">
                <div class="stat-value">${formatCurrency(totals.totalSpent)}</div>
                <div class="stat-label">Total Spent</div>
              </div>
              <div class="stat">
                <div class="stat-value">${formatCurrency(totals.remaining)}</div>
                <div class="stat-label">Remaining</div>
              </div>
            </div>
          </div>

          <div class="section">
            <h3>Events Summary</h3>
            <table>
              <tr>
                <th>Event Name</th>
                <th>Date</th>
                <th>Total Funding</th>
                <th>Received</th>
                <th>Pending</th>
              </tr>
              ${sampleData.events.map(event => `
                <tr>
                  <td>${event.name}</td>
                  <td>${new Date(event.date).toLocaleDateString('en-LK')}</td>
                  <td>${formatCurrency(event.totalFunding)}</td>
                  <td>${formatCurrency(event.receivedFunding)}</td>
                  <td>${formatCurrency(event.pendingFunding)}</td>
                </tr>
              `).join('')}
            </table>
          </div>

          <div class="section">
            <h3>Category Breakdown</h3>
            <table>
              <tr>
                <th>Category</th>
                <th>Total Amount</th>
                <th>Expense Count</th>
              </tr>
              ${sampleData.categories.map(category => `
                <tr>
                  <td>${category.name}</td>
                  <td>${formatCurrency(category.totalAmount)}</td>
                  <td>${category.expenseCount}</td>
                </tr>
              `).join('')}
            </table>
          </div>

          <div class="section">
            <h3>Funder Summary</h3>
            <table>
              <tr>
                <th>Funder</th>
                <th>Amount</th>
                <th>Status</th>
                <th>Contact</th>
              </tr>
              ${sampleData.funders.map(funder => `
                <tr>
                  <td>${funder.name}</td>
                  <td>${formatCurrency(funder.totalAmount)}</td>
                  <td>${funder.status}</td>
                  <td>${funder.phone}</td>
                </tr>
              `).join('')}
            </table>
          </div>
        </body>
        </html>
      `;

      const { uri } = await Print.printToFileAsync({ html });
      await Sharing.shareAsync(uri, {
        mimeType: 'application/pdf',
        dialogTitle: 'Share Overall Report'
      });
    } catch (error) {
      Alert.alert('Error', 'Failed to generate report: ' + error.message);
    } finally {
      setLoading(false);
    }
  };

  const generateIndividualEventReport = async (event) => {
    setLoading(true);
    try {
      const totalExpenses = event.expenses.reduce((sum, exp) => sum + exp.amount, 0);
      
      const html = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>BudgetFlow - ${event.name} Report</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; color: #64a12d; margin-bottom: 30px; }
            .section { margin-bottom: 25px; }
            .section h3 { color: #333; border-bottom: 2px solid #64a12d; padding-bottom: 5px; }
            .stats { display: flex; justify-content: space-around; margin: 20px 0; }
            .stat { text-align: center; }
            .stat-value { font-size: 24px; font-weight: bold; color: #64a12d; }
            .stat-label { font-size: 14px; color: #666; }
            table { width: 100%; border-collapse: collapse; margin: 15px 0; }
            th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
            th { background-color: #64a12d; color: white; }
            .total { font-weight: bold; background-color: #f5f5f5; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>BudgetFlow - ${event.name} Report</h1>
            <p>Generated on: ${new Date().toLocaleDateString('en-LK')}</p>
          </div>
          
          <div class="section">
            <h3>Event Overview</h3>
            <p><strong>Event Name:</strong> ${event.name}</p>
            <p><strong>Date:</strong> ${new Date(event.date).toLocaleDateString('en-LK')}</p>
            <p><strong>Category:</strong> ${event.category}</p>
            <p><strong>Total Funding:</strong> ${formatCurrency(event.totalFunding)}</p>
            <p><strong>Received Funding:</strong> ${formatCurrency(event.receivedFunding)}</p>
            <p><strong>Pending Funding:</strong> ${formatCurrency(event.pendingFunding)}</p>
          </div>

          <div class="section">
            <h3>Expense Breakdown</h3>
            <table>
              <tr>
                <th>Category</th>
                <th>Amount</th>
                <th>Status</th>
              </tr>
              ${event.expenses.map(expense => `
                <tr>
                  <td>${expense.category}</td>
                  <td>${formatCurrency(expense.amount)}</td>
                  <td>${expense.status}</td>
                </tr>
              `).join('')}
              <tr class="total">
                <td>Total Expenses</td>
                <td>${formatCurrency(totalExpenses)}</td>
                <td>-</td>
              </tr>
            </table>
          </div>

          <div class="section">
            <h3>Funder Contributions</h3>
            <table>
              <tr>
                <th>Funder</th>
                <th>Amount</th>
                <th>Status</th>
              </tr>
              ${event.funders.map(funder => `
                <tr>
                  <td>${funder.name}</td>
                  <td>${formatCurrency(funder.amount)}</td>
                  <td>${funder.status}</td>
                </tr>
              `).join('')}
              <tr class="total">
                <td>Total Funding</td>
                <td>${formatCurrency(event.totalFunding)}</td>
                <td>-</td>
              </tr>
            </table>
          </div>

          <div class="section">
            <h3>Financial Summary</h3>
            <div class="stats">
              <div class="stat">
                <div class="stat-value">${formatCurrency(event.totalFunding)}</div>
                <div class="stat-label">Total Funding</div>
              </div>
              <div class="stat">
                <div class="stat-value">${formatCurrency(totalExpenses)}</div>
                <div class="stat-label">Total Expenses</div>
              </div>
              <div class="stat">
                <div class="stat-value">${formatCurrency(event.totalFunding - totalExpenses)}</div>
                <div class="stat-label">Remaining</div>
              </div>
            </div>
          </div>
        </body>
        </html>
      `;

      const { uri } = await Print.printToFileAsync({ html });
      await Sharing.shareAsync(uri, {
        mimeType: 'application/pdf',
        dialogTitle: `Share ${event.name} Report`
      });
    } catch (error) {
      Alert.alert('Error', 'Failed to generate report: ' + error.message);
    } finally {
      setLoading(false);
    }
  };

  const showEventSelectionModal = () => {
    setShowEventModal(true);
  };

  const selectEvent = (event) => {
    setSelectedEvent(event);
    setShowEventModal(false);
    generateIndividualEventReport(event);
  };

  const totals = calculateTotals();

  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Text style={styles.headerTitle}>Reports & Analytics</Text>
      </View>

      <ScrollView style={styles.content}>
        <View style={styles.overviewCard}>
          <Text style={styles.overviewTitle}>Financial Overview</Text>
          
          <View style={styles.statsRow}>
            <View style={styles.statItem}>
              <Text style={styles.statValue}>{formatCurrency(totals.totalBudget)}</Text>
              <Text style={styles.statLabel}>Total Budget</Text>
            </View>
            <View style={styles.statItem}>
              <Text style={styles.statValue}>{formatCurrency(totals.totalSpent)}</Text>
              <Text style={styles.statLabel}>Total Spent</Text>
            </View>
          </View>
          
          <View style={styles.statsRow}>
            <View style={styles.statItem}>
              <Text style={styles.statValue}>{formatCurrency(totals.remaining)}</Text>
              <Text style={styles.statLabel}>Remaining</Text>
            </View>
            <View style={styles.statItem}>
              <Text style={styles.statValue}>{formatCurrency(totals.totalFunds)}</Text>
              <Text style={styles.statLabel}>Total Funds</Text>
            </View>
          </View>
        </View>

        <View style={styles.reportSection}>
          <Text style={styles.sectionTitle}>Generate Reports</Text>
          
          <TouchableOpacity 
            style={styles.reportButton}
            onPress={generateOverallReport}
            disabled={loading}
          >
            <FontAwesome5 name="file-alt" size={20} color="#fff" />
            <Text style={styles.reportButtonText}>Overall Financial Report</Text>
          </TouchableOpacity>

          <TouchableOpacity 
            style={styles.reportButton}
            onPress={showEventSelectionModal}
            disabled={loading}
          >
            <FontAwesome5 name="calendar-alt" size={20} color="#fff" />
            <Text style={styles.reportButtonText}>Individual Event Report</Text>
          </TouchableOpacity>
        </View>

        {loading && (
          <Text style={styles.loadingText}>Generating report...</Text>
        )}
      </ScrollView>

      {/* Event Selection Modal */}
      <Modal
        animationType="slide"
        transparent={true}
        visible={showEventModal}
        onRequestClose={() => setShowEventModal(false)}
      >
        <View style={styles.modalOverlay}>
          <View style={styles.modalContent}>
            <Text style={styles.modalTitle}>Select Event for Report</Text>
            
            {sampleData.events.map((event) => (
              <TouchableOpacity
                key={event.id}
                style={styles.eventItem}
                onPress={() => selectEvent(event)}
              >
                <Text style={styles.eventName}>{event.name}</Text>
                <Text style={styles.eventDate}>
                  {new Date(event.date).toLocaleDateString('en-LK')} - {formatCurrency(event.totalFunding)}
                </Text>
              </TouchableOpacity>
            ))}
            
            <TouchableOpacity
              style={styles.closeButton}
              onPress={() => setShowEventModal(false)}
            >
              <Text style={styles.closeButtonText}>Cancel</Text>
            </TouchableOpacity>
          </View>
        </View>
      </Modal>
    </View>
  );
}