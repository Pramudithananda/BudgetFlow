import { useState } from 'react';
import { StyleSheet, ScrollView, View as RNView, Alert, ActivityIndicator } from 'react-native';
import { Text, View } from '../../components/Themed';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { setupSampleData, verifySampleData } from '../../setup-sample-data';
import { useTheme } from '../../context/theme';
import { router } from 'expo-router';

export default function SetupTestDataScreen() {
  const { colors, isDarkMode } = useTheme();
  const [loading, setLoading] = useState(false);
  const [setupComplete, setSetupComplete] = useState(false);
  const [dataStats, setDataStats] = useState(null);

  const handleSetupSampleData = async () => {
    try {
      setLoading(true);
      
      Alert.alert(
        'Setup Test Data',
        'This will clear existing data and add comprehensive test data. Continue?',
        [
          { text: 'Cancel', style: 'cancel' },
          { 
            text: 'Setup', 
            onPress: async () => {
              const result = await setupSampleData();
              
              if (result.success) {
                setDataStats(result.data);
                setSetupComplete(true);
                Alert.alert(
                  'Success! 🎉',
                  `Test data setup completed successfully!\n\n` +
                  `📊 Created:\n` +
                  `• ${result.data.categories} categories\n` +
                  `• ${result.data.funders} funders\n` +
                  `• ${result.data.expenses} expenses\n` +
                  `• ${result.data.helpers} helpers\n\n` +
                  `💰 Budget Summary:\n` +
                  `• Total: Rs. ${result.data.totalBudget.toLocaleString()}\n` +
                  `• Received: Rs. ${result.data.receivedFund.toLocaleString()}\n` +
                  `• Remaining: Rs. ${result.data.remainingFund.toLocaleString()}`
                );
              } else {
                Alert.alert('Error', `Failed to setup test data: ${result.error}`);
              }
            }
          }
        ]
      );
    } catch (error) {
      Alert.alert('Error', `Setup failed: ${error.message}`);
    } finally {
      setLoading(false);
    }
  };

  const handleVerifyData = async () => {
    try {
      setLoading(true);
      const result = await verifySampleData();
      
      if (result.success) {
        const { summary } = result;
        Alert.alert(
          'Data Verification 📊',
          `Current Database Status:\n\n` +
          `📂 Categories: ${summary.categories}\n` +
          `💰 Expenses: ${summary.expenses}\n` +
          `👥 Funders: ${summary.funders}\n` +
          `👷 Helpers: ${summary.helpers}\n\n` +
          `Status Breakdown:\n${summary.statusBreakdown.map(s => 
            `• ${s.status}: ${s.count} (Rs. ${s.total?.toLocaleString() || 0})`
          ).join('\n')}`
        );
      } else {
        Alert.alert('Error', `Verification failed: ${result.error}`);
      }
    } catch (error) {
      Alert.alert('Error', `Verification failed: ${error.message}`);
    } finally {
      setLoading(false);
    }
  };

  const navigateToFeature = (screen) => {
    router.push(screen);
  };

  return (
    <ScrollView style={[styles.container, { backgroundColor: colors.background }]}>
      <View style={styles.content}>
        {/* Header */}
        <Card style={styles.headerCard}>
          <RNView style={styles.header}>
            <FontAwesome5 name="vial" size={40} color="#64a12d" />
            <Text style={styles.headerTitle}>Test Data Setup</Text>
            <Text style={styles.headerSubtitle}>
              Set up comprehensive test data to explore all app features
            </Text>
          </RNView>
        </Card>

        {/* Actions */}
        <Card style={styles.actionsCard}>
          <Text style={styles.sectionTitle}>Setup Actions</Text>
          
          <Button
            title="🚀 Setup Complete Test Data"
            onPress={handleSetupSampleData}
            disabled={loading}
            style={styles.primaryButton}
          />
          
          <Button
            title="🔍 Verify Current Data"
            onPress={handleVerifyData}
            disabled={loading}
            variant="outline"
            style={styles.secondaryButton}
          />
          
          {loading && (
            <RNView style={styles.loadingContainer}>
              <ActivityIndicator size="large" color="#64a12d" />
              <Text style={styles.loadingText}>Processing...</Text>
            </RNView>
          )}
        </Card>

        {/* Test Data Preview */}
        <Card style={styles.previewCard}>
          <Text style={styles.sectionTitle}>What Will Be Created</Text>
          
          <RNView style={styles.previewItem}>
            <FontAwesome5 name="list" size={20} color="#2196F3" />
            <Text style={styles.previewText}>
              <Text style={styles.bold}>10 Categories:</Text> ආහාර, ප්‍රවාහන, විනෝදාස්වාදය, අධ්‍යාපනය, etc.
            </Text>
          </RNView>
          
          <RNView style={styles.previewItem}>
            <FontAwesome5 name="users" size={20} color="#FF9800" />
            <Text style={styles.previewText}>
              <Text style={styles.bold}>8 Funders:</Text> කෙසර මහත්තයා, පවුලේ අරමුදල, සමාගම අරමුදල, etc.
            </Text>
          </RNView>
          
          <RNView style={styles.previewItem}>
            <FontAwesome5 name="receipt" size={20} color="#4CAF50" />
            <Text style={styles.previewText}>
              <Text style={styles.bold}>25+ Expenses:</Text> All status types (Outstanding, Pending, Received, Spent)
            </Text>
          </RNView>
          
          <RNView style={styles.previewItem}>
            <FontAwesome5 name="hand-holding-heart" size={20} color="#9C27B0" />
            <Text style={styles.previewText}>
              <Text style={styles.bold}>5 Helpers:</Text> Sample team members
            </Text>
          </RNView>
        </Card>

        {/* Quick Navigation */}
        <Card style={styles.navigationCard}>
          <Text style={styles.sectionTitle}>Test App Features</Text>
          
          <RNView style={styles.navigationGrid}>
            <Button
              title="🏠 Home"
              onPress={() => navigateToFeature('/(tabs)/')}
              variant="outline"
              style={styles.navButton}
            />
            <Button
              title="📂 Categories"
              onPress={() => navigateToFeature('/(tabs)/category')}
              variant="outline"
              style={styles.navButton}
            />
            <Button
              title="👥 Funders"
              onPress={() => navigateToFeature('/(tabs)/funders')}
              variant="outline"
              style={styles.navButton}
            />
            <Button
              title="📊 Dashboard"
              onPress={() => navigateToFeature('/(tabs)/dashboard')}
              variant="outline"
              style={styles.navButton}
            />
            <Button
              title="💰 All Expenses"
              onPress={() => navigateToFeature('/(screens)/all-expenses')}
              variant="outline"
              style={styles.navButton}
            />
            <Button
              title="⚙️ Settings"
              onPress={() => navigateToFeature('/(tabs)/settings')}
              variant="outline"
              style={styles.navButton}
            />
          </RNView>
        </Card>

        {/* Success Stats */}
        {setupComplete && dataStats && (
          <Card style={styles.statsCard}>
            <Text style={styles.sectionTitle}>✅ Setup Completed</Text>
            
            <RNView style={styles.statsGrid}>
              <RNView style={styles.statItem}>
                <Text style={styles.statNumber}>{dataStats.categories}</Text>
                <Text style={styles.statLabel}>Categories</Text>
              </RNView>
              <RNView style={styles.statItem}>
                <Text style={styles.statNumber}>{dataStats.funders}</Text>
                <Text style={styles.statLabel}>Funders</Text>
              </RNView>
              <RNView style={styles.statItem}>
                <Text style={styles.statNumber}>{dataStats.expenses}</Text>
                <Text style={styles.statLabel}>Expenses</Text>
              </RNView>
              <RNView style={styles.statItem}>
                <Text style={styles.statNumber}>Rs. {dataStats.totalBudget?.toLocaleString()}</Text>
                <Text style={styles.statLabel}>Total Budget</Text>
              </RNView>
            </RNView>
          </Card>
        )}

        {/* Instructions */}
        <Card style={styles.instructionsCard}>
          <Text style={styles.sectionTitle}>📋 Testing Instructions</Text>
          
          <Text style={styles.instructionText}>
            <Text style={styles.bold}>1. Setup Test Data:</Text> Click "Setup Complete Test Data" to populate the database with realistic sample data.
          </Text>
          
          <Text style={styles.instructionText}>
            <Text style={styles.bold}>2. Explore Features:</Text> Use the navigation buttons to test different app screens and features.
          </Text>
          
          <Text style={styles.instructionText}>
            <Text style={styles.bold}>3. Test CRUD Operations:</Text> Try adding, editing, and deleting expenses and categories.
          </Text>
          
          <Text style={styles.instructionText}>
            <Text style={styles.bold}>4. Check Analytics:</Text> View the dashboard for comprehensive reports and analytics.
          </Text>
          
          <Text style={styles.instructionText}>
            <Text style={styles.bold}>5. Generate Reports:</Text> Test PDF generation from the dashboard.
          </Text>
        </Card>
      </View>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  content: {
    padding: 16,
  },
  headerCard: {
    marginBottom: 16,
  },
  header: {
    alignItems: 'center',
    padding: 20,
  },
  headerTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    marginTop: 10,
    textAlign: 'center',
  },
  headerSubtitle: {
    fontSize: 16,
    marginTop: 8,
    textAlign: 'center',
    opacity: 0.7,
  },
  actionsCard: {
    marginBottom: 16,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 16,
  },
  primaryButton: {
    marginBottom: 12,
  },
  secondaryButton: {
    marginBottom: 12,
  },
  loadingContainer: {
    alignItems: 'center',
    padding: 20,
  },
  loadingText: {
    marginTop: 10,
    fontSize: 16,
  },
  previewCard: {
    marginBottom: 16,
  },
  previewItem: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
    padding: 8,
  },
  previewText: {
    marginLeft: 12,
    flex: 1,
    fontSize: 14,
  },
  bold: {
    fontWeight: 'bold',
  },
  navigationCard: {
    marginBottom: 16,
  },
  navigationGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
  },
  navButton: {
    width: '48%',
    marginBottom: 8,
  },
  statsCard: {
    marginBottom: 16,
    backgroundColor: '#E8F5E8',
  },
  statsGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-around',
  },
  statItem: {
    alignItems: 'center',
    padding: 10,
    minWidth: '22%',
  },
  statNumber: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#64a12d',
  },
  statLabel: {
    fontSize: 12,
    marginTop: 4,
    textAlign: 'center',
  },
  instructionsCard: {
    marginBottom: 32,
  },
  instructionText: {
    fontSize: 14,
    marginBottom: 12,
    lineHeight: 20,
  },
});