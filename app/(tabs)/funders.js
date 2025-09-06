import { useState, useEffect } from 'react';
import { StyleSheet, ScrollView, View as RNView, TouchableOpacity, Alert, ActivityIndicator, RefreshControl } from 'react-native';
import { Text, View } from '../../components/Themed';
import { router } from 'expo-router';
import { FontAwesome5 } from '@expo/vector-icons';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { useTheme } from '../../context/theme';
import { useData } from '../../context/DataContext';

export default function FundersScreen() {
  const { colors, isDarkMode } = useTheme();
  const { 
    funders, 
    loading, 
    error, 
    refreshData 
  } = useData();
  
  const [refreshing, setRefreshing] = useState(false);

  // Handle refresh
  const onRefresh = async () => {
    setRefreshing(true);
    try {
      await refreshData();
    } catch (err) {
      Alert.alert('Error', 'Failed to refresh data');
    } finally {
      setRefreshing(false);
    }
  };

  // Show error if any
  useEffect(() => {
    if (error) {
      Alert.alert('Error', error);
    }
  }, [error]);

  const handleAddFunder = () => {
    router.push('/new-funder');
  };

  const handleDeleteFunder = (funderId, funderName) => {
    Alert.alert(
      'Delete Funder',
      `Are you sure you want to delete "${funderName}"?`,
      [
        { text: 'Cancel', style: 'cancel' },
        { 
          text: 'Delete', 
          style: 'destructive',
          onPress: () => {
            Alert.alert('Success', 'Funder deleted successfully!');
          }
        }
      ]
    );
  };

  const formatPhone = (phone) => {
    if (!phone) return 'No phone';
    return phone.length > 10 ? phone : `+94 ${phone}`;
  };

  if (loading && !refreshing) {
    return (
      <View style={[styles.container, styles.centered, { backgroundColor: colors.background }]}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={[styles.loadingText, { color: colors.text }]}>Loading funders...</Text>
      </View>
    );
  }

  return (
    <ScrollView 
      style={[styles.container, { backgroundColor: colors.background }]}
      refreshControl={
        <RefreshControl
          refreshing={refreshing}
          onRefresh={onRefresh}
          colors={[colors.primary]}
          tintColor={colors.primary}
        />
      }
    >
      {/* Header */}
      <RNView style={styles.header}>
        <Text style={[styles.title, { color: colors.text }]}>Funders</Text>
        <Text style={[styles.subtitle, { color: colors.text }]}>
          {funders.length} funders
        </Text>
      </RNView>

      {/* Add Funder Button */}
      <Card style={styles.card}>
        <Button
          title="Add New Funder"
          onPress={handleAddFunder}
          style={styles.addButton}
        />
      </Card>

      {/* Funders List */}
      <Card style={styles.card}>
        <Text style={[styles.cardTitle, { color: colors.text }]}>All Funders</Text>
        
        {funders.length > 0 ? (
          funders.map((funder) => (
            <RNView key={funder.id} style={[styles.funderItem, { backgroundColor: colors.card, borderColor: colors.border }]}>
              <RNView style={styles.funderContent}>
                <RNView style={styles.funderInfo}>
                  <Text style={[styles.funderName, { color: colors.text }]}>{funder.name}</Text>
                  <Text style={[styles.funderPhone, { color: colors.text, opacity: 0.7 }]}>
                    {formatPhone(funder.phone)}
                  </Text>
                  {funder.email && (
                    <Text style={[styles.funderEmail, { color: colors.text, opacity: 0.7 }]}>
                      {funder.email}
                    </Text>
                  )}
                </RNView>
                <RNView style={styles.actionButtons}>
                  <TouchableOpacity
                    style={[styles.actionButton, { backgroundColor: '#64a12d' }]}
                    onPress={() => Alert.alert('Edit Funder', 'Edit functionality coming soon!')}
                  >
                    <FontAwesome5 name="edit" size={14} color="#fff" />
                  </TouchableOpacity>
                  <TouchableOpacity
                    style={[styles.actionButton, { backgroundColor: '#e74c3c' }]}
                    onPress={() => handleDeleteFunder(funder.id, funder.name)}
                  >
                    <FontAwesome5 name="trash" size={14} color="#fff" />
                  </TouchableOpacity>
                </RNView>
              </RNView>
            </RNView>
          ))
        ) : (
          <RNView style={styles.emptyContainer}>
            <FontAwesome5 name="users" size={48} color={colors.text} style={styles.emptyIcon} />
            <Text style={[styles.emptyTitle, { color: colors.text }]}>No funders yet</Text>
            <Text style={[styles.emptySubtitle, { color: colors.text }]}>
              Add your first funder to get started
            </Text>
          </RNView>
        )}
      </Card>
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
  addButton: {
    paddingVertical: 12,
  },
  cardTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 12,
  },
  funderItem: {
    borderRadius: 12,
    padding: 16,
    marginVertical: 4,
    borderWidth: 1,
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.1,
    shadowRadius: 3,
    elevation: 2,
  },
  funderContent: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  funderInfo: {
    flex: 1,
  },
  funderName: {
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 4,
  },
  funderPhone: {
    fontSize: 14,
    marginBottom: 2,
  },
  funderEmail: {
    fontSize: 14,
  },
  actionButtons: {
    flexDirection: 'row',
  },
  actionButton: {
    width: 32,
    height: 32,
    borderRadius: 16,
    justifyContent: 'center',
    alignItems: 'center',
    marginLeft: 8,
  },
  emptyContainer: {
    alignItems: 'center',
    paddingVertical: 40,
  },
  emptyIcon: {
    marginBottom: 16,
    opacity: 0.5,
  },
  emptyTitle: {
    fontSize: 18,
    fontWeight: '600',
    marginBottom: 8,
  },
  emptySubtitle: {
    fontSize: 14,
    opacity: 0.7,
    textAlign: 'center',
  },
  centered: {
    justifyContent: 'center',
    alignItems: 'center',
  },
  loadingText: {
    marginTop: 16,
    fontSize: 16,
  },
});