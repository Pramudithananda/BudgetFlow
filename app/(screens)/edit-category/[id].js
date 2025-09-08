import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, Alert, ActivityIndicator } from 'react-native';
import { Text, View } from '../../../components/Themed';
import { router, useLocalSearchParams } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../../components/Card';
import Button from '../../../components/Button';
import { useTheme } from '../../../context/theme';
import { useData } from '../../../context/DataContext';

export default function EditCategoryScreen() {
  const { colors, isDarkMode } = useTheme();
  const { id } = useLocalSearchParams();
  const { getCategoryById, updateCategory } = useData();
  
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [name, setName] = useState('');
  const [description, setDescription] = useState('');
  const [color, setColor] = useState('#64a12d');
  const [isSubmitting, setIsSubmitting] = useState(false);

  // Static data as fallback
  const staticCategories = [
    { id: 1, name: 'Food & Beverages', color: '#64a12d', description: 'Meals, snacks, and drinks' },
    { id: 2, name: 'Decorations', color: '#ff6b6b', description: 'Party decorations and setup' },
    { id: 3, name: 'Transportation', color: '#4ecdc4', description: 'Travel and transport costs' },
    { id: 4, name: 'Other Expenses', color: '#45b7d1', description: 'Miscellaneous expenses' }
  ];

  const getStaticCategoryById = (categoryId) => {
    return staticCategories.find(cat => String(cat.id) === String(categoryId));
  };

  useEffect(() => {
    if (!id) {
      Alert.alert('Error', 'No category ID provided');
      router.back();
      return;
    }

    const loadData = () => {
      try {
        setLoading(true);
        setError(null);

        // Get category data from context or static data
        const categoryData = getCategoryById(id) || getStaticCategoryById(id);
        if (!categoryData) {
          setError('Category not found');
          Alert.alert('Error', 'Category not found');
          router.back();
          return;
        }

        setName(categoryData.name);
        setDescription(categoryData.description || '');
        setColor(categoryData.color || '#64a12d');
      } catch (error) {
        console.error('Error loading data:', error);
        setError('Could not load category data');
        Alert.alert('Error', 'Could not load category data. Please try again.');
      } finally {
        setLoading(false);
      }
    };

    loadData();
  }, [id]);

  const handleSubmit = async () => {
    if (isSubmitting) return;

    if (!name.trim()) {
      Alert.alert('Error', 'Please enter a category name');
      return;
    }

    if (name.trim().length > 50) {
      Alert.alert('Error', 'Category name cannot exceed 50 characters');
      return;
    }

    try {
      setIsSubmitting(true);
      setLoading(true);

      console.log('=== EDIT CATEGORY SUBMIT DEBUG ===');
      console.log('Category ID:', id);
      console.log('Form data:', {
        name: name.trim(),
        description: description.trim() || null,
        color: color,
      });

      // Update category using DataContext
      await updateCategory(id, {
        name: name.trim(),
        description: description.trim() || null,
        color: color,
      });

      console.log('Update completed successfully');

      Alert.alert(
        'Success',
        'Category updated successfully',
        [{ text: 'OK', onPress: () => router.back() }]
      );
    } catch (error) {
      console.error('Error updating category:', error);
      Alert.alert('Error', 'Could not update category. Please try again.');
    } finally {
      setIsSubmitting(false);
      setLoading(false);
    }
  };

  if (loading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={[styles.loadingText, { color: colors.text }]}>Loading category...</Text>
      </View>
    );
  }

  if (error) {
    return (
      <View style={styles.errorContainer}>
        <FontAwesome5 name="exclamation-triangle" size={48} color={colors.text} />
        <Text style={[styles.errorText, { color: colors.text }]}>{error}</Text>
        <Button
          title="Go Back"
          onPress={() => router.back()}
          style={styles.backButton}
        />
      </View>
    );
  }

  return (
    <ScrollView style={[styles.container, { backgroundColor: colors.background }]}>
      {/* Header */}
      <RNView style={styles.header}>
        <Text style={[styles.title, { color: colors.text }]}>Edit Category</Text>
        <Text style={[styles.subtitle, { color: colors.text }]}>
          Update category information
        </Text>
      </RNView>

      {/* Form */}
      <Card style={styles.card}>
        <Text style={[styles.label, { color: colors.text }]}>Category Name *</Text>
        <RNView style={[styles.inputContainer, { backgroundColor: colors.card }]}>
          <Text
            style={[styles.input, { color: colors.text }]}
            value={name}
            onChangeText={setName}
            placeholder="Enter category name"
            placeholderTextColor={colors.text + '80'}
          />
        </RNView>

        <Text style={[styles.label, { color: colors.text }]}>Description (Optional)</Text>
        <RNView style={[styles.inputContainer, { backgroundColor: colors.card }]}>
          <Text
            style={[styles.textArea, { color: colors.text }]}
            value={description}
            onChangeText={setDescription}
            placeholder="Enter category description"
            placeholderTextColor={colors.text + '80'}
            multiline
            numberOfLines={3}
          />
        </RNView>

        <Text style={[styles.label, { color: colors.text }]}>Color</Text>
        <RNView style={styles.colorContainer}>
          {[
            { name: 'Green', value: '#64a12d' },
            { name: 'Red', value: '#ff6b6b' },
            { name: 'Teal', value: '#4ecdc4' },
            { name: 'Blue', value: '#45b7d1' },
            { name: 'Purple', value: '#9b59b6' },
            { name: 'Orange', value: '#f39c12' }
          ].map((colorOption) => (
            <RNView
              key={colorOption.value}
              style={[
                styles.colorOption,
                { backgroundColor: colorOption.value },
                color === colorOption.value && styles.selectedColor
              ]}
              onTouchEnd={() => setColor(colorOption.value)}
            >
              {color === colorOption.value && (
                <FontAwesome5 name="check" size={16} color="white" />
              )}
            </RNView>
          ))}
        </RNView>
      </Card>

      {/* Action Buttons */}
      <Card style={styles.card}>
        <Button
          title="Cancel"
          onPress={() => router.back()}
          style={[styles.button, styles.cancelButton]}
          textStyle={styles.cancelButtonText}
        />
        <Button
          title={isSubmitting ? "Updating..." : "Save Changes"}
          onPress={handleSubmit}
          disabled={isSubmitting}
          style={[styles.button, styles.saveButton]}
        />
      </Card>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
  },
  loadingText: {
    marginTop: 16,
    fontSize: 16,
  },
  errorContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
  },
  errorText: {
    fontSize: 18,
    fontWeight: '600',
    marginTop: 16,
    marginBottom: 24,
    textAlign: 'center',
  },
  backButton: {
    paddingHorizontal: 24,
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
  inputContainer: {
    borderRadius: 8,
    padding: 12,
    marginBottom: 8,
  },
  input: {
    fontSize: 16,
    minHeight: 20,
  },
  textArea: {
    fontSize: 16,
    minHeight: 60,
    textAlignVertical: 'top',
  },
  colorContainer: {
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
    borderColor: '#333',
  },
  button: {
    marginVertical: 4,
  },
  cancelButton: {
    backgroundColor: 'transparent',
    borderWidth: 1,
    borderColor: '#ccc',
  },
  cancelButtonText: {
    color: '#666',
  },
  saveButton: {
    backgroundColor: '#007AFF',
  },
});