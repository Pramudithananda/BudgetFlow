import 'expo-router/entry';
import { AuthProvider } from './context/auth';
import { DataProvider } from './context/DataContext';
import { GestureHandlerRootView } from 'react-native-gesture-handler';
import { SafeAreaProvider } from 'react-native-safe-area-context';
import AppLayout from './app/_layout';
import { StatusBar } from 'expo-status-bar';
import ErrorBoundary from './components/ErrorBoundary';

export default function App() {
  return (
    <GestureHandlerRootView style={{ flex: 1 }}>
      <SafeAreaProvider>
        <AuthProvider>
          <DataProvider>
            <StatusBar style="auto" />
            <ErrorBoundary>
              <AppLayout />
            </ErrorBoundary>
          </DataProvider>
        </AuthProvider>
      </SafeAreaProvider>
    </GestureHandlerRootView>
  );
}
