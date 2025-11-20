import { createContext, useContext, useState, useEffect } from 'react';
import AsyncStorage from '@react-native-async-storage/async-storage';

const AuthContext = createContext({});

// Simple local authentication - stores user data in AsyncStorage
// In a production app, you'd want to implement proper authentication with a backend
export function AuthProvider({ children }) {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    // Check if user is already logged in
    checkAuthState();
  }, []);

  const checkAuthState = async () => {
    try {
      const userData = await AsyncStorage.getItem('user');
      if (userData) {
        setUser(JSON.parse(userData));
      }
    } catch (error) {
      console.error('Error checking auth state:', error);
    } finally {
      setLoading(false);
    }
  };

  const signIn = async (email, password) => {
    try {
      // Simple validation - in production, this would be done on a secure backend
      if (!email || !password) {
        throw new Error('Email and password are required');
      }

      // For demo purposes, we'll accept any valid email format
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailRegex.test(email)) {
        throw new Error('Please enter a valid email address');
      }

      if (password.length < 6) {
        throw new Error('Password must be at least 6 characters long');
      }

      // Create user object
      const userData = {
        uid: Date.now().toString(), // Simple ID generation
        email: email,
        displayName: email.split('@')[0], // Use email username as display name
        createdAt: new Date().toISOString(),
      };

      // Store user data
      await AsyncStorage.setItem('user', JSON.stringify(userData));
      setUser(userData);

      return userData;
    } catch (error) {
      throw error;
    }
  };

  const signUp = async (email, password) => {
    try {
      // Same validation as signIn for demo purposes
      if (!email || !password) {
        throw new Error('Email and password are required');
      }

      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailRegex.test(email)) {
        throw new Error('Please enter a valid email address');
      }

      if (password.length < 6) {
        throw new Error('Password must be at least 6 characters long');
      }

      // Check if user already exists (simple check)
      const existingUser = await AsyncStorage.getItem('user');
      if (existingUser) {
        const existing = JSON.parse(existingUser);
        if (existing.email === email) {
          throw new Error('An account with this email already exists');
        }
      }

      // Create new user
      const userData = {
        uid: Date.now().toString(),
        email: email,
        displayName: email.split('@')[0],
        createdAt: new Date().toISOString(),
      };

      await AsyncStorage.setItem('user', JSON.stringify(userData));
      setUser(userData);

      return userData;
    } catch (error) {
      throw error;
    }
  };

  const logOut = async () => {
    try {
      await AsyncStorage.removeItem('user');
      setUser(null);
    } catch (error) {
      console.error('Error signing out:', error);
      throw error;
    }
  };

  return (
    <AuthContext.Provider value={{ user, loading, signIn, signUp, logOut }}>
      {children}
    </AuthContext.Provider>
  );
}

export const useAuth = () => useContext(AuthContext);