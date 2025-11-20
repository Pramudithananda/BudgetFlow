import { Stack, Tabs } from 'expo-router';
import { FontAwesome5, MaterialIcons } from '@expo/vector-icons';
import { useThemeColor } from '../components/Themed';
import { ThemeProvider } from '../context/theme';
import { ConfirmDialogProvider } from '../components/CustomConfirmDialog';
import { AuthProvider } from '../context/auth';
import { GestureHandlerRootView } from 'react-native-gesture-handler';
import { SafeAreaProvider } from 'react-native-safe-area-context';
import { StatusBar } from 'expo-status-bar';

export default function RootLayout() {
  const tabBarActiveColor = '#64a12d';
  const tabBarInactiveColor = '#707070';

  return (
    <GestureHandlerRootView style={{ flex: 1 }}>
      <SafeAreaProvider>
        <AuthProvider>
          <ThemeProvider>
            <ConfirmDialogProvider>
              <StatusBar style="auto" />
              <Stack
                screenOptions={{
                  headerStyle: {
                    backgroundColor: '#64a12d',
                  },
                  headerTintColor: '#fff',
                }}
              >
                <Stack.Screen name="(tabs)" options={{ headerShown: false }} />
                <Stack.Screen name="(screens)" options={{ headerShown: false }} />
                <Stack.Screen 
                  name="new-expense" 
                  options={{ 
                    title: 'New Expense',
                    presentation: 'modal',
                    headerStyle: {
                      backgroundColor: '#64a12d',
                    },
                    headerTintColor: '#fff',
                  }} 
                />
                <Stack.Screen 
                  name="new-category" 
                  options={{ 
                    title: 'New Category',
                    presentation: 'modal',
                    headerStyle: {
                      backgroundColor: '#64a12d',
                    },
                    headerTintColor: '#fff',
                  }} 
                />
                <Stack.Screen 
                  name="category/[id]" 
                  options={{ 
                    title: 'Category Details',
                    headerStyle: {
                      backgroundColor: '#64a12d',
                    },
                    headerTintColor: '#fff',
                  }} 
                />
              </Stack>
            </ConfirmDialogProvider>
          </ThemeProvider>
        </AuthProvider>
      </SafeAreaProvider>
    </GestureHandlerRootView>
  );
} 