import React, { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, Alert } from 'react-native';
import { Text, View } from '../../components/Themed';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { router } from 'expo-router';
import { useTheme } from '../../context/theme';
import { 
  migrateFromFirebase, 
  exportSQLiteData, 
  getMigrationStatus, 
  setMigrationProgressCallback,
  resetMigrationStatus 
} from '../../services/migrationService';

export default function MigrationScreen() {
  const { colors } = useTheme();
  const [migrationStatus, setStatus] = useState({
    isRunning: false,
    progress: 0,
    currentStep: '',
    error: null
  });
  const [lastMigrationResult, setLastMigrationResult] = useState(null);

  useEffect(() => {
    // Set up progress callback
    setMigrationProgressCallback((status) => {
      setStatus(status);
    });

    // Get initial status
    const status = getMigrationStatus();
    setStatus(status);

    return () => {
      setMigrationProgressCallback(null);
    };
  }, []);

  const handleMigration = async () => {
    Alert.alert(
      'Start Migration',
      'This will migrate all your data from Firebase to SQLite. This process cannot be undone. Continue?',
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Continue',
          style: 'destructive',
          onPress: async () => {
            try {
              resetMigrationStatus();
              const result = await migrateFromFirebase();
              setLastMigrationResult(result);
              
              if (result.success) {
                Alert.alert(
                  'Migration Successful',
                  `Successfully migrated ${result.dataCount.categories} categories, ${result.dataCount.expenses} expenses, ${result.dataCount.funders} funders, and ${result.dataCount.helpers} helpers.`,
                  [{ text: 'OK' }]
                );
              } else {
                Alert.alert(
                  'Migration Failed',
                  result.message,
                  [{ text: 'OK' }]
                );
              }
            } catch (error) {
              Alert.alert(
                'Migration Error',
                `An error occurred during migration: ${error.message}`,
                [{ text: 'OK' }]
              );
            }
          }
        }
      ]
    );
  };

  const handleExport = async () => {
    try {
      await exportSQLiteData();
      Alert.alert(
        'Export Successful',
        'Your data has been exported successfully.',
        [{ text: 'OK' }]
      );
    } catch (error) {
      Alert.alert(
        'Export Failed',
        `Failed to export data: ${error.message}`,
        [{ text: 'OK' }]
      );
    }
  };

  const renderProgressBar = () => {
    if (!migrationStatus.isRunning) return null;

    return (
      <View style={styles.progressContainer}>
        <Text style={styles.progressText}>{migrationStatus.currentStep}</Text>
        <View style={styles.progressBarContainer}>
          <View 
            style={[
              styles.progressBar, 
              { 
                width: `${migrationStatus.progress}%`,
                backgroundColor: colors.primary 
              }
            ]} 
          />
        </View>
        <Text style={styles.progressPercentage}>{Math.round(migrationStatus.progress)}%</Text>
      </View>
    );
  };

  const renderMigrationResult = () => {
    if (!lastMigrationResult) return null;

    return (
      <Card style={styles.resultCard}>
        <Text style={[
          styles.resultTitle, 
          { color: lastMigrationResult.success ? colors.success : colors.error }
        ]}>
          {lastMigrationResult.success ? 'Migration Successful' : 'Migration Failed'}
        </Text>
        <Text style={styles.resultMessage}>{lastMigrationResult.message}</Text>
        {lastMigrationResult.success && lastMigrationResult.dataCount && (
          <View style={styles.dataCountContainer}>
            <Text style={styles.dataCountText}>
              Categories: {lastMigrationResult.dataCount.categories}
            </Text>
            <Text style={styles.dataCountText}>
              Expenses: {lastMigrationResult.dataCount.expenses}
            </Text>
            <Text style={styles.dataCountText}>
              Funders: {lastMigrationResult.dataCount.funders}
            </Text>
            <Text style={styles.dataCountText}>
              Helpers: {lastMigrationResult.dataCount.helpers}
            </Text>
          </View>
        )}
      </Card>
    );
  };

  return (
    <ScrollView style={[styles.container, { backgroundColor: colors.background }]}>
      <Card style={styles.card}>
        <Text style={styles.title}>Database Migration</Text>
        <Text style={styles.paragraph}>
          This screen allows you to migrate your data from Firebase to SQLite. 
          SQLite provides local storage without requiring an internet connection.
        </Text>
        
        <Text style={styles.subtitle}>What happens during migration?</Text>
        <Text style={styles.paragraph}>
          • All your categories, expenses, funders, and helpers will be copied to SQLite{"\n"}
          • Your budget summary will be preserved{"\n"}
          • The original Firebase data remains unchanged{"\n"}
          • After migration, the app will use SQLite for all operations
        </Text>

        {renderProgressBar()}
        {renderMigrationResult()}

        <View style={styles.buttonContainer}>
          <Button 
            title="Start Migration" 
            onPress={handleMigration}
            disabled={migrationStatus.isRunning}
            style={styles.migrationButton}
          />
          
          <Button 
            title="Export SQLite Data" 
            variant="outline"
            onPress={handleExport}
            style={styles.exportButton}
          />
          
          <Button 
            title="Back" 
            variant="outline" 
            onPress={() => router.back()} 
            style={styles.backButton}
          />
        </View>
      </Card>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  card: { margin: 16 },
  title: { fontSize: 22, fontWeight: 'bold', marginBottom: 12 },
  subtitle: { fontSize: 16, fontWeight: '600', marginTop: 16, marginBottom: 4 },
  paragraph: { fontSize: 14, lineHeight: 20 },
  buttonContainer: { marginTop: 24 },
  migrationButton: { marginBottom: 12 },
  exportButton: { marginBottom: 12 },
  backButton: { marginBottom: 12 },
  progressContainer: { marginTop: 16, marginBottom: 16 },
  progressText: { fontSize: 14, marginBottom: 8, textAlign: 'center' },
  progressBarContainer: { 
    height: 8, 
    backgroundColor: '#e0e0e0', 
    borderRadius: 4, 
    overflow: 'hidden',
    marginBottom: 4
  },
  progressBar: { 
    height: '100%', 
    borderRadius: 4 
  },
  progressPercentage: { 
    fontSize: 12, 
    textAlign: 'center', 
    color: '#666' 
  },
  resultCard: { marginTop: 16 },
  resultTitle: { 
    fontSize: 18, 
    fontWeight: 'bold', 
    marginBottom: 8 
  },
  resultMessage: { 
    fontSize: 14, 
    lineHeight: 20, 
    marginBottom: 12 
  },
  dataCountContainer: { 
    backgroundColor: '#f5f5f5', 
    padding: 12, 
    borderRadius: 8 
  },
  dataCountText: { 
    fontSize: 14, 
    marginBottom: 4 
  }
});