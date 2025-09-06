import React, { useState } from 'react';
import { StyleSheet, ScrollView, View as RNView, Alert, TextInput, TouchableOpacity } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router, useLocalSearchParams } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { useTheme } from '../../context/theme';
import { useData } from '../../context/DataContext';

const STATUS_OPTIONS = ['Pending', 'Spent', 'Available', 'Outstanding'];

export default function NewExpenseScreen() {
  const { colors, isDarkMode } = useTheme();
  const { addExpense, categories, funders } = useData();
  const { preSelectedCategory } = useLocalSearchParams();
  
  const [title, setTitle] = useState('');
  const [amount, setAmount] = useState('');
  const [description, setDescription] = useState('');
  const [selectedCategory, setSelectedCategory] = useState(preSelectedCategory || null);
  const [selectedStatus, setSelectedStatus] = useState('Pending');
  const [assignedTo, setAssignedTo] = useState('');
  const [date, setDate] = useState(new Date().toISOString().split('T')[0]);

  const handleSave = () => {
    if (!title.trim()) {
      Alert.alert('Error', 'Please enter an expense title');
      return;
    }

    if (!amount || isNaN(amount) || parseFloat(amount) <= 0) {
      Alert.alert('Error', 'Please enter a valid amount');
      return;
    }

    if (!selectedCategory) {
      Alert.alert('Error', 'Please select a category');
      return;
    }

    try {
      addExpense({
        title: title.trim(),
        amount: parseFloat(amount),
        description: description.trim(),
        categoryId: parseInt(selectedCategory),
        status: selectedStatus,
        assignedTo: assignedTo.trim(),
        date: date
      });
      
      Alert.alert('Success', 'Expense added successfully!', [
        { text: 'OK', onPress: () => router.back() }
      ]);
    } catch (error) {
      Alert.alert('Error', 'Failed to add expense. Please try again.');
    }
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
      flexDirection: 'row',
      alignItems: 'center',
    },
    backButton: {
      marginRight: 15,
    },
    headerTitle: {
      fontSize: 20,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
    },
    content: {
      padding: 20,
    },
    formCard: {
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
    formTitle: {
      fontSize: 18,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      marginBottom: 20,
    },
    input: {
      borderWidth: 1,
      borderColor: isDarkMode ? '#444' : '#ddd',
      borderRadius: 8,
      padding: 12,
      marginBottom: 16,
      fontSize: 16,
      backgroundColor: isDarkMode ? '#333' : '#fff',
      color: isDarkMode ? '#fff' : '#333',
    },
    section: {
      marginBottom: 20,
    },
    sectionTitle: {
      fontSize: 16,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      marginBottom: 12,
    },
    optionGrid: {
      flexDirection: 'row',
      flexWrap: 'wrap',
      justifyContent: 'space-between',
    },
    optionButton: {
      padding: 12,
      borderRadius: 8,
      marginBottom: 8,
      borderWidth: 1,
      borderColor: isDarkMode ? '#444' : '#ddd',
      backgroundColor: isDarkMode ? '#333' : '#fff',
      minWidth: '48%',
      alignItems: 'center',
    },
    selectedOption: {
      backgroundColor: '#64a12d',
      borderColor: '#64a12d',
    },
    optionText: {
      fontSize: 14,
      color: isDarkMode ? '#fff' : '#333',
    },
    selectedOptionText: {
      color: '#fff',
      fontWeight: 'bold',
    },
    buttonRow: {
      flexDirection: 'row',
      justifyContent: 'space-between',
      marginTop: 20,
    },
    button: {
      flex: 1,
      marginHorizontal: 8,
    },
    cancelButton: {
      backgroundColor: '#6c757d',
    },
  });

  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <TouchableOpacity 
          style={styles.backButton}
          onPress={() => router.back()}
        >
          <FontAwesome5 name="arrow-left" size={20} color={isDarkMode ? '#fff' : '#333'} />
        </TouchableOpacity>
        <Text style={styles.headerTitle}>Add New Expense</Text>
      </View>

      <ScrollView style={styles.content}>
        <Card style={styles.formCard}>
          <Text style={styles.formTitle}>Expense Details</Text>
          
          <TextInput
            style={styles.input}
            placeholder="Expense Title"
            placeholderTextColor={isDarkMode ? '#999' : '#666'}
            value={title}
            onChangeText={setTitle}
            maxLength={100}
          />
          
          <TextInput
            style={styles.input}
            placeholder="Amount (Rs.)"
            placeholderTextColor={isDarkMode ? '#999' : '#666'}
            value={amount}
            onChangeText={setAmount}
            keyboardType="numeric"
          />
          
          <TextInput
            style={[styles.input, { height: 80, textAlignVertical: 'top' }]}
            placeholder="Description (Optional)"
            placeholderTextColor={isDarkMode ? '#999' : '#666'}
            value={description}
            onChangeText={setDescription}
            multiline
            maxLength={200}
          />

          <TextInput
            style={styles.input}
            placeholder="Assigned To (Optional)"
            placeholderTextColor={isDarkMode ? '#999' : '#666'}
            value={assignedTo}
            onChangeText={setAssignedTo}
            maxLength={50}
          />

          <TextInput
            style={styles.input}
            placeholder="Date"
            placeholderTextColor={isDarkMode ? '#999' : '#666'}
            value={date}
            onChangeText={setDate}
          />

          <View style={styles.section}>
            <Text style={styles.sectionTitle}>Select Category</Text>
            <View style={styles.optionGrid}>
              {categories.map((category) => (
                <TouchableOpacity
                  key={category.id}
                  style={[
                    styles.optionButton,
                    selectedCategory === category.id.toString() && styles.selectedOption
                  ]}
                  onPress={() => setSelectedCategory(category.id.toString())}
                >
                  <Text style={[
                    styles.optionText,
                    selectedCategory === category.id.toString() && styles.selectedOptionText
                  ]}>
                    {category.name}
                  </Text>
                </TouchableOpacity>
              ))}
            </View>
          </View>

          <View style={styles.section}>
            <Text style={styles.sectionTitle}>Select Status</Text>
            <View style={styles.optionGrid}>
              {STATUS_OPTIONS.map((status) => (
                <TouchableOpacity
                  key={status}
                  style={[
                    styles.optionButton,
                    selectedStatus === status && styles.selectedOption
                  ]}
                  onPress={() => setSelectedStatus(status)}
                >
                  <Text style={[
                    styles.optionText,
                    selectedStatus === status && styles.selectedOptionText
                  ]}>
                    {status}
                  </Text>
                </TouchableOpacity>
              ))}
            </View>
          </View>

          <View style={styles.buttonRow}>
            <Button
              title="Cancel"
              onPress={() => router.back()}
              style={[styles.button, styles.cancelButton]}
            />
            <Button
              title="Save Expense"
              onPress={handleSave}
              style={styles.button}
            />
          </View>
        </Card>
      </ScrollView>
    </View>
  );
}