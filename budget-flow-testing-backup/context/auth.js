import { createContext, useContext, useState, useEffect } from 'react';
import AsyncStorage from '@react-native-async-storage/async-storage';

const AUTH_STORAGE_KEY = 'local_auth_user_v1';

const AuthContext = createContext({});

export function AuthProvider({ children }) {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    (async () => {
      try {
        const stored = await AsyncStorage.getItem(AUTH_STORAGE_KEY);
        if (stored) {
          setUser(JSON.parse(stored));
        }
      } finally {
        setLoading(false);
      }
    })();
  }, []);

  const signIn = async (email, password) => {
    // Simple local auth stub: accept any non-empty email/password
    if (!email || !password) {
      const error = new Error('Email and password are required');
      error.code = 'auth/invalid-credentials';
      throw error;
    }
    const localUser = { email, id: email.toLowerCase() };
    setUser(localUser);
    await AsyncStorage.setItem(AUTH_STORAGE_KEY, JSON.stringify(localUser));
    return localUser;
  };

  const signUp = async (email, password) => {
    // For local mode, sign up behaves the same as sign in
    return signIn(email, password);
  };

  const logOut = async () => {
    setUser(null);
    await AsyncStorage.removeItem(AUTH_STORAGE_KEY);
  };

  return (
    <AuthContext.Provider value={{ user, loading, signIn, signUp, logOut }}>
      {children}
    </AuthContext.Provider>
  );
}

export const useAuth = () => useContext(AuthContext);
