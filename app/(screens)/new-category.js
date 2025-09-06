import React, { useState } from 'react';
import { StyleSheet, ScrollView, View as RNView, Alert, TextInput, TouchableOpacity } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { useTheme } from '../../context/theme';
import { useData } from '../../context/DataContext';

const COLORS = [
  '#64a12d', '#ff6b6b', '#4ecdc4', '#45b7d1', 
  '#f39c12', '#e74c3c', '#9b59b6', '#34495e',
  '#1abc9c', '#f1c40f', '#e67e22', '#95a5a6'
];

export default function NewCategoryScreen() {
  const { colors, isDarkMode } = useTheme();
  
  // Safe data access with fallbacks
  let addCategory = () => {};
  
  try {
    const data = useData();
    addCategory = data.addCategory || addCategory;
  } catch (error) {
    console.warn('Error accessing data context:', error);
  }
  
  const [name, setName] = useState('');
  const [description, setDescription] = useState('');
  const [selectedColor, setSelectedColor] = useState(COLORS[0]);

  const handleSave = () => {
    if (!name.trim()) {
      Alert.alert('Error', 'Please enter a category name');
      return;
    }

    console.log('Saving category with data:', {
      name: name.trim(),
      description: description.trim(),
      color: selectedColor
    });

    try {
      const result = addCategory({
        name: name.trim(),
        description: description.trim(),
        color: selectedColor
      });
      
      console.log('Category save result:', result);
      
      Alert.alert('Success', 'Category added successfully!', [
        { text: 'OK', onPress: () => router.back() }
      ]);
    } catch (error) {
      console.error('Error saving category:', error);
      Alert.alert('Error', 'Failed to add category. Please try again.');
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
    colorSection: {
      marginBottom: 20,
    },
    colorSectionTitle: {
      fontSize: 16,
      fontWeight: 'bold',
      color: isDarkMode ? '#fff' : '#333',
      marginBottom: 12,
    },
    colorGrid: {
      flexDirection: 'row',
      flexWrap: 'wrap',
      justifyContent: 'space-between',
    },
    colorOption: {
      width: 50,
      height: 50,
      borderRadius: 25,
      marginBottom: 10,
      borderWidth: 3,
      borderColor: 'transparent',
    },
    selectedColor: {
      borderColor: '#64a12d',
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
        <Text style={styles.headerTitle}>Add New Category</Text>
      </View>

      <ScrollView style={styles.content}>
        <Card style={styles.formCard}>
          <Text style={styles.formTitle}>Category Details</Text>
          
          <TextInput
            style={styles.input}
            placeholder="Category Name"
            placeholderTextColor={isDarkMode ? '#999' : '#666'}
            value={name}
            onChangeText={setName}
            maxLength={50}
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

          <View style={styles.colorSection}>
            <Text style={styles.colorSectionTitle}>Choose Color</Text>
            <View style={styles.colorGrid}>
              {COLORS.map((color) => (
                <TouchableOpacity
                  key={color}
                  style={[
                    styles.colorOption,
                    { backgroundColor: color },
                    selectedColor === color && styles.selectedColor
                  ]}
                  onPress={() => setSelectedColor(color)}
                />
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
              title="Save Category"
              onPress={handleSave}
              style={styles.button}
            />
          </View>
        </Card>
      </ScrollView>
    </View>
  );
}