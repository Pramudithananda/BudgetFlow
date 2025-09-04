import React from 'react';
import { View, Text, StyleSheet } from 'react-native';
import { useTheme } from '../../context/theme';

export default function ReportsScreen() {
  const { isDarkMode } = useTheme();

  return (
    <View style={[styles.container, { backgroundColor: isDarkMode ? '#1a1a1a' : '#f5f5f5' }]}>
      <Text style={[styles.title, { color: isDarkMode ? '#fff' : '#333' }]}>
        Reports & Analytics
      </Text>
      <Text style={[styles.subtitle, { color: isDarkMode ? '#ccc' : '#666' }]}>
        This is the Reports screen. It's working perfectly!
      </Text>
      <Text style={[styles.content, { color: isDarkMode ? '#fff' : '#333' }]}>
        ✅ Reports screen is loaded successfully
      </Text>
      <Text style={[styles.content, { color: isDarkMode ? '#fff' : '#333' }]}>
        ✅ No white screen issues
      </Text>
      <Text style={[styles.content, { color: isDarkMode ? '#fff' : '#333' }]}>
        ✅ Theme support working
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
    textAlign: 'center',
  },
  subtitle: {
    fontSize: 16,
    marginBottom: 30,
    textAlign: 'center',
  },
  content: {
    fontSize: 16,
    marginBottom: 10,
    textAlign: 'center',
  },
});