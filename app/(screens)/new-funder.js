import React, { useState } from 'react';
import { StyleSheet, ScrollView, View as RNView, Alert, TextInput, ActivityIndicator } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { useTheme } from '../../context/theme';
import { useData } from '../../context/DataContext';

export default function NewFunderScreen() {
  const { colors, isDarkMode } = useTheme();
  const { addFunder } = useData();
  
  const [name, setName] = useState('');
  const [phone, setPhone] = useState('');
  const [email, setEmail] = useState('');
  const [loading, setLoading] = useState(false);

  const handleSave = async () => {
    if (!name.trim()) {
      Alert.alert('Error', 'Please enter a funder name');
      return;
    }

    setLoading(true);
    try {
      const funderData = {
        name: name.trim(),
        phone: phone.trim(),
        email: email.trim()
      };
      
      console.log('Saving funder data:', funderData);
      const result = await addFunder(funderData);
      console.log('Funder save result:', result);
      
      Alert.alert('Success', 'Funder added successfully!', [
        { text: 'OK', onPress: () => {
          console.log('Navigating back to funders tab');
          // Force navigation to funders tab
          router.replace('/(tabs)/funders');
        }}
      ]);
    } catch (error) {
      console.error('Error adding funder:', error);
      Alert.alert('Error', 'Failed to add funder. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  return (
    <ScrollView style={[styles.container, { backgroundColor: colors.background }]}>
      {/* Header */}
      <RNView style={styles.header}>
        <Text style={[styles.title, { color: colors.text }]}>Add New Funder</Text>
        <Text style={[styles.subtitle, { color: colors.text }]}>
          Add a new funding source
        </Text>
      </RNView>

      {/* Form */}
      <Card style={styles.card}>
        <Text style={[styles.label, { color: colors.text }]}>Funder Name *</Text>
        <TextInput
          style={[styles.input, { 
            backgroundColor: colors.card, 
            color: colors.text, 
            borderColor: colors.border 
          }]}
          value={name}
          onChangeText={setName}
          placeholder="Enter funder name"
          placeholderTextColor={colors.text + '80'}
        />

        <Text style={[styles.label, { color: colors.text }]}>Phone Number</Text>
        <TextInput
          style={[styles.input, { 
            backgroundColor: colors.card, 
            color: colors.text, 
            borderColor: colors.border 
          }]}
          value={phone}
          onChangeText={setPhone}
          placeholder="Enter phone number (optional)"
          placeholderTextColor={colors.text + '80'}
          keyboardType="phone-pad"
        />

        <Text style={[styles.label, { color: colors.text }]}>Email Address</Text>
        <TextInput
          style={[styles.input, { 
            backgroundColor: colors.card, 
            color: colors.text, 
            borderColor: colors.border 
          }]}
          value={email}
          onChangeText={setEmail}
          placeholder="Enter email address (optional)"
          placeholderTextColor={colors.text + '80'}
          keyboardType="email-address"
          autoCapitalize="none"
        />
      </Card>

      {/* Action Buttons */}
      <RNView style={styles.buttonContainer}>
        <Button
          title="Cancel"
          onPress={() => router.back()}
          style={[styles.button, styles.cancelButton]}
        />
        <Button
          title={loading ? "Adding..." : "Add Funder"}
          onPress={handleSave}
          style={[styles.button, styles.saveButton]}
          disabled={loading}
        />
      </RNView>

      {loading && (
        <RNView style={styles.loadingOverlay}>
          <ActivityIndicator size="large" color={colors.primary} />
          <Text style={[styles.loadingText, { color: colors.text }]}>Adding funder...</Text>
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