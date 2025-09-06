import React, { useState } from 'react';
import { StyleSheet, ScrollView, View as RNView, Alert, TextInput, TouchableOpacity, ActivityIndicator } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { useTheme } from '../../context/theme';
import { useData } from '../../context/DataContext';

const COLOR_OPTIONS = [
  '#64a12d', '#ff6b6b', '#4ecdc4', '#45b7d1', '#96ceb4',
  '#feca57', '#ff9ff3', '#54a0ff', '#5f27cd', '#00d2d3',
  '#ff9f43', '#10ac84', '#ee5a24', '#0984e3', '#6c5ce7'
];

export default function NewCategoryScreen() {
  const { colors, isDarkMode } = useTheme();
  const { addCategory } = useData();
  
  const [name, setName] = useState('');
  const [description, setDescription] = useState('');
  const [selectedColor, setSelectedColor] = useState('#64a12d');
  const [loading, setLoading] = useState(false);

  const handleSave = async () => {
    if (!name.trim()) {
      Alert.alert('Error', 'Please enter a category name');
      return;
    }

    setLoading(true);
    try {
      const categoryData = {
        name: name.trim(),
        description: description.trim(),
        color: selectedColor
      };
      
      console.log('Saving category data:', categoryData);
      const result = await addCategory(categoryData);
      console.log('Category save result:', result);
      
      Alert.alert('Success', 'Category added successfully!', [
        { text: 'OK', onPress: () => router.back() }
      ]);
    } catch (error) {
      console.error('Error adding category:', error);
      Alert.alert('Error', 'Failed to add category. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  return (
    <ScrollView style={[styles.container, { backgroundColor: colors.background }]}>
      {/* Header */}
      <RNView style={styles.header}>
        <Text style={[styles.title, { color: colors.text }]}>Add New Category</Text>
        <Text style={[styles.subtitle, { color: colors.text }]}>
          Create a new expense category
        </Text>
      </RNView>

      {/* Form */}
      <Card style={styles.card}>
        <Text style={[styles.label, { color: colors.text }]}>Category Name *</Text>
        <TextInput
          style={[styles.input, { 
            backgroundColor: colors.card, 
            color: colors.text, 
            borderColor: colors.border 
          }]}
          value={name}
          onChangeText={setName}
          placeholder="Enter category name"
          placeholderTextColor={colors.text + '80'}
        />

        <Text style={[styles.label, { color: colors.text }]}>Description</Text>
        <TextInput
          style={[styles.textArea, { 
            backgroundColor: colors.card, 
            color: colors.text, 
            borderColor: colors.border 
          }]}
          value={description}
          onChangeText={setDescription}
          placeholder="Enter category description (optional)"
          placeholderTextColor={colors.text + '80'}
          multiline
          numberOfLines={3}
        />

        <Text style={[styles.label, { color: colors.text }]}>Color</Text>
        <RNView style={styles.colorGrid}>
          {COLOR_OPTIONS.map((color) => (
            <TouchableOpacity
              key={color}
              style={[
                styles.colorOption,
                { backgroundColor: color },
                selectedColor === color && styles.selectedColor
              ]}
              onPress={() => setSelectedColor(color)}
            >
              {selectedColor === color && (
                <FontAwesome5 name="check" size={16} color="#fff" />
              )}
            </TouchableOpacity>
          ))}
        </RNView>
      </Card>

      {/* Action Buttons */}
      <RNView style={styles.buttonContainer}>
        <Button
          title="Cancel"
          onPress={() => router.back()}
          style={[styles.button, styles.cancelButton]}
        />
        <Button
          title={loading ? "Adding..." : "Add Category"}
          onPress={handleSave}
          style={[styles.button, styles.saveButton]}
          disabled={loading}
        />
      </RNView>

      {loading && (
        <RNView style={styles.loadingOverlay}>
          <ActivityIndicator size="large" color={colors.primary} />
          <Text style={[styles.loadingText, { color: colors.text }]}>Adding category...</Text>
        </RNView>
      )}
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  header: {
    padding: 20,
    paddingBottom: 10,
  },
  title: {
    fontSize: 28,
    fontWeight: 'bold',
    marginBottom: 4,
  },
  subtitle: {
    fontSize: 16,
    opacity: 0.7,
  },
  card: {
    margin: 16,
    marginTop: 0,
  },
  label: {
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 8,
    marginTop: 16,
  },
  input: {
    borderWidth: 1,
    borderRadius: 8,
    padding: 12,
    fontSize: 16,
    marginBottom: 8,
  },
  textArea: {
    borderWidth: 1,
    borderRadius: 8,
    padding: 12,
    fontSize: 16,
    marginBottom: 8,
    textAlignVertical: 'top',
    minHeight: 80,
  },
  colorGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    marginTop: 8,
  },
  colorOption: {
    width: 40,
    height: 40,
    borderRadius: 20,
    margin: 4,
    justifyContent: 'center',
    alignItems: 'center',
    borderWidth: 2,
    borderColor: 'transparent',
  },
  selectedColor: {
    borderColor: '#fff',
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.25,
    shadowRadius: 3.84,
    elevation: 5,
  },
  buttonContainer: {
    flexDirection: 'row',
    padding: 16,
    gap: 12,
  },
  button: {
    flex: 1,
    paddingVertical: 12,
  },
  cancelButton: {
    backgroundColor: '#6c757d',
  },
  saveButton: {
    backgroundColor: '#64a12d',
  },
  loadingOverlay: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    backgroundColor: 'rgba(0,0,0,0.5)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  loadingText: {
    marginTop: 16,
    fontSize: 16,
  },
});