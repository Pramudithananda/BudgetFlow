import 'expo-router/entry';
import { AuthProvider } from './context/auth';
import { GestureHandlerRootView } from 'react-native-gesture-handler';
import { SafeAreaProvider } from 'react-native-safe-area-context';
import AppLayout from './app/_layout'; // Assuming _layout.js exports the layout
import { StatusBar } from 'expo-status-bar'; //test
import { useEffect, useState } from 'react';
import { runDatabaseMigration } from './database-migration'; // New import
import { View, Text } from 'react-native'; // Added View and Text import

export default function App() {
  const [dbReady, setDbReady] = useState(false);
  const [dbError, setDbError] = useState(null);

  useEffect(() => {
    // Run database migration when app starts
    console.log('App: Starting database migration...');
    runDatabaseMigration()
      .then(() => {
        console.log('App: Database migration completed successfully');
        setDbReady(true);
      })
      .catch((error) => {
        console.error('App: Database migration failed:', error);
        setDbError(error.message);
        // Still set dbReady to true so app can continue
        setDbReady(true);
      });
  }, []);

  if (!dbReady) {
    // Show loading state while database is initializing
    return (
      <GestureHandlerRootView style={{ flex: 1 }}>
        <SafeAreaProvider>
          <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center', backgroundColor: '#f5f5f5' }}>
            <Text style={{ fontSize: 18, color: '#333' }}>Initializing BudgetFlow...</Text>
            <Text style={{ fontSize: 14, color: '#666', marginTop: 10 }}>Please wait while we set up your database</Text>
          </View>
        </SafeAreaProvider>
      </GestureHandlerRootView>
    );
  }

  return (
    <GestureHandlerRootView style={{ flex: 1 }}>
      <SafeAreaProvider>
        <AuthProvider>
          <StatusBar style="auto" />
          <AppLayout />
        </AuthProvider>
      </SafeAreaProvider>
    </GestureHandlerRootView>
  );
}
