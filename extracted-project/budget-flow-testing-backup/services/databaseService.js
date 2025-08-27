import AsyncStorage from '@react-native-async-storage/async-storage';

// Import both services
import * as FirebaseService from './firebaseService';
import * as SQLiteService from './sqliteService';

// Database configuration
const DATABASE_CONFIG_KEY = 'database_config';
const DEFAULT_DATABASE = 'sqlite'; // Set SQLite as default

let currentDatabase = DEFAULT_DATABASE;

// Initialize database configuration
export const initializeDatabase = async () => {
  try {
    const config = await AsyncStorage.getItem(DATABASE_CONFIG_KEY);
    if (config) {
      currentDatabase = JSON.parse(config).database;
    } else {
      // Set default configuration
      await setDatabaseType(DEFAULT_DATABASE);
    }
    console.log(`Database initialized with: ${currentDatabase}`);
  } catch (error) {
    console.error('Error initializing database:', error);
    // Fallback to default
    currentDatabase = DEFAULT_DATABASE;
  }
};

// Set database type
export const setDatabaseType = async (databaseType) => {
  try {
    currentDatabase = databaseType;
    await AsyncStorage.setItem(DATABASE_CONFIG_KEY, JSON.stringify({ database: databaseType }));
    console.log(`Database switched to: ${databaseType}`);
  } catch (error) {
    console.error('Error setting database type:', error);
  }
};

// Get current database type
export const getCurrentDatabase = () => {
  return currentDatabase;
};

// Get the appropriate service based on current configuration
const getService = () => {
  return currentDatabase === 'firebase' ? FirebaseService : SQLiteService;
};

// Wrapper functions that delegate to the appropriate service
export const getCategories = async () => {
  const service = getService();
  return service.getCategories();
};

export const addCategory = async (categoryData) => {
  const service = getService();
  return service.addCategory(categoryData);
};

export const updateCategory = async (categoryId, categoryData) => {
  const service = getService();
  return service.updateCategory(categoryId, categoryData);
};

export const deleteCategory = async (categoryId) => {
  const service = getService();
  return service.deleteCategory(categoryId);
};

export const getExpense = async (id) => {
  const service = getService();
  return service.getExpense(id);
};

export const getExpenses = async (categoryId = null) => {
  const service = getService();
  return service.getExpenses(categoryId);
};

export const listenExpenses = (categoryId = null, callback) => {
  const service = getService();
  return service.listenExpenses(categoryId, callback);
};

export const listenCategories = (callback) => {
  const service = getService();
  return service.listenCategories(callback);
};

export const listenFunders = (callback) => {
  const service = getService();
  return service.listenFunders(callback);
};

export const addExpense = async (expenseData) => {
  const service = getService();
  return service.addExpense(expenseData);
};

export const updateExpense = async (expenseId, expenseData) => {
  const service = getService();
  return service.updateExpense(expenseId, expenseData);
};

export const deleteExpense = async (expenseId) => {
  const service = getService();
  return service.deleteExpense(expenseId);
};

export const getBudgetSummary = async () => {
  const service = getService();
  return service.getBudgetSummary();
};

export const updateBudgetSummary = async (budgetData) => {
  const service = getService();
  return service.updateBudgetSummary(budgetData);
};

export const getHelpers = async () => {
  const service = getService();
  return service.getHelpers();
};

export const addHelper = async (helperData) => {
  const service = getService();
  return service.addHelper(helperData);
};

export const getFunders = async () => {
  const service = getService();
  return service.getFunders();
};

export const addFunder = async (funderData) => {
  const service = getService();
  return service.addFunder(funderData);
};

export const updateFunder = async (funderId, funderData) => {
  const service = getService();
  return service.updateFunder(funderId, funderData);
};

export const deleteFunder = async (funderId) => {
  const service = getService();
  return service.deleteFunder(funderId);
};

// Database-specific utilities
export const isFirebase = () => {
  return currentDatabase === 'firebase';
};

export const isSQLite = () => {
  return currentDatabase === 'sqlite';
};

// Migration utilities
export const migrateToSQLite = async () => {
  try {
    // Import migration service
    const { migrateFromFirebase } = await import('./migrationService');
    const result = await migrateFromFirebase();
    
    if (result.success) {
      // Switch to SQLite after successful migration
      await setDatabaseType('sqlite');
    }
    
    return result;
  } catch (error) {
    console.error('Migration error:', error);
    throw error;
  }
};

// Export both services for direct access if needed
export { FirebaseService, SQLiteService };