import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, Alert, ActivityIndicator, TextInput } from 'react-native';
import { Text, View } from '../../../components/Themed';
import { router, useLocalSearchParams } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../../components/Card';
import Button from '../../../components/Button';
import { useTheme } from '../../../context/theme';
import { useData } from '../../../context/DataContext';

export default function EditFunderScreen() {
  const { colors, isDarkMode } = useTheme();
  const { id } = useLocalSearchParams();
  const { getFunderById, updateFunder } = useData();
  
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [name, setName] = useState('');
  const [phone, setPhone] = useState('');
  const [email, setEmail] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);

  // Static data as fallback
  const staticFunders = [
    { id: 1, name: 'Sujith', phone: '+94 77 123 4567', email: 'sujith@example.com', totalAmount: 25000, status: 'Received' },
    { id: 2, name: 'Nirvan', phone: '+94 78 234 5678', email: 'nirvan@example.com', totalAmount: 15000, status: 'Received' },
    { id: 3, name: 'Welfare Funding', phone: '+94 11 345 6789', email: 'welfare@funding.org', totalAmount: 20000, status: 'Pending' }
  ];

  const getStaticFunderById = (funderId) => {
    return staticFunders.find(funder => String(funder.id) === String(funderId));
  };

  useEffect(() => {
    if (!id) {
      Alert.alert('Error', 'No funder ID provided');
      router.back();
      return;
    }

    const loadData = () => {
      try {
        setLoading(true);
        setError(null);

        // Get funder data from context or static data
        const funderData = getFunderById(id) || getStaticFunderById(id);
        if (!funderData) {
          setError('Funder not found');
          Alert.alert('Error', 'Funder not found');
          router.back();
          return;
        }

        setName(funderData.name);
        setPhone(funderData.phone || '');
        setEmail(funderData.email || '');
      } catch (error) {
        console.error('Error loading data:', error);
        setError('Could not load funder data');
        Alert.alert('Error', 'Could not load funder data. Please try again.');
      } finally {
        setLoading(false);
      }
    };

    loadData();
  }, [id]);

  const handleSubmit = async () => {
    if (isSubmitting) return;

    if (!name.trim()) {
      Alert.alert('Error', 'Please enter a funder name');
      return;
    }

    if (name.trim().length > 50) {
      Alert.alert('Error', 'Funder name cannot exceed 50 characters');
      return;
    }

    try {
      setIsSubmitting(true);
      setLoading(true);

      console.log('=== EDIT FUNDER SUBMIT DEBUG ===');
      console.log('Funder ID:', id);
      console.log('Form data:', {
        name: name.trim(),
        phone: phone.trim() || null,
        email: email.trim() || null,
      });

      // Update funder using DataContext
      await updateFunder(id, {
        name: name.trim(),
        phone: phone.trim() || null,
        email: email.trim() || null,
      });

      console.log('Update completed successfully');

      Alert.alert(
        '✅ Success!',
        `Funder "${name.trim()}" has been updated successfully!\n\nChanges have been saved and will appear across all screens.`,
        [
          { text: 'View Funder', onPress: () => router.back() },
          { text: 'Go to Funders', onPress: () => router.push('/(tabs)/funders') }
        ]
      );
    } catch (error) {
      console.error('Error updating funder:', error);
      Alert.alert('Error', 'Could not update funder. Please try again.');
    } finally {
      setIsSubmitting(false);
      setLoading(false);
    }
  };

  if (loading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={[styles.loadingText, { color: colors.text }]}>Loading funder...</Text>
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
        <Text style={[styles.title, { color: colors.text }]}>Edit Funder</Text>
        <Text style={[styles.subtitle, { color: colors.text }]}>
          Update funder information
        </Text>
      </RNView>

      {/* Form */}
      <Card style={styles.card}>
        <Text style={[styles.label, { color: colors.text }]}>Funder Name *</Text>
        <RNView style={[styles.inputContainer, { backgroundColor: colors.card }]}>
          <TextInput
            style={[styles.input, { color: colors.text }]}
            value={name}
            onChangeText={setName}
            placeholder="Enter funder name"
            placeholderTextColor={colors.text + '80'}
            autoCapitalize="words"
            autoCorrect={false}
          />
        </RNView>

        <Text style={[styles.label, { color: colors.text }]}>Phone (Optional)</Text>
        <RNView style={[styles.inputContainer, { backgroundColor: colors.card }]}>
          <TextInput
            style={[styles.input, { color: colors.text }]}
            value={phone}
            onChangeText={setPhone}
            placeholder="Enter phone number"
            placeholderTextColor={colors.text + '80'}
            keyboardType="phone-pad"
            autoCorrect={false}
          />
        </RNView>

        <Text style={[styles.label, { color: colors.text }]}>Email (Optional)</Text>
        <RNView style={[styles.inputContainer, { backgroundColor: colors.card }]}>
          <TextInput
            style={[styles.input, { color: colors.text }]}
            value={email}
            onChangeText={setEmail}
            placeholder="Enter email address"
            placeholderTextColor={colors.text + '80'}
            keyboardType="email-address"
            autoCapitalize="none"
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