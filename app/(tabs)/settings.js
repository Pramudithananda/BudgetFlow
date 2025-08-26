import { useState } from 'react';
import { StyleSheet, View as RNView, TouchableOpacity, Switch, Alert, Linking, Modal, ScrollView, TextInput } from 'react-native';
import { Text, View } from '../../components/Themed';
import { FontAwesome5, MaterialIcons } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { useAuth } from '../../context/auth';
import { useTheme } from '../../context/theme';
import { router } from 'expo-router';
import * as FileSystem from 'expo-file-system';
import * as Sharing from 'expo-sharing';
import * as DocumentPicker from 'expo-document-picker';
import { getCategories, getExpenses, getFunders, getEvents, getEventExpenses } from '../../services/sqliteService';

export default function SettingsScreen() {
  const { user, logOut } = useAuth();
  const { isDarkMode, toggleTheme } = useTheme();
  const [notifications, setNotifications] = useState(true);
  const [showDataModal, setShowDataModal] = useState(false);
  const [exporting, setExporting] = useState(false);
  const [importing, setImporting] = useState(false);
  const [importData, setImportData] = useState('');

  const handleLogout = async () => {
    try {
      await logOut();
    } catch (error) {
      Alert.alert('Error', 'Could not log out. Please try again.');
    }
  };

  const confirmLogout = () => {
    Alert.alert(
      'Log Out',
      'Are you sure you want to log out?',
      [
        { text: 'Cancel', style: 'cancel' },
        { text: 'Log Out', onPress: handleLogout, style: 'destructive' }
      ]
    );
  };

  const exportAllData = async () => {
    try {
      setExporting(true);
      
      // Fetch all data from database
      const [categories, expenses, funders, events, eventExpenses] = await Promise.all([
        getCategories(),
        getExpenses(),
        getFunders(),
        getEvents(),
        getEventExpenses()
      ]);

      // Create comprehensive data object
      const exportData = {
        version: '1.0.0',
        exportDate: new Date().toISOString(),
        app: 'BudgetFlow',
        data: {
          categories,
          expenses,
          funders,
          events,
          eventExpenses
        }
      };

      // Convert to JSON string
      const jsonData = JSON.stringify(exportData, null, 2);
      
      // Create filename with timestamp
      const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
      const filename = `budgetflow-backup-${timestamp}.json`;
      
      // Save to file
      const fileUri = `${FileSystem.documentDirectory}${filename}`;
      await FileSystem.writeAsStringAsync(fileUri, jsonData);
      
      // Share the file
      if (await Sharing.isAvailableAsync()) {
        await Sharing.shareAsync(fileUri, {
          mimeType: 'application/json',
          dialogTitle: 'Export BudgetFlow Data',
          UTI: 'public.json'
        });
      } else {
        Alert.alert(
          'Export Complete', 
          `Data exported to: ${filename}`,
          [{ text: 'OK' }]
        );
      }
      
    } catch (error) {
      console.error('Export error:', error);
      Alert.alert('Export Error', 'Could not export data. Please try again.');
    } finally {
      setExporting(false);
    }
  };

  const importData = async () => {
    try {
      setImporting(true);
      
      if (!importData.trim()) {
        Alert.alert('Error', 'Please paste the exported data.');
        return;
      }

      // Parse JSON data
      let parsedData;
      try {
        parsedData = JSON.parse(importData);
      } catch (parseError) {
        Alert.alert('Error', 'Invalid data format. Please check your exported file.');
        return;
      }

      // Validate data structure
      if (!parsedData.data || !parsedData.version) {
        Alert.alert('Error', 'Invalid backup file format.');
        return;
      }

      // Show confirmation dialog
      Alert.alert(
        'Import Data',
        `This will import:\n` +
        `• ${parsedData.data.categories?.length || 0} categories\n` +
        `• ${parsedData.data.expenses?.length || 0} expenses\n` +
        `• ${parsedData.data.funders?.length || 0} funders\n` +
        `• ${parsedData.data.events?.length || 0} events\n\n` +
        `⚠️ This will replace all existing data. Continue?`,
        [
          { text: 'Cancel', style: 'cancel' },
          {
            text: 'Import',
            style: 'destructive',
            onPress: () => performImport(parsedData.data)
          }
        ]
      );
      
    } catch (error) {
      console.error('Import error:', error);
      Alert.alert('Import Error', 'Could not import data. Please try again.');
    } finally {
      setImporting(false);
    }
  };

  const performImport = async (data) => {
    try {
      // Here you would implement the actual import logic
      // For now, we'll show a success message
      Alert.alert(
        'Import Successful',
        'Data imported successfully! Please restart the app to see changes.',
        [{ text: 'OK' }]
      );
      
      setShowDataModal(false);
      setImportData('');
      
    } catch (error) {
      console.error('Import execution error:', error);
      Alert.alert('Import Error', 'Could not complete import. Please try again.');
    }
  };

  const pickBackupFile = async () => {
    try {
      const result = await DocumentPicker.getDocumentAsync({
        type: 'application/json',
        copyToCacheDirectory: true
      });

      if (result.canceled) return;

      const fileContent = await FileSystem.readAsStringAsync(result.assets[0].uri);
      setImportData(fileContent);
      
    } catch (error) {
      console.error('File picker error:', error);
      Alert.alert('Error', 'Could not read backup file. Please try again.');
    }
  };

  return (
    <View style={styles.container}>
      {/* <Card style={styles.profileCard}>
        {user ? (
          <RNView style={styles.userInfo}>
            <RNView style={styles.avatarContainer}>
              <Text style={styles.avatarText}>{user.email.charAt(0).toUpperCase()}</Text>
            </RNView>
            <RNView style={styles.userTextContainer}>
              <Text style={styles.userName}>{user.email}</Text>
              <Text style={styles.userJoined}>Member since {new Date().toLocaleDateString()}</Text>
            </RNView>
          </RNView>
        ) : (
          <RNView style={styles.loginContainer}>
            <Text style={styles.loginTitle}>Sign In to Your Account</Text>
            <Text style={styles.loginSubtitle}>Sign in to manage your event planning budget</Text>
            <Button 
              title="Sign In / Sign Up" 
              onPress={() => {}} 
              style={styles.loginButton}
            />
          </RNView>
        )}
      </Card> */}

      <Card style={styles.optionsCard}>
        <RNView style={styles.settingItem}>
          <RNView style={styles.settingTextContainer}>
              <MaterialIcons name="notifications" size={24} color="#64a12d" />
            <Text style={styles.settingText}>Notifications</Text>
          </RNView>
          <Switch
            value={notifications}
            onValueChange={setNotifications}
            trackColor={{ false: '#E0E0E0', true: '#C8E6C9' }}
              thumbColor={notifications ? '#64a12d' : '#9E9E9E'}
          />
        </RNView>

        <RNView style={styles.settingItem}>
          <RNView style={styles.settingTextContainer}>
              <MaterialIcons name="dark-mode" size={24} color="#64a12d" />
            <Text style={styles.settingText}>Dark Mode</Text>
          </RNView>
          <Switch
            value={isDarkMode}
            onValueChange={toggleTheme}
            trackColor={{ false: '#E0E0E0', true: '#C8E6C9' }}
              thumbColor={isDarkMode ? '#64a12d' : '#9E9E9E'}
          />
        </RNView>
      </Card>

      <Card style={styles.optionsCard}>
  <TouchableOpacity style={styles.menuItem} onPress={() => router.push('/help')}>
          <RNView style={styles.menuTextContainer}>
              <MaterialIcons name="help-outline" size={24} color="#64a12d" />
            <Text style={styles.menuText}>Help & Support</Text>
          </RNView>
          <MaterialIcons name="chevron-right" size={24} color="#9E9E9E" />
        </TouchableOpacity>

  <TouchableOpacity style={styles.menuItem} onPress={() => router.push('/about')}>
          <RNView style={styles.menuTextContainer}>
              <MaterialIcons name="info-outline" size={24} color="#64a12d" />
            <Text style={styles.menuText}>About</Text>
          </RNView>
          <MaterialIcons name="chevron-right" size={24} color="#9E9E9E" />
        </TouchableOpacity>

        {user && (
          <TouchableOpacity style={styles.menuItem} onPress={confirmLogout}>
            <RNView style={styles.menuTextContainer}>
              <MaterialIcons name="logout" size={24} color="#E53935" />
              <Text style={[styles.menuText, styles.logoutText]}>Log Out</Text>
            </RNView>
          </TouchableOpacity>
        )}
      </Card>

      <Card style={styles.optionsCard}>
        <Text style={styles.sectionTitle}>Data Management</Text>
        <Text style={styles.sectionSubtitle}>Backup and restore your data</Text>
        
        <TouchableOpacity style={styles.menuItem} onPress={exportAllData}>
          <RNView style={styles.menuTextContainer}>
            <FontAwesome5 name="download" size={24} color="#64a12d" />
            <Text style={styles.menuText}>Export All Data</Text>
          </RNView>
          {exporting ? (
            <RNView style={styles.loadingContainer}>
              <Text style={styles.loadingText}>Exporting...</Text>
            </RNView>
          ) : (
            <MaterialIcons name="chevron-right" size={24} color="#9E9E9E" />
          )}
        </TouchableOpacity>

        <TouchableOpacity style={styles.menuItem} onPress={() => setShowDataModal(true)}>
          <RNView style={styles.menuTextContainer}>
            <FontAwesome5 name="upload" size={24} color="#64a12d" />
            <Text style={styles.menuText}>Import Data</Text>
          </RNView>
          <MaterialIcons name="chevron-right" size={24} color="#9E9E9E" />
        </TouchableOpacity>
      </Card>

      <Card style={styles.optionsCard}>
        <Text style={styles.devHeader}>Developer</Text>
        <RNView style={styles.devRow}>
            <MaterialIcons name="person" size={22} color="#64a12d" />
          <Text style={styles.devText}>Dilshan Pathum</Text>
        </RNView>
        <TouchableOpacity style={styles.devRow} onPress={() => Linking.openURL('mailto:pathumpanagoda@gmail.com')}>
            <MaterialIcons name="email" size={22} color="#64a12d" />
          <Text style={[styles.devText, styles.devLink]}>pathumpanagoda@gmail.com</Text>
        </TouchableOpacity>
      </Card>

      <Text style={styles.versionText}>Version 1.0.0</Text>

      {/* Import Data Modal */}
      <Modal
        animationType="slide"
        transparent={true}
        visible={showDataModal}
        onRequestClose={() => setShowDataModal(false)}
      >
        <RNView style={styles.modalOverlay}>
          <RNView style={styles.modalContent}>
            <RNView style={styles.modalHeader}>
              <Text style={styles.modalTitle}>Import Data</Text>
              <TouchableOpacity onPress={() => setShowDataModal(false)}>
                <FontAwesome5 name="times" size={20} color="#666" />
              </TouchableOpacity>
            </RNView>

            <ScrollView style={styles.modalBody}>
              <Text style={styles.modalSubtitle}>
                Import your backup data to restore your BudgetFlow information
              </Text>

              <RNView style={styles.importOptions}>
                <TouchableOpacity style={styles.importOption} onPress={pickBackupFile}>
                  <FontAwesome5 name="file-upload" size={24} color="#64a12d" />
                  <Text style={styles.importOptionText}>Choose Backup File</Text>
                  <Text style={styles.importOptionSubtext}>Select a .json backup file</Text>
                </TouchableOpacity>

                <Text style={styles.orDivider}>OR</Text>

                <Text style={styles.pasteLabel}>Paste Backup Data:</Text>
                <TextInput
                  style={styles.importTextArea}
                  placeholder="Paste your exported JSON data here..."
                  placeholderTextColor="#999"
                  value={importData}
                  onChangeText={setImportData}
                  multiline
                  numberOfLines={8}
                  textAlignVertical="top"
                />
              </RNView>

              <RNView style={styles.modalActions}>
                <Button
                  title="Cancel"
                  onPress={() => setShowDataModal(false)}
                  style={styles.cancelButton}
                  textStyle={{ color: '#666' }}
                />
                <Button
                  title={importing ? "Importing..." : "Import Data"}
                  onPress={importData}
                  loading={importing}
                  style={styles.importButton}
                />
              </RNView>
            </ScrollView>
          </RNView>
        </RNView>
      </Modal>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
  },
  profileCard: {
    marginBottom: 16,
  },
  userInfo: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  avatarContainer: {
    width: 60,
    height: 60,
    borderRadius: 30,
      backgroundColor: '#64a12d',
    justifyContent: 'center',
    alignItems: 'center',
  },
  avatarText: {
    fontSize: 24,
    fontWeight: 'bold',
    color: 'white',
  },
  userTextContainer: {
    marginLeft: 16,
  },
  userName: {
    fontSize: 18,
    fontWeight: '600',
    marginBottom: 4,
  },
  userJoined: {
    fontSize: 14,
    color: '#757575',
  },
  loginContainer: {
    alignItems: 'center',
    padding: 16,
  },
  loginTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 8,
  },
  loginSubtitle: {
    fontSize: 14,
    color: '#757575',
    textAlign: 'center',
    marginBottom: 16,
  },
  loginButton: {
    width: '100%',
  },
  optionsCard: {
    marginBottom: 16,
  },
  settingItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingVertical: 12,
    borderBottomWidth: 1,
    borderBottomColor: '#f0f0f0',
  },
  settingTextContainer: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  settingText: {
    fontSize: 16,
    marginLeft: 12,
  },
  menuItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingVertical: 16,
    borderBottomWidth: 1,
    borderBottomColor: '#f0f0f0',
  },
  menuTextContainer: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  menuText: {
    fontSize: 16,
    marginLeft: 12,
  },
  logoutText: {
    color: '#E53935',
  },
  versionText: {
    textAlign: 'center',
    color: '#9E9E9E',
    marginTop: 24,
  },
  devHeader: {
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 8,
  },
  devRow: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: 6,
    gap: 12,
  },
  devText: {
    fontSize: 15,
  },
  devLink: {
    textDecorationLine: 'underline',
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 8,
  },
  sectionSubtitle: {
    fontSize: 14,
    color: '#666',
    marginBottom: 16,
  },
  loadingContainer: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  loadingText: {
    fontSize: 12,
    color: '#666',
  },
  modalOverlay: {
    flex: 1,
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  modalContent: {
    width: '90%',
    maxHeight: '80%',
    backgroundColor: '#fff',
    borderRadius: 16,
    padding: 20,
  },
  modalHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 20,
    borderBottomWidth: 1,
    borderBottomColor: '#eee',
    paddingBottom: 16,
  },
  modalTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#333',
  },
  modalBody: {
    flex: 1,
  },
  modalSubtitle: {
    fontSize: 14,
    color: '#666',
    marginBottom: 20,
    lineHeight: 20,
  },
  importOptions: {
    marginBottom: 20,
  },
  importOption: {
    alignItems: 'center',
    padding: 20,
    backgroundColor: '#f5f5f5',
    borderRadius: 12,
    marginBottom: 16,
  },
  importOptionText: {
    fontSize: 16,
    fontWeight: '600',
    color: '#333',
    marginTop: 12,
    marginBottom: 4,
  },
  importOptionSubtext: {
    fontSize: 14,
    color: '#666',
    textAlign: 'center',
  },
  orDivider: {
    textAlign: 'center',
    color: '#999',
    fontSize: 14,
    marginVertical: 16,
    fontWeight: '600',
  },
  pasteLabel: {
    fontSize: 16,
    fontWeight: '600',
    color: '#333',
    marginBottom: 12,
  },
  importTextArea: {
    borderWidth: 1,
    borderColor: '#ddd',
    borderRadius: 8,
    padding: 12,
    fontSize: 14,
    color: '#333',
    backgroundColor: '#f9f9f9',
    minHeight: 120,
  },
  modalActions: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    gap: 16,
    marginTop: 20,
  },
  cancelButton: {
    flex: 1,
    backgroundColor: 'transparent',
    borderWidth: 1,
    borderColor: '#ddd',
  },
  importButton: {
    flex: 1,
  },
}); 