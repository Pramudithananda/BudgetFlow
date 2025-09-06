import { useState } from 'react';
import { StyleSheet, ScrollView, View as RNView, Alert, TextInput, TouchableOpacity } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { useTheme } from '../../context/theme';
import { useData } from '../../context/DataContext';

export default function FundersScreen() {
  const { colors, isDarkMode } = useTheme();
  
  // Safe data access with fallbacks
  let funders = [];
  let addFunder = () => {};
  let updateFunder = () => {};
  let deleteFunder = () => {};
  
  try {
    const data = useData();
    funders = data.funders || [];
    addFunder = data.addFunder || addFunder;
    updateFunder = data.updateFunder || updateFunder;
    deleteFunder = data.deleteFunder || deleteFunder;
  } catch (error) {
    console.warn('Error accessing data context:', error);
  }
  
  const [showAddForm, setShowAddForm] = useState(false);
  const [newFunderName, setNewFunderName] = useState('');
  const [newFunderPhone, setNewFunderPhone] = useState('');
  const [newFunderEmail, setNewFunderEmail] = useState('');

  const handleAddFunder = () => {
    if (!newFunderName.trim()) {
      Alert.alert('Error', 'Please enter a funder name');
      return;
    }
    
    try {
      addFunder({
        name: newFunderName.trim(),
        phone: newFunderPhone.trim(),
        email: newFunderEmail.trim(),
        totalAmount: 0,
        status: 'Pending'
      });
      
      Alert.alert('Success', 'Funder added successfully!');
      setNewFunderName('');
      setNewFunderPhone('');
      setNewFunderEmail('');
      setShowAddForm(false);
    } catch (error) {
      Alert.alert('Error', 'Failed to add funder. Please try again.');
    }
  };

  const handleDeleteFunder = (funderId, funderName) => {
    Alert.alert(
      'Delete Funder',
      `Are you sure you want to delete "${funderName}"?`,
      [
        { text: 'Cancel', style: 'cancel' },
        { 
          text: 'Delete', 
          style: 'destructive',
          onPress: () => {
            try {
              deleteFunder(funderId);
              Alert.alert('Success', 'Funder deleted successfully');
            } catch (error) {
              Alert.alert('Error', 'Failed to delete funder. Please try again.');
            }
          }
        }
      ]
    );
  };

  const getStatusColor = (status) => {
    switch (status) {
      case 'Spent': return '#ff4757';
      case 'Available': return '#2ed573';
      case 'Pending': return '#ff6b6b';
      default: return colors.text;
    }
  };

  return (
    <ScrollView 
      style={[styles.container, { backgroundColor: colors.background }]}
    >
      <Card style={styles.card}>
        <RNView style={styles.cardHeader}>
          <Text style={[styles.cardTitle, { color: colors.text }]}>Funders</Text>
          <Button
            title="Add Funder"
            onPress={() => setShowAddForm(!showAddForm)}
            style={styles.addButton}
          />
        </RNView>

        {/* Add Funder Form */}
        {showAddForm && (
          <Card style={[styles.formCard, { backgroundColor: colors.card }]}>
            <Text style={[styles.formTitle, { color: colors.text }]}>Add New Funder</Text>
            
            <TextInput
              style={[styles.input, { 
                backgroundColor: colors.background, 
                color: colors.text, 
                borderColor: colors.border 
              }]}
              placeholder="Funder Name"
              placeholderTextColor={colors.text + '80'}
              value={newFunderName}
              onChangeText={setNewFunderName}
            />
            
            <TextInput
              style={[styles.input, { 
                backgroundColor: colors.background, 
                color: colors.text, 
                borderColor: colors.border 
              }]}
              placeholder="Phone (Optional)"
              placeholderTextColor={colors.text + '80'}
              value={newFunderPhone}
              onChangeText={setNewFunderPhone}
              keyboardType="phone-pad"
            />
            
            <TextInput
              style={[styles.input, { 
                backgroundColor: colors.background, 
                color: colors.text, 
                borderColor: colors.border 
              }]}
              placeholder="Email (Optional)"
              placeholderTextColor={colors.text + '80'}
              value={newFunderEmail}
              onChangeText={setNewFunderEmail}
              keyboardType="email-address"
              autoCapitalize="none"
            />
            
            <RNView style={styles.formButtons}>
              <Button
                title="Cancel"
                onPress={() => {
                  setShowAddForm(false);
                  setNewFunderName('');
                  setNewFunderPhone('');
                  setNewFunderEmail('');
                }}
                style={[styles.formButton, styles.cancelButton]}
              />
              <Button
                title="Add Funder"
                onPress={handleAddFunder}
                style={[styles.formButton, styles.addButton]}
              />
            </RNView>
          </Card>
        )}

        {/* Funders List */}
        {funders.length > 0 ? (
          funders.map((funder) => (
            <RNView key={funder.id} style={styles.funderContainer}>
              <TouchableOpacity
                style={[styles.funderItem, { 
                  backgroundColor: colors.card, 
                  borderColor: colors.border 
                }]}
              >
                <RNView style={styles.funderHeader}>
                  <RNView style={styles.funderInfo}>
                    <Text style={[styles.funderName, { color: colors.text }]}>{funder.name}</Text>
                    <Text style={[styles.funderAmount, { color: colors.text }]}>
                      Rs. {funder.totalAmount.toLocaleString()}
                    </Text>
                  </RNView>
                  <RNView style={[styles.statusBadge, { backgroundColor: getStatusColor(funder.status) + '20' }]}>
                    <Text style={[styles.statusText, { color: getStatusColor(funder.status) }]}>
                      {funder.status}
                    </Text>
                  </RNView>
                </RNView>
                
                {funder.phone && (
                  <RNView style={styles.contactInfo}>
                    <FontAwesome5 name="phone" size={12} color={colors.text} style={styles.contactIcon} />
                    <Text style={[styles.contactText, { color: colors.text }]}>{funder.phone}</Text>
                  </RNView>
                )}
                
                {funder.email && (
                  <RNView style={styles.contactInfo}>
                    <FontAwesome5 name="envelope" size={12} color={colors.text} style={styles.contactIcon} />
                    <Text style={[styles.contactText, { color: colors.text }]}>{funder.email}</Text>
                  </RNView>
                )}
              </TouchableOpacity>
              <TouchableOpacity
                style={[styles.deleteButton, { backgroundColor: '#e74c3c' }]}
                onPress={() => handleDeleteFunder(funder.id, funder.name)}
              >
                <FontAwesome5 name="trash" size={16} color="#fff" />
              </TouchableOpacity>
            </RNView>
          ))
        ) : (
          <RNView style={styles.emptyContainer}>
            <FontAwesome5 name="users" size={48} color={colors.text} style={styles.emptyIcon} />
            <Text style={[styles.emptyTitle, { color: colors.text }]}>No funders yet</Text>
            <Text style={[styles.emptySubtitle, { color: colors.text }]}>
              Add funders to track your funding sources
            </Text>
            <Button
              title="Add Your First Funder"
              onPress={() => setShowAddForm(true)}
              style={styles.emptyButton}
            />
          </RNView>
        )}
      </Card>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
  },
  card: {
    marginBottom: 16,
    padding: 16,
  },
  cardHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 16,
  },
  cardTitle: {
    fontSize: 18,
    fontWeight: 'bold',
  },
  addButton: {
    paddingHorizontal: 12,
    paddingVertical: 6,
  },
  formCard: {
    marginBottom: 16,
    padding: 16,
  },
  formTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 16,
  },
  input: {
    borderWidth: 1,
    borderRadius: 8,
    padding: 12,
    marginBottom: 12,
    fontSize: 16,
  },
  formButtons: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginTop: 8,
  },
  formButton: {
    flex: 1,
    marginHorizontal: 4,
  },
  cancelButton: {
    backgroundColor: '#6c757d',
  },
  funderContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
  },
  funderItem: {
    flex: 1,
    padding: 16,
    borderRadius: 8,
    borderWidth: 1,
    marginRight: 10,
  },
  deleteButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
  },
  funderHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 8,
  },
  funderInfo: {
    flex: 1,
  },
  funderName: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 4,
  },
  funderAmount: {
    fontSize: 16,
    fontWeight: '600',
  },
  statusBadge: {
    paddingHorizontal: 8,
    paddingVertical: 4,
    borderRadius: 12,
  },
  statusText: {
    fontSize: 12,
    fontWeight: 'bold',
  },
  contactInfo: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 4,
  },
  contactIcon: {
    marginRight: 8,
    opacity: 0.7,
  },
  contactText: {
    fontSize: 14,
    opacity: 0.8,
  },
  emptyContainer: {
    alignItems: 'center',
    paddingVertical: 40,
  },
  emptyIcon: {
    marginBottom: 16,
    opacity: 0.5,
  },
  emptyTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 8,
  },
  emptySubtitle: {
    fontSize: 14,
    opacity: 0.7,
    textAlign: 'center',
    marginBottom: 20,
  },
  emptyButton: {
    paddingHorizontal: 20,
    paddingVertical: 10,
  },
});