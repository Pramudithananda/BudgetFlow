import 'expo-router/entry';
import { AuthProvider } from './context/auth';
import { GestureHandlerRootView } from 'react-native-gesture-handler';
import { SafeAreaProvider } from 'react-native-safe-area-context';
import AppLayout from './app/_layout'; // Assuming _layout.js exports the layout
import { StatusBar } from 'expo-status-bar'; //test
import { useEffect } from 'react';
import { runDatabaseMigration } from './database-migration';

export default function App() {
  useEffect(() => {
    // Run database migration when app starts
    runDatabaseMigration().catch(console.error);
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
