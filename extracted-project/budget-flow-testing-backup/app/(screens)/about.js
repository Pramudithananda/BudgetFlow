import { StyleSheet, ScrollView } from 'react-native';
import { Text, View } from '../../components/Themed';
import Card from '../../components/Card';
import Button from '../../components/Button';
import { router } from 'expo-router';
import { useTheme } from '../../context/theme';
import { getCurrentDatabase } from '../../services/databaseService';
import { useState, useEffect } from 'react';

export default function AboutScreen() {
  const { colors } = useTheme();
  const [currentDatabase, setCurrentDatabase] = useState('sqlite');

  useEffect(() => {
    setCurrentDatabase(getCurrentDatabase());
  }, []);

  return (
    <ScrollView style={[styles.container, { backgroundColor: colors.background }]}>
      <Card style={styles.card}>
        <Text style={styles.title}>About BudgetFlow</Text>
        <Text style={styles.paragraph}>BudgetFlow helps you track project funding, categories, and expenses with local SQLite storage for offline access.</Text>
        
        <Text style={styles.subtitle}>Current Database</Text>
        <Text style={styles.paragraph}>
          Currently using: <Text style={{ fontWeight: 'bold' }}>{currentDatabase.toUpperCase()}</Text>
        </Text>
        
        <Text style={styles.subtitle}>Key Features</Text>
        <Text style={styles.paragraph}>
          • Local expense & status tracking{"\n"}
          • Category & funder breakdowns{"\n"}
          • PDF report generation{"\n"}
          • Dark mode support{"\n"}
          • Offline-first with SQLite
        </Text>
        
        <Text style={styles.subtitle}>Database Migration</Text>
        <Text style={styles.paragraph}>
          If you have existing Firebase data, you can migrate it to SQLite for offline access.
        </Text>
        
        <Text style={styles.subtitle}>Developer</Text>
        <Text style={styles.paragraph}>Developed by Dilshan Pathum (pathumpanagoda@gmail.com).</Text>
        
        <View style={styles.buttonContainer}>
          <Button 
            title="Database Migration" 
            onPress={() => router.push('/(screens)/migration')} 
            style={styles.migrationButton}
          />
          <Button title="Back" variant="outline" onPress={()=> router.back()} style={styles.backBtn} />
        </View>
      </Card>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex:1 },
  card: { margin:16 },
  title: { fontSize:22, fontWeight:'bold', marginBottom:12 },
  subtitle: { fontSize:16, fontWeight:'600', marginTop:16, marginBottom:4 },
  paragraph: { fontSize:14, lineHeight:20 },
  buttonContainer: { marginTop:24 },
  migrationButton: { marginBottom:12 },
  backBtn: { marginTop:0 },
});
