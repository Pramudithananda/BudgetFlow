import 'expo-router/entry';
import { AuthProvider } from './context/auth';
import { GestureHandlerRootView } from 'react-native-gesture-handler';
import { SafeAreaProvider } from 'react-native-safe-area-context';
import { StatusBar } from 'expo-status-bar';
import { useEffect } from 'react';
import { initDatabase } from './services/sqliteService';

export default function App() {
  useEffect(() => {
    // Initialize SQLite database when app starts
    initDatabase()
      .then(() => {
        console.log('Database initialized successfully');
      })
      .catch((error) => {
        console.error('Failed to initialize database:', error);
      });
  }, []);

  return (
    <GestureHandlerRootView style={{ flex: 1 }}>
      <SafeAreaProvider>
        <AuthProvider>
          <StatusBar style="auto" />
        </AuthProvider>
      </SafeAreaProvider>
    </GestureHandlerRootView>
  );
}
