import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, ActivityIndicator, Alert, TouchableOpacity } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router, useLocalSearchParams } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { getEventById, getEventExpenses, deleteEvent } from '../../services/sqliteService';
import * as Print from 'expo-print';
import * as Sharing from 'expo-sharing';
import { useTheme } from '../../context/theme';

export default function EventDetailScreen() {
  const { colors } = useTheme();
  const { id } = useLocalSearchParams();
  const [loading, setLoading] = useState(true);
  const [event, setEvent] = useState(null);
  const [eventExpenses, setEventExpenses] = useState([]);
  const [generatingReport, setGeneratingReport] = useState(false);

  const fetchEventData = async () => {
    try {
      setLoading(true);
      const [eventData, expensesData] = await Promise.all([
        getEventById(parseInt(id)),
        getEventExpenses(parseInt(id))
      ]);
      
      setEvent(eventData);
      setEventExpenses(expensesData);
    } catch (error) {
      console.error('Error fetching event data:', error);
      Alert.alert('Error', 'Could not load event details. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    if (id) {
      fetchEventData();
    }
  }, [id]);

  const handleDelete = async () => {
    Alert.alert(
      'Delete Event',
      'Are you sure you want to delete this event? This action cannot be undone.',
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Delete',
          style: 'destructive',
          onPress: async () => {
            try {
              await deleteEvent(parseInt(id));
              Alert.alert('Success', 'Event deleted successfully');
              router.back();
            } catch (error) {
              console.error('Error deleting event:', error);
              Alert.alert('Error', 'Could not delete event. Please try again.');
            }
          }
        }
      ]
    );
  };

  const getStatusColor = (status) => {
    switch (status) {
      case 'Planning': return '#FF9800';
      case 'In Progress': return '#2196F3';
      case 'Completed': return '#4CAF50';
      case 'Cancelled': return '#F44336';
      default: return '#707070';
    }
  };

  const formatDate = (dateString) => {
    if (!dateString) return 'N/A';
    const date = new Date(dateString);
    return date.toLocaleDateString();
  };

  const formatCurrency = (amount) => {
    return `Rs. ${amount?.toLocaleString() || '0'}`;
  };

  const calculateExpenseSummary = () => {
    const totalExpenses = eventExpenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
    const remainingBudget = (event?.budget || 0) - totalExpenses;
    
    return {
      totalExpenses,
      remainingBudget,
      budgetUtilization: event?.budget ? (totalExpenses / event.budget) * 100 : 0
    };
  };

  const generateEventReport = async () => {
    if (!event) return;

    try {
      setGeneratingReport(true);
      
      const expenseSummary = calculateExpenseSummary();
      const statusBreakdown = {};
      
      eventExpenses.forEach(expense => {
        statusBreakdown[expense.status] = (statusBreakdown[expense.status] || 0) + 1;
      });

      const htmlContent = `
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <title>Event Report - ${event.title}</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            .header { text-align: center; border-bottom: 2px solid #64a12d; padding-bottom: 20px; margin-bottom: 30px; }
            .event-title { color: #64a12d; font-size: 24px; font-weight: bold; }
            .section { margin-bottom: 25px; }
            .section-title { color: #333; font-size: 18px; font-weight: bold; margin-bottom: 15px; border-left: 4px solid #64a12d; padding-left: 10px; }
            .info-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 20px; }
            .info-item { background: #f5f5f5; padding: 15px; border-radius: 8px; }
            .info-label { font-weight: bold; color: #666; margin-bottom: 5px; }
            .info-value { color: #333; font-size: 16px; }
            .budget-summary { background: #e8f5e8; padding: 20px; border-radius: 8px; margin-bottom: 20px; }
            .budget-item { display: flex; justify-content: space-between; margin-bottom: 10px; }
            .budget-label { font-weight: bold; }
            .expenses-table { width: 100%; border-collapse: collapse; margin-top: 15px; }
            .expenses-table th, .expenses-table td { border: 1px solid #ddd; padding: 12px; text-align: left; }
            .expenses-table th { background: #f5f5f5; font-weight: bold; }
            .status-badge { display: inline-block; padding: 4px 8px; border-radius: 12px; color: white; font-size: 12px; font-weight: bold; }
            .status-planning { background: #FF9800; }
            .status-pending { background: #FF9800; }
            .status-received { background: #4CAF50; }
            .status-spent { background: #2196F3; }
            .footer { text-align: center; margin-top: 40px; color: #666; font-size: 12px; }
          </style>
        </head>
        <body>
          <div class="header">
            <div class="event-title">${event.title}</div>
            <p>Event Report</p>
            <p>Generated on ${new Date().toLocaleDateString()}</p>
          </div>

          <div class="section">
            <div class="section-title">Event Information</div>
            <div class="info-grid">
              <div class="info-item">
                <div class="info-label">Description</div>
                <div class="info-value">${event.description || 'No description provided'}</div>
              </div>
              <div class="info-item">
                <div class="info-label">Status</div>
                <div class="info-value">
                  <span class="status-badge status-${event.status.toLowerCase().replace(' ', '-')}">${event.status}</span>
                </div>
              </div>
              <div class="info-item">
                <div class="info-label">Start Date</div>
                <div class="info-value">${formatDate(event.startDate)}</div>
              </div>
              <div class="info-item">
                <div class="info-label">End Date</div>
                <div class="info-value">${event.endDate ? formatDate(event.endDate) : 'Not specified'}</div>
              </div>
              <div class="info-item">
                <div class="info-label">Location</div>
                <div class="info-value">${event.location || 'Not specified'}</div>
              </div>
              <div class="info-item">
                <div class="info-label">Total Budget</div>
                <div class="info-value">${formatCurrency(event.budget)}</div>
              </div>
            </div>
          </div>

          <div class="section">
            <div class="section-title">Budget Summary</div>
            <div class="budget-summary">
              <div class="budget-item">
                <span class="budget-label">Total Budget:</span>
                <span>${formatCurrency(event.budget)}</span>
              </div>
              <div class="budget-item">
                <span class="budget-label">Total Expenses:</span>
                <span>${formatCurrency(expenseSummary.totalExpenses)}</span>
              </div>
              <div class="budget-item">
                <span class="budget-label">Remaining Budget:</span>
                <span style="color: ${expenseSummary.remainingBudget >= 0 ? '#4CAF50' : '#F44336'}">${formatCurrency(expenseSummary.remainingBudget)}</span>
              </div>
              <div class="budget-item">
                <span class="budget-label">Budget Utilization:</span>
                <span>${expenseSummary.budgetUtilization.toFixed(1)}%</span>
              </div>
            </div>
          </div>

          <div class="section">
            <div class="section-title">Expenses Breakdown</div>
            <p><strong>Total Expenses:</strong> ${eventExpenses.length}</p>
            
            ${eventExpenses.length > 0 ? `
              <table class="expenses-table">
                <thead>
                  <tr>
                    <th>Title</th>
                    <th>Amount</th>
                    <th>Status</th>
                    <th>Category</th>
                    <th>Funder</th>
                    <th>Date</th>
                  </tr>
                </thead>
                <tbody>
                  ${eventExpenses.map(expense => `
                    <tr>
                      <td>${expense.title}</td>
                      <td>${formatCurrency(expense.amount)}</td>
                      <td>
                        <span class="status-badge status-${expense.status.toLowerCase().replace(' ', '-')}">${expense.status}</span>
                      </td>
                      <td>${expense.categoryName || 'Uncategorized'}</td>
                      <td>${expense.funderName || 'Not specified'}</td>
                      <td>${formatDate(expense.createdAt)}</td>
                    </tr>
                  `).join('')}
                </tbody>
              </table>
            ` : '<p>No expenses recorded for this event.</p>'}
          </div>

          <div class="footer">
            <p>This report was generated by BudgetFlow App</p>
            <p>Event ID: ${event.id} | Report Date: ${new Date().toISOString()}</p>
          </div>
        </body>
        </html>
      `;

      const { uri } = await Print.printToFileAsync({ html: htmlContent });
      
      if (await Sharing.isAvailableAsync()) {
        await Sharing.shareAsync(uri, {
          mimeType: 'application/pdf',
          dialogTitle: `Event Report - ${event.title}`,
          UTI: 'com.adobe.pdf'
        });
      } else {
        Alert.alert('Success', 'Report generated successfully!', [
          { text: 'OK' }
        ]);
      }
    } catch (error) {
      console.error('Error generating report:', error);
      Alert.alert('Error', 'Could not generate report. Please try again.');
    } finally {
      setGeneratingReport(false);
    }
  };

  if (loading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
      </View>
    );
  }

  if (!event) {
    return (
      <View style={styles.errorContainer}>
        <Text style={[styles.errorText, { color: colors.text }]}>Event not found</Text>
        <Button title="Go Back" onPress={() => router.back()} />
      </View>
    );
  }

  const expenseSummary = calculateExpenseSummary();

  return (
    <ScrollView style={[styles.container, { backgroundColor: colors.background }]}>
      <RNView style={styles.header}>
        <TouchableOpacity onPress={() => router.back()} style={styles.backButton}>
          <FontAwesome5 name="arrow-left" size={20} color={colors.text} />
        </TouchableOpacity>
        <Text style={[styles.headerTitle, { color: colors.text }]}>Event Details</Text>
        <TouchableOpacity onPress={handleDelete} style={styles.deleteButton}>
          <FontAwesome5 name="trash" size={20} color="#F44336" />
        </TouchableOpacity>
      </RNView>

      <Card style={styles.eventCard}>
        <RNView style={styles.eventHeader}>
          <Text style={[styles.eventTitle, { color: colors.text }]}>{event.title}</Text>
          <RNView style={[styles.statusBadge, { backgroundColor: getStatusColor(event.status) }]}>
            <Text style={styles.statusText}>{event.status}</Text>
          </RNView>
        </RNView>

        {event.description && (
          <Text style={[styles.eventDescription, { color: colors.textSecondary }]}>
            {event.description}
          </Text>
        )}

        <RNView style={styles.eventDetails}>
          <RNView style={styles.detailRow}>
            <FontAwesome5 name="calendar" size={16} color={colors.primary} />
            <Text style={[styles.detailText, { color: colors.textSecondary }]}>
              <Text style={{ fontWeight: 'bold' }}>Start:</Text> {formatDate(event.startDate)}
            </Text>
          </RNView>

          {event.endDate && (
            <RNView style={styles.detailRow}>
              <FontAwesome5 name="calendar-check" size={16} color={colors.primary} />
              <Text style={[styles.detailText, { color: colors.textSecondary }]}>
                <Text style={{ fontWeight: 'bold' }}>End:</Text> {formatDate(event.endDate)}
              </Text>
            </RNView>
          )}

          {event.location && (
            <RNView style={styles.detailRow}>
              <FontAwesome5 name="map-marker-alt" size={16} color={colors.primary} />
              <Text style={[styles.detailText, { color: colors.textSecondary }]}>
                <Text style={{ fontWeight: 'bold' }}>Location:</Text> {event.location}
              </Text>
            </RNView>
          )}
        </RNView>
      </Card>

      <Card style={styles.budgetCard}>
        <Text style={[styles.sectionTitle, { color: colors.text }]}>Budget Overview</Text>
        
        <RNView style={styles.budgetGrid}>
          <RNView style={styles.budgetItem}>
            <Text style={[styles.budgetLabel, { color: colors.textSecondary }]}>Total Budget</Text>
            <Text style={[styles.budgetValue, { color: colors.text }]}>{formatCurrency(event.budget)}</Text>
          </RNView>
          
          <RNView style={styles.budgetItem}>
            <Text style={[styles.budgetLabel, { color: colors.textSecondary }]}>Total Expenses</Text>
            <Text style={[styles.budgetValue, { color: colors.text }]}>{formatCurrency(expenseSummary.totalExpenses)}</Text>
          </RNView>
          
          <RNView style={styles.budgetItem}>
            <Text style={[styles.budgetLabel, { color: colors.textSecondary }]}>Remaining</Text>
            <Text style={[
              styles.budgetValue, 
              { color: expenseSummary.remainingBudget >= 0 ? '#4CAF50' : '#F44336' }
            ]}>
              {formatCurrency(expenseSummary.remainingBudget)}
            </Text>
          </RNView>
          
          <RNView style={styles.budgetItem}>
            <Text style={[styles.budgetLabel, { color: colors.textSecondary }]}>Utilization</Text>
            <Text style={[styles.budgetValue, { color: colors.text }]}>
              {expenseSummary.budgetUtilization.toFixed(1)}%
            </Text>
          </RNView>
        </RNView>
      </Card>

      <Card style={styles.expensesCard}>
        <RNView style={styles.expensesHeader}>
          <Text style={[styles.sectionTitle, { color: colors.text }]}>Event Expenses</Text>
          <Text style={[styles.expenseCount, { color: colors.textSecondary }]}>
            {eventExpenses.length} expense{eventExpenses.length !== 1 ? 's' : ''}
          </Text>
        </RNView>

        {eventExpenses.length === 0 ? (
          <RNView style={styles.emptyExpenses}>
            <FontAwesome5 name="receipt" size={32} color={colors.textSecondary} />
            <Text style={[styles.emptyText, { color: colors.textSecondary }]}>
              No expenses recorded for this event
            </Text>
          </RNView>
        ) : (
          eventExpenses.map((expense) => (
            <RNView key={expense.id} style={styles.expenseItem}>
              <RNView style={styles.expenseMain}>
                <Text style={[styles.expenseTitle, { color: colors.text }]}>{expense.title}</Text>
                <Text style={[styles.expenseAmount, { color: colors.text }]}>
                  {formatCurrency(expense.amount)}
                </Text>
              </RNView>
              
              <RNView style={styles.expenseDetails}>
                <RNView style={[styles.statusBadge, { backgroundColor: getStatusColor(expense.status) }]}>
                  <Text style={styles.statusText}>{expense.status}</Text>
                </RNView>
                
                {expense.categoryName && (
                  <Text style={[styles.expenseMeta, { color: colors.textSecondary }]}>
                    📁 {expense.categoryName}
                  </Text>
                )}
                
                {expense.funderName && (
                  <Text style={[styles.expenseMeta, { color: colors.textSecondary }]}>
                    👥 {expense.funderName}
                  </Text>
                )}
              </RNView>
            </RNView>
          ))
        )}
      </Card>

      <RNView style={styles.actionButtons}>
        <Button
          title="Generate Report"
          onPress={generateEventReport}
          icon="file-pdf"
          loading={generatingReport}
          style={styles.reportButton}
        />
      </RNView>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  errorContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
  },
  errorText: {
    fontSize: 18,
    marginBottom: 20,
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 20,
  },
  headerTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    flex: 1,
    textAlign: 'center',
  },
  backButton: {
    padding: 8,
  },
  deleteButton: {
    padding: 8,
  },
  eventCard: {
    marginBottom: 16,
    padding: 16,
  },
  eventHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-start',
    marginBottom: 12,
  },
  eventTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    flex: 1,
    marginRight: 12,
  },
  statusBadge: {
    paddingHorizontal: 8,
    paddingVertical: 4,
    borderRadius: 12,
  },
  statusText: {
    color: '#fff',
    fontSize: 12,
    fontWeight: '600',
  },
  eventDescription: {
    fontSize: 16,
    marginBottom: 16,
    lineHeight: 24,
  },
  eventDetails: {
    gap: 12,
  },
  detailRow: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  detailText: {
    fontSize: 16,
    marginLeft: 12,
  },
  budgetCard: {
    marginBottom: 16,
    padding: 16,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 16,
  },
  budgetGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 12,
  },
  budgetItem: {
    flex: 1,
    minWidth: '45%',
    alignItems: 'center',
    padding: 16,
    backgroundColor: '#f5f5f5',
    borderRadius: 8,
  },
  budgetLabel: {
    fontSize: 14,
    marginBottom: 8,
    textAlign: 'center',
  },
  budgetValue: {
    fontSize: 18,
    fontWeight: 'bold',
    textAlign: 'center',
  },
  expensesCard: {
    marginBottom: 16,
    padding: 16,
  },
  expensesHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 16,
  },
  expenseCount: {
    fontSize: 14,
  },
  emptyExpenses: {
    alignItems: 'center',
    padding: 40,
  },
  emptyText: {
    fontSize: 16,
    marginTop: 16,
    textAlign: 'center',
  },
  expenseItem: {
    paddingVertical: 12,
    borderBottomWidth: 1,
    borderBottomColor: '#eee',
  },
  expenseMain: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 8,
  },
  expenseTitle: {
    fontSize: 16,
    fontWeight: '600',
    flex: 1,
  },
  expenseAmount: {
    fontSize: 16,
    fontWeight: 'bold',
  },
  expenseDetails: {
    flexDirection: 'row',
    alignItems: 'center',
    flexWrap: 'wrap',
    gap: 8,
  },
  expenseMeta: {
    fontSize: 14,
  },
  actionButtons: {
    marginBottom: 20,
  },
  reportButton: {
    marginBottom: 16,
  },
});