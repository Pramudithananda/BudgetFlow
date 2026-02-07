import React from 'react';
import { View, TextInput, TouchableOpacity, StyleSheet } from 'react-native';
import { FontAwesome5 } from '@expo/vector-icons';
import { useTheme } from '../context/theme';

export default function SearchBar({ 
  value, 
  onChangeText, 
  placeholder = "Search...", 
  onClear,
  showClear = true 
}) {
  const { colors, isDarkMode } = useTheme();

  return (
    <View style={[styles.container, { backgroundColor: colors.card }]}>
      <View style={[styles.searchContainer, { backgroundColor: isDarkMode ? '#444' : '#f5f5f5' }]}>
        <FontAwesome5 
          name="search" 
          size={16} 
          color={isDarkMode ? '#ccc' : '#666'} 
          style={styles.searchIcon} 
        />
        <TextInput
          style={[
            styles.input, 
            { 
              color: colors.text,
              backgroundColor: 'transparent'
            }
          ]}
          value={value}
          onChangeText={onChangeText}
          placeholder={placeholder}
          placeholderTextColor={isDarkMode ? '#999' : '#666'}
        />
        {showClear && value && value.length > 0 && (
          <TouchableOpacity onPress={onClear} style={styles.clearButton}>
            <FontAwesome5 
              name="times-circle" 
              size={16} 
              color={isDarkMode ? '#ccc' : '#666'} 
            />
          </TouchableOpacity>
        )}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    paddingHorizontal: 16,
    paddingVertical: 8,
  },
  searchContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    borderRadius: 25,
    paddingHorizontal: 16,
    paddingVertical: 12,
    elevation: 2,
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.1,
    shadowRadius: 3.84,
  },
  searchIcon: {
    marginRight: 12,
  },
  input: {
    flex: 1,
    fontSize: 16,
    paddingVertical: 0,
  },
  clearButton: {
    padding: 4,
  },
});