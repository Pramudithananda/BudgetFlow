import React, { useState } from 'react';
import { 
  View, 
  Modal, 
  TouchableOpacity, 
  StyleSheet, 
  ScrollView,
  TouchableWithoutFeedback 
} from 'react-native';
import { Text } from './Themed';
import { FontAwesome5 } from '@expo/vector-icons';
import Button from './Button';
import { useTheme } from '../context/theme';

export default function FilterModal({ 
  visible, 
  onClose, 
  onApply, 
  categories = [], 
  funders = [],
  statuses = ['Outstanding', 'Pending', 'Received', 'Spent'],
  initialFilters = {}
}) {
  const { colors, isDarkMode } = useTheme();
  const [filters, setFilters] = useState(initialFilters);

  const handleFilterChange = (type, value) => {
    setFilters(prev => ({
      ...prev,
      [type]: prev[type] === value ? null : value
    }));
  };

  const handleApply = () => {
    onApply(filters);
    onClose();
  };

  const handleReset = () => {
    setFilters({});
    onApply({});
    onClose();
  };

  const isFilterActive = (type, value) => filters[type] === value;

  return (
    <Modal
      visible={visible}
      transparent
      animationType="slide"
      onRequestClose={onClose}
    >
      <TouchableWithoutFeedback onPress={onClose}>
        <View style={styles.overlay}>
          <TouchableWithoutFeedback>
            <View style={[styles.modal, { backgroundColor: colors.background }]}>
              <View style={styles.header}>
                <Text style={[styles.title, { color: colors.text }]}>Filter Expenses</Text>
                <TouchableOpacity onPress={onClose} style={styles.closeButton}>
                  <FontAwesome5 name="times" size={20} color={colors.text} />
                </TouchableOpacity>
              </View>

              <ScrollView style={styles.content}>
                {/* Status Filter */}
                <View style={styles.section}>
                  <Text style={[styles.sectionTitle, { color: colors.text }]}>Status</Text>
                  <View style={styles.chipContainer}>
                    {statuses.map((status) => (
                      <TouchableOpacity
                        key={status}
                        style={[
                          styles.chip,
                          isFilterActive('status', status) && { backgroundColor: colors.primary }
                        ]}
                        onPress={() => handleFilterChange('status', status)}
                      >
                        <Text style={[
                          styles.chipText,
                          { color: isFilterActive('status', status) ? '#fff' : colors.text }
                        ]}>
                          {status}
                        </Text>
                      </TouchableOpacity>
                    ))}
                  </View>
                </View>

                {/* Category Filter */}
                {categories.length > 0 && (
                  <View style={styles.section}>
                    <Text style={[styles.sectionTitle, { color: colors.text }]}>Category</Text>
                    <View style={styles.chipContainer}>
                      {categories.map((category) => (
                        <TouchableOpacity
                          key={category.id}
                          style={[
                            styles.chip,
                            isFilterActive('categoryId', category.id) && { backgroundColor: colors.primary }
                          ]}
                          onPress={() => handleFilterChange('categoryId', category.id)}
                        >
                          <Text style={[
                            styles.chipText,
                            { color: isFilterActive('categoryId', category.id) ? '#fff' : colors.text }
                          ]}>
                            {category.name}
                          </Text>
                        </TouchableOpacity>
                      ))}
                    </View>
                  </View>
                )}

                {/* Funder Filter */}
                {funders.length > 0 && (
                  <View style={styles.section}>
                    <Text style={[styles.sectionTitle, { color: colors.text }]}>Funder</Text>
                    <View style={styles.chipContainer}>
                      {funders.map((funder) => (
                        <TouchableOpacity
                          key={funder.id}
                          style={[
                            styles.chip,
                            isFilterActive('funderId', funder.id) && { backgroundColor: colors.primary }
                          ]}
                          onPress={() => handleFilterChange('funderId', funder.id)}
                        >
                          <Text style={[
                            styles.chipText,
                            { color: isFilterActive('funderId', funder.id) ? '#fff' : colors.text }
                          ]}>
                            {funder.name}
                          </Text>
                        </TouchableOpacity>
                      ))}
                    </View>
                  </View>
                )}

                {/* Amount Range Filter */}
                <View style={styles.section}>
                  <Text style={[styles.sectionTitle, { color: colors.text }]}>Amount Range</Text>
                  <View style={styles.chipContainer}>
                    {[
                      { label: 'Under Rs. 10,000', value: 'under_10k' },
                      { label: 'Rs. 10,000 - 50,000', value: '10k_50k' },
                      { label: 'Rs. 50,000 - 100,000', value: '50k_100k' },
                      { label: 'Over Rs. 100,000', value: 'over_100k' }
                    ].map((range) => (
                      <TouchableOpacity
                        key={range.value}
                        style={[
                          styles.chip,
                          isFilterActive('amountRange', range.value) && { backgroundColor: colors.primary }
                        ]}
                        onPress={() => handleFilterChange('amountRange', range.value)}
                      >
                        <Text style={[
                          styles.chipText,
                          { color: isFilterActive('amountRange', range.value) ? '#fff' : colors.text }
                        ]}>
                          {range.label}
                        </Text>
                      </TouchableOpacity>
                    ))}
                  </View>
                </View>
              </ScrollView>

              <View style={styles.footer}>
                <Button 
                  title="Reset" 
                  onPress={handleReset}
                  style={[styles.button, styles.resetButton]}
                  textStyle={{ color: colors.text }}
                />
                <Button 
                  title="Apply Filters" 
                  onPress={handleApply}
                  style={[styles.button, styles.applyButton]}
                />
              </View>
            </View>
          </TouchableWithoutFeedback>
        </View>
      </TouchableWithoutFeedback>
    </Modal>
  );
}

const styles = StyleSheet.create({
  overlay: {
    flex: 1,
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
    justifyContent: 'flex-end',
  },
  modal: {
    borderTopLeftRadius: 20,
    borderTopRightRadius: 20,
    maxHeight: '80%',
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 20,
    borderBottomWidth: 1,
    borderBottomColor: '#e0e0e0',
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
  },
  closeButton: {
    padding: 5,
  },
  content: {
    padding: 20,
  },
  section: {
    marginBottom: 24,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: '600',
    marginBottom: 12,
  },
  chipContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  chip: {
    paddingHorizontal: 16,
    paddingVertical: 8,
    borderRadius: 20,
    borderWidth: 1,
    borderColor: '#e0e0e0',
    backgroundColor: '#f5f5f5',
  },
  chipText: {
    fontSize: 14,
  },
  footer: {
    flexDirection: 'row',
    padding: 20,
    gap: 12,
    borderTopWidth: 1,
    borderTopColor: '#e0e0e0',
  },
  button: {
    flex: 1,
  },
  resetButton: {
    backgroundColor: 'transparent',
    borderWidth: 1,
    borderColor: '#e0e0e0',
  },
  applyButton: {
    backgroundColor: '#64a12d',
  },
});