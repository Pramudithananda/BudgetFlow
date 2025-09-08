import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, Alert, ActivityIndicator, TextInput } from 'react-native';
import { Text, View } from '../../../components/Themed';
import { router, useLocalSearchParams } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../../components/Card';
import Button from '../../../components/Button';
import { useTheme } from '../../../context/theme';
import { useData } from '../../../context/DataContext';

export default function EditEventScreen() {
  const { colors, isDarkMode } = useTheme();
  const { id } = useLocalSearchParams();
  const { getEventById, updateEvent } = useData();
  
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [name, setName] = useState('');
  const [date, setDate] = useState('');
  const [category, setCategory] = useState('');
  const [budget, setBudget] = useState('');
  const [description, setDescription] = useState('');
  const [location, setLocation] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);

  // Static data as fallback
  const staticEvents = [
    { 
      id: 1, 
      name: 'Birthday Celebration', 
      date: '2024-10-01', 
      category: 'Conference',
      budget: 100000,
      description: 'Annual birthday celebration event',
      location: 'Colombo'
    }
  ];

  const getStaticEventById = (eventId) => {
    return staticEvents.find(event => String(event.id) === String(eventId));
  };

  useEffect(() => {
    if (!id) {
      Alert.alert('Error', 'No event ID provided');
      router.back();
      return;
    }

    const loadData = () => {
      try {
        setLoading(true);
        setError(null);

        // Get event data from context or static data
        const eventData = getEventById(id) || getStaticEventById(id);
        if (!eventData) {
          setError('Event not found');
          Alert.alert('Error', 'Event not found');
          router.back();
          return;
        }

        setName(eventData.name);
        setDate(eventData.date);
        setCategory(eventData.category);
        setBudget(eventData.budget.toString());
        setDescription(eventData.description || '');
        setLocation(eventData.location || '');
      } catch (error) {
        console.error('Error loading data:', error);
        setError('Could not load event data');
        Alert.alert('Error', 'Could not load event data. Please try again.');
      } finally {
        setLoading(false);
      }
    };

    loadData();
  }, [id]);

  const handleSubmit = async () => {
    if (isSubmitting) return;

    if (!name.trim()) {
      Alert.alert('Error', 'Please enter an event name');
      return;
    }

    if (!date.trim()) {
      Alert.alert('Error', 'Please enter an event date');
      return;
    }

    if (!category.trim()) {
      Alert.alert('Error', 'Please enter an event category');
      return;
    }

    const numBudget = parseFloat(budget);
    if (!budget || isNaN(numBudget) || numBudget <= 0) {
      Alert.alert('Error', 'Please enter a valid budget amount');
      return;
    }

    if (numBudget > 10000000) {
      Alert.alert('Error', 'Budget cannot exceed Rs. 10,000,000');
      return;
    }

    try {
      setIsSubmitting(true);
      setLoading(true);

      console.log('=== EDIT EVENT SUBMIT DEBUG ===');
      console.log('Event ID:', id);
      console.log('Form data:', {
        name: name.trim(),
        date: date.trim(),
        category: category.trim(),
        budget: numBudget,
        description: description.trim() || null,
        location: location.trim() || null,
      });

      // Update event using DataContext
      await updateEvent(id, {
        name: name.trim(),
        date: date.trim(),
        category: category.trim(),
        budget: numBudget,
        description: description.trim() || null,
        location: location.trim() || null,
      });

      console.log('Update completed successfully');

      Alert.alert(
        'Success',
        'Event updated successfully',
        [{ text: 'OK', onPress: () => router.back() }]
      );
    } catch (error) {
      console.error('Error updating event:', error);
      Alert.alert('Error', 'Could not update event. Please try again.');
    } finally {
      setIsSubmitting(false);
      setLoading(false);
    }
  };

  if (loading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={[styles.loadingText, { color: colors.text }]}>Loading event...</Text>
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
        <Text style={[styles.title, { color: colors.text }]}>Edit Event</Text>
        <Text style={[styles.subtitle, { color: colors.text }]}>
          Update event information
        </Text>
      </RNView>

      {/* Form */}
      <Card style={styles.card}>
        <Text style={[styles.label, { color: colors.text }]}>Event Name *</Text>
        <RNView style={[styles.inputContainer, { backgroundColor: colors.card }]}>
          <TextInput
            style={[styles.input, { color: colors.text }]}
            value={name}
            onChangeText={setName}
            placeholder="Enter event name"
            placeholderTextColor={colors.text + '80'}
            autoCapitalize="words"
            autoCorrect={false}
          />
        </RNView>

        <Text style={[styles.label, { color: colors.text }]}>Date *</Text>
        <RNView style={[styles.inputContainer, { backgroundColor: colors.card }]}>
          <TextInput
            style={[styles.input, { color: colors.text }]}
            value={date}
            onChangeText={setDate}
            placeholder="YYYY-MM-DD"
            placeholderTextColor={colors.text + '80'}
            autoCorrect={false}
          />
        </RNView>

        <Text style={[styles.label, { color: colors.text }]}>Category *</Text>
        <RNView style={[styles.inputContainer, { backgroundColor: colors.card }]}>
          <TextInput
            style={[styles.input, { color: colors.text }]}
            value={category}
            onChangeText={setCategory}
            placeholder="Enter event category"
            placeholderTextColor={colors.text + '80'}
            autoCapitalize="words"
            autoCorrect={false}
          />
        </RNView>

        <Text style={[styles.label, { color: colors.text }]}>Budget (Rs.) *</Text>
        <RNView style={[styles.inputContainer, { backgroundColor: colors.card }]}>
          <TextInput
            style={[styles.input, { color: colors.text }]}
            value={budget}
            onChangeText={setBudget}
            placeholder="Enter budget amount"
            placeholderTextColor={colors.text + '80'}
            keyboardType="numeric"
            autoCorrect={false}
          />
        </RNView>

        <Text style={[styles.label, { color: colors.text }]}>Description (Optional)</Text>
        <RNView style={[styles.inputContainer, { backgroundColor: colors.card }]}>
          <TextInput
            style={[styles.textArea, { color: colors.text }]}
            value={description}
            onChangeText={setDescription}
            placeholder="Enter event description"
            placeholderTextColor={colors.text + '80'}
            multiline
            numberOfLines={3}
            autoCapitalize="sentences"
            autoCorrect={true}
          />
        </RNView>

        <Text style={[styles.label, { color: colors.text }]}>Location (Optional)</Text>
        <RNView style={[styles.inputContainer, { backgroundColor: colors.card }]}>
          <TextInput
            style={[styles.input, { color: colors.text }]}
            value={location}
            onChangeText={setLocation}
            placeholder="Enter event location"
            placeholderTextColor={colors.text + '80'}
            autoCapitalize="words"
            autoCorrect={false}
          />
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