import React, { useState } from 'react';
import { View, StyleSheet, ScrollView, TouchableOpacity, Alert } from 'react-native';
import { Text } from '../../components/Themed';
import { useTheme } from '../../context/theme';
import { FontAwesome5 } from '@expo/vector-icons';
import * as Print from 'expo-print';
import * as Sharing from 'expo-sharing';

export default function ReportsScreen() {
  const { isDarkMode } = useTheme();
  const [loading, setLoading] = useState(false);

  // Sample data for reports
  const sampleData = {
    events: [
      { id: 1, name: 'Annual Conference 2024', date: '2024-03-15', budget: 500000, spent: 450000 },
      { id: 2, name: 'Team Building Workshop', date: '2024-02-20', budget: 150000, spent: 120000 },
      { id: 3, name: 'Product Launch', date: '2024-01-10', budget: 300000, spent: 280000 }
    ],
    categories: [
      { id: 1, name: 'Marketing', budget: 200000, spent: 180000 },
      { id: 2, name: 'Operations', budget: 150000, spent: 120000 },
      { id: 3, name: 'Training', budget: 100000, spent: 95000 }
    ],
    expenses: [
      { id: 1, description: 'Conference Venue', amount: 200000, category: 'Marketing', date: '2024-03-10' },
      { id: 2, description: 'Catering Services', amount: 150000, category: 'Operations', date: '2024-03-12' },
      { id: 3, description: 'Training Materials', amount: 50000, category: 'Training', date: '2024-02-15' }
    ],
    funders: [
      { id: 1, name: 'ABC Foundation', amount: 500000, received: 500000 },
      { id: 2, name: 'XYZ Corporation', amount: 300000, received: 250000 },
      { id: 3, name: 'DEF Trust', amount: 200000, received: 200000 }
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
  });

  const formatCurrency = (amount) => {
    return new Intl.NumberFormat('en-LK', {
      style: 'currency',
      currency: 'LKR',
      minimumFractionDigits: 0,
    }).format(amount);
  };

  const calculateTotals = () => {
    const totalBudget = sampleData.events.reduce((sum, event) => sum + event.budget, 0);
    const totalSpent = sampleData.events.reduce((sum, event) => sum + event.spent, 0);
    const totalFunds = sampleData.funders.reduce((sum, funder) => sum + funder.amount, 0);
    const totalReceived = sampleData.funders.reduce((sum, funder) => sum + funder.received, 0);
    
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
                <th>Budget</th>
                <th>Spent</th>
                <th>Remaining</th>
              </tr>
              ${sampleData.events.map(event => `
                <tr>
                  <td>${event.name}</td>
                  <td>${new Date(event.date).toLocaleDateString('en-LK')}</td>
                  <td>${formatCurrency(event.budget)}</td>
                  <td>${formatCurrency(event.spent)}</td>
                  <td>${formatCurrency(event.budget - event.spent)}</td>
                </tr>
              `).join('')}
              <tr class="total">
                <td colspan="2">Total</td>
                <td>${formatCurrency(totals.totalBudget)}</td>
                <td>${formatCurrency(totals.totalSpent)}</td>
                <td>${formatCurrency(totals.remaining)}</td>
              </tr>
            </table>
          </div>

          <div class="section">
            <h3>Category Breakdown</h3>
            <table>
              <tr>
                <th>Category</th>
                <th>Budget</th>
                <th>Spent</th>
                <th>Remaining</th>
              </tr>
              ${sampleData.categories.map(category => `
                <tr>
                  <td>${category.name}</td>
                  <td>${formatCurrency(category.budget)}</td>
                  <td>${formatCurrency(category.spent)}</td>
                  <td>${formatCurrency(category.budget - category.spent)}</td>
                </tr>
              `).join('')}
            </table>
          </div>

          <div class="section">
            <h3>Funder Summary</h3>
            <table>
              <tr>
                <th>Funder</th>
                <th>Committed</th>
                <th>Received</th>
                <th>Pending</th>
              </tr>
              ${sampleData.funders.map(funder => `
                <tr>
                  <td>${funder.name}</td>
                  <td>${formatCurrency(funder.amount)}</td>
                  <td>${formatCurrency(funder.received)}</td>
                  <td>${formatCurrency(funder.amount - funder.received)}</td>
                </tr>
              `).join('')}
              <tr class="total">
                <td>Total</td>
                <td>${formatCurrency(totals.totalFunds)}</td>
                <td>${formatCurrency(totals.totalReceived)}</td>
                <td>${formatCurrency(totals.pending)}</td>
              </tr>
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

  const generateEventReport = async () => {
    setLoading(true);
    try {
      const html = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>BudgetFlow - Event Report</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; color: #64a12d; margin-bottom: 30px; }
            .section { margin-bottom: 25px; }
            .section h3 { color: #333; border-bottom: 2px solid #64a12d; padding-bottom: 5px; }
            table { width: 100%; border-collapse: collapse; margin: 15px 0; }
            th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
            th { background-color: #64a12d; color: white; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>BudgetFlow - Individual Event Reports</h1>
            <p>Generated on: ${new Date().toLocaleDateString('en-LK')}</p>
          </div>
          
          ${sampleData.events.map(event => `
            <div class="section">
              <h3>${event.name}</h3>
              <p><strong>Date:</strong> ${new Date(event.date).toLocaleDateString('en-LK')}</p>
              <p><strong>Budget:</strong> ${formatCurrency(event.budget)}</p>
              <p><strong>Spent:</strong> ${formatCurrency(event.spent)}</p>
              <p><strong>Remaining:</strong> ${formatCurrency(event.budget - event.spent)}</p>
              <p><strong>Utilization:</strong> ${((event.spent / event.budget) * 100).toFixed(1)}%</p>
            </div>
          `).join('')}
        </body>
        </html>
      `;

      const { uri } = await Print.printToFileAsync({ html });
      await Sharing.shareAsync(uri, {
        mimeType: 'application/pdf',
        dialogTitle: 'Share Event Report'
      });
    } catch (error) {
      Alert.alert('Error', 'Failed to generate report: ' + error.message);
    } finally {
      setLoading(false);
    }
  };

  const generateCategoryReport = async () => {
    setLoading(true);
    try {
      const html = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>BudgetFlow - Category Report</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; color: #64a12d; margin-bottom: 30px; }
            .section { margin-bottom: 25px; }
            .section h3 { color: #333; border-bottom: 2px solid #64a12d; padding-bottom: 5px; }
            table { width: 100%; border-collapse: collapse; margin: 15px 0; }
            th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
            th { background-color: #64a12d; color: white; }
          </style>
        </head>
        <body>
          <div class="header">
            <h1>BudgetFlow - Category Report</h1>
            <p>Generated on: ${new Date().toLocaleDateString('en-LK')}</p>
          </div>
          
          <div class="section">
            <h3>Category Breakdown</h3>
            <table>
              <tr>
                <th>Category</th>
                <th>Budget</th>
                <th>Spent</th>
                <th>Remaining</th>
                <th>Utilization %</th>
              </tr>
              ${sampleData.categories.map(category => `
                <tr>
                  <td>${category.name}</td>
                  <td>${formatCurrency(category.budget)}</td>
                  <td>${formatCurrency(category.spent)}</td>
                  <td>${formatCurrency(category.budget - category.spent)}</td>
                  <td>${((category.spent / category.budget) * 100).toFixed(1)}%</td>
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
        dialogTitle: 'Share Category Report'
      });
    } catch (error) {
      Alert.alert('Error', 'Failed to generate report: ' + error.message);
    } finally {
      setLoading(false);
    }
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
            onPress={generateEventReport}
            disabled={loading}
          >
            <FontAwesome5 name="calendar-alt" size={20} color="#fff" />
            <Text style={styles.reportButtonText}>Individual Event Reports</Text>
          </TouchableOpacity>

          <TouchableOpacity 
            style={styles.reportButton}
            onPress={generateCategoryReport}
            disabled={loading}
          >
            <FontAwesome5 name="list" size={20} color="#fff" />
            <Text style={styles.reportButtonText}>Category Breakdown Report</Text>
          </TouchableOpacity>
        </View>

        {loading && (
          <Text style={styles.loadingText}>Generating report...</Text>
        )}
      </ScrollView>
    </View>
  );
}