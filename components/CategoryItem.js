import { StyleSheet, TouchableOpacity, View as RNView } from 'react-native';
import { Text, View } from './Themed';
import { MaterialIcons } from '@expo/vector-icons';
import { useTheme } from '../context/theme';

export default function CategoryItem({ 
  name, 
  totalExpenses,
  totalAmount,
  onPress, 
  style,
  color = '#64a12d'
}) {
  const { colors, isDarkMode } = useTheme();
  
  const formatCurrency = (amount) => {
    if (amount >= 100000) {
      return `Rs. ${(amount / 100000).toFixed(1)}L`;
    } else if (amount >= 1000) {
      return `Rs. ${(amount / 1000).toFixed(1)}K`;
    } else {
      return `Rs. ${amount.toLocaleString()}`;
    }
  };
  
  return (
    <TouchableOpacity onPress={onPress} activeOpacity={0.7}>
      <View style={[
        styles.container, 
        { 
          backgroundColor: colors.card,
          shadowColor: isDarkMode ? '#000' : '#000',
          borderColor: colors.border,
        },
        style
      ]}>
        <RNView style={styles.contentRow}>
          <RNView style={[styles.iconContainer, { backgroundColor: color + '20' }]}>
            <MaterialIcons name="category" size={20} color={color} />
          </RNView>
          <RNView style={styles.textContent}>
            <Text style={[styles.name, { color: colors.text }]}>{name}</Text>
            <Text style={[styles.expensesCount, { color: colors.text, opacity: 0.7 }]}>
              {totalExpenses} {totalExpenses === 1 ? 'expense' : 'expenses'}
            </Text>
          </RNView>
          <RNView style={styles.amountContainer}>
            <Text style={[styles.amount, { color: colors.primary }]}>{formatCurrency(totalAmount)}</Text>
            <MaterialIcons name="chevron-right" size={20} color={colors.text} style={{ opacity: 0.5 }} />
          </RNView>
        </RNView>
      </View>
    </TouchableOpacity>
  );
}

const styles = StyleSheet.create({
  container: {
    borderRadius: 12,
    padding: 12,
    marginVertical: 4,
    marginHorizontal: 16,
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.1,
    shadowRadius: 3,
    elevation: 2,
    borderWidth: 1,
  },
  contentRow: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  iconContainer: {
    width: 36,
    height: 36,
    borderRadius: 18,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  textContent: {
    flex: 1,
  },
  name: {
    fontSize: 15,
    fontWeight: '600',
    marginBottom: 2,
  },
  expensesCount: {
    fontSize: 12,
  },
  amountContainer: {
    alignItems: 'flex-end',
  },
  amount: {
    fontSize: 15,
    fontWeight: 'bold',
    marginBottom: 2,
  },
});