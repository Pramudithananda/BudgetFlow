import { Stack, Tabs } from 'expo-router';
import { FontAwesome5, MaterialIcons } from '@expo/vector-icons';
import { useThemeColor } from '../components/Themed';
import { ThemeProvider } from '../context/theme';
import { ConfirmDialogProvider } from '../components/CustomConfirmDialog';
import { initializeDatabase } from '../services/databaseService';
import { useEffect } from 'react';

export default function RootLayout() {
  const tabBarActiveColor = '#64a12d';
  const tabBarInactiveColor = '#707070';

  // Initialize database on app start
  useEffect(() => {
    initializeDatabase().catch(console.error);
  }, []);

  return (
    <ThemeProvider>
      <ConfirmDialogProvider>
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
  );
} 