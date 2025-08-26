import React from 'react';
import { View, TouchableOpacity, StyleSheet } from 'react-native';
import { Text } from './Themed';
import { FontAwesome5 } from '@expo/vector-icons';
import { useTheme } from '../context/theme';

export default function NotificationCard({ 
  type = 'info', 
  title, 
  message, 
  onPress, 
  onDismiss,
  showDismiss = true 
}) {
  const { colors, isDarkMode } = useTheme();

  const getIconAndColor = () => {
    switch (type) {
      case 'warning':
        return { icon: 'exclamation-triangle', color: '#FF9800' };
      case 'error':
        return { icon: 'times-circle', color: '#F44336' };
      case 'success':
        return { icon: 'check-circle', color: '#4CAF50' };
      case 'info':
      default:
        return { icon: 'info-circle', color: '#2196F3' };
    }
  };

  const { icon, color } = getIconAndColor();

  return (
    <TouchableOpacity 
      style={[
        styles.container, 
        { 
          backgroundColor: colors.card,
          borderLeftColor: color,
          borderLeftWidth: 4
        }
      ]}
      onPress={onPress}
      activeOpacity={0.8}
    >
      <View style={styles.content}>
        <View style={styles.iconContainer}>
          <FontAwesome5 name={icon} size={20} color={color} />
        </View>
        <View style={styles.textContainer}>
          <Text style={[styles.title, { color: colors.text }]}>{title}</Text>
          <Text style={[styles.message, { color: colors.textSecondary }]}>{message}</Text>
        </View>
        {showDismiss && onDismiss && (
          <TouchableOpacity onPress={onDismiss} style={styles.dismissButton}>
            <FontAwesome5 name="times" size={16} color={colors.textSecondary} />
          </TouchableOpacity>
        )}
      </View>
    </TouchableOpacity>
  );
}

const styles = StyleSheet.create({
  container: {
    marginHorizontal: 16,
    marginVertical: 8,
    borderRadius: 12,
    elevation: 2,
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.1,
    shadowRadius: 3.84,
  },
  content: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 16,
  },
  iconContainer: {
    marginRight: 16,
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(0,0,0,0.05)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  textContainer: {
    flex: 1,
  },
  title: {
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 4,
  },
  message: {
    fontSize: 14,
    lineHeight: 20,
  },
  dismissButton: {
    padding: 8,
    marginLeft: 8,
  },
});