import 'expo-router/entry';
import { AuthProvider } from './context/auth';
import { GestureHandlerRootView } from 'react-native-gesture-handler';
import { SafeAreaProvider } from 'react-native-safe-area-context';
import AppLayout from './app/_layout';
import { StatusBar } from 'expo-status-bar';
import { runDatabaseMigration } from './database-migration';
import { useEffect } from 'react';

export default function App() {
  useEffect(() => {
    // Run database migration on app start
    runDatabaseMigration()
      .then(() => {
        console.log('Database migration completed successfully');
      })
      .catch((error) => {
        console.error('Database migration failed:', error);
      });
  }, []);

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
