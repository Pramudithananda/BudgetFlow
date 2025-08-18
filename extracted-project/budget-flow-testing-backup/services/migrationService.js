import * as SQLite from 'expo-sqlite';
import * as FileSystem from 'expo-file-system';
import * as Sharing from 'expo-sharing';
import * as Print from 'expo-print';

// Import the old Firebase service for migration
import { 
  getCategories as getFirebaseCategories,
  getExpenses as getFirebaseExpenses,
  getFunders as getFirebaseFunders,
  getHelpers as getFirebaseHelpers,
  getBudgetSummary as getFirebaseBudgetSummary
} from './firebaseService';

// Import the new SQLite service
import {
  addCategory as addSQLiteCategory,
  addExpense as addSQLiteExpense,
  addFunder as addSQLiteFunder,
  addHelper as addSQLiteHelper,
  updateBudgetSummary as updateSQLiteBudgetSummary
} from './sqliteService';

// Migration status tracking
let migrationStatus = {
  isRunning: false,
  progress: 0,
  currentStep: '',
  error: null
};

// Migration progress callback
let progressCallback = null;

export const setMigrationProgressCallback = (callback) => {
  progressCallback = callback;
};

const updateProgress = (step, progress) => {
  migrationStatus.currentStep = step;
  migrationStatus.progress = progress;
  if (progressCallback) {
    progressCallback(migrationStatus);
  }
};

// Export Firebase data to JSON
export const exportFirebaseData = async () => {
  try {
    updateProgress('Exporting categories...', 10);
    const categories = await getFirebaseCategories();
    
    updateProgress('Exporting expenses...', 30);
    const expenses = await getFirebaseExpenses();
    
    updateProgress('Exporting funders...', 50);
    const funders = await getFirebaseFunders();
    
    updateProgress('Exporting helpers...', 70);
    const helpers = await getFirebaseHelpers();
    
    updateProgress('Exporting budget summary...', 90);
    const budgetSummary = await getFirebaseBudgetSummary();
    
    const exportData = {
      categories,
      expenses,
      funders,
      helpers,
      budgetSummary,
      exportedAt: new Date().toISOString(),
      version: '1.0'
    };
    
    updateProgress('Export completed', 100);
    
    return exportData;
  } catch (error) {
    console.error('Error exporting Firebase data:', error);
    migrationStatus.error = error.message;
    throw error;
  }
};

// Import data to SQLite
export const importToSQLite = async (data) => {
  try {
    migrationStatus.isRunning = true;
    migrationStatus.error = null;
    
    // Import categories
    updateProgress('Importing categories...', 10);
    for (let i = 0; i < data.categories.length; i++) {
      const category = data.categories[i];
      await addSQLiteCategory({
        name: category.name,
        color: category.color
      });
      updateProgress('Importing categories...', 10 + (i / data.categories.length) * 20);
    }
    
    // Import funders
    updateProgress('Importing funders...', 30);
    for (let i = 0; i < data.funders.length; i++) {
      const funder = data.funders[i];
      await addSQLiteFunder({
        name: funder.name,
        amount: funder.amount,
        phone: funder.phone,
        email: funder.email
      });
      updateProgress('Importing funders...', 30 + (i / data.funders.length) * 20);
    }
    
    // Import helpers
    updateProgress('Importing helpers...', 50);
    for (let i = 0; i < data.helpers.length; i++) {
      const helper = data.helpers[i];
      await addSQLiteHelper({
        name: helper.name,
        phone: helper.phone,
        email: helper.email,
        role: helper.role
      });
      updateProgress('Importing helpers...', 50 + (i / data.helpers.length) * 20);
    }
    
    // Import expenses
    updateProgress('Importing expenses...', 70);
    for (let i = 0; i < data.expenses.length; i++) {
      const expense = data.expenses[i];
      await addSQLiteExpense({
        title: expense.title,
        amount: expense.amount,
        categoryId: expense.categoryId,
        description: expense.description,
        date: expense.date
      });
      updateProgress('Importing expenses...', 70 + (i / data.expenses.length) * 20);
    }
    
    // Import budget summary
    updateProgress('Importing budget summary...', 90);
    if (data.budgetSummary) {
      await updateSQLiteBudgetSummary({
        totalBudget: data.budgetSummary.totalBudget || 0,
        receivedFund: data.budgetSummary.receivedFund || 0,
        peopleOverFund: data.budgetSummary.peopleOverFund || 0,
        remainingFund: data.budgetSummary.remainingFund || 0
      });
    }
    
    updateProgress('Migration completed successfully!', 100);
    migrationStatus.isRunning = false;
    
    return true;
  } catch (error) {
    console.error('Error importing to SQLite:', error);
    migrationStatus.error = error.message;
    migrationStatus.isRunning = false;
    throw error;
  }
};

// Full migration process
export const migrateFromFirebase = async () => {
  try {
    migrationStatus.isRunning = true;
    migrationStatus.error = null;
    
    updateProgress('Starting migration...', 0);
    
    // Export data from Firebase
    const data = await exportFirebaseData();
    
    // Import data to SQLite
    await importToSQLite(data);
    
    return {
      success: true,
      message: 'Migration completed successfully!',
      dataCount: {
        categories: data.categories.length,
        expenses: data.expenses.length,
        funders: data.funders.length,
        helpers: data.helpers.length
      }
    };
  } catch (error) {
    return {
      success: false,
      message: `Migration failed: ${error.message}`,
      error: error
    };
  }
};

// Export SQLite data to JSON file
export const exportSQLiteData = async () => {
  try {
    const { getCategories, getExpenses, getFunders, getHelpers, getBudgetSummary } = await import('./sqliteService');
    
    const categories = await getCategories();
    const expenses = await getExpenses();
    const funders = await getFunders();
    const helpers = await getHelpers();
    const budgetSummary = await getBudgetSummary();
    
    const exportData = {
      categories,
      expenses,
      funders,
      helpers,
      budgetSummary,
      exportedAt: new Date().toISOString(),
      version: '1.0',
      source: 'sqlite'
    };
    
    const jsonString = JSON.stringify(exportData, null, 2);
    const fileName = `budget_flow_backup_${new Date().toISOString().split('T')[0]}.json`;
    const filePath = `${FileSystem.documentDirectory}${fileName}`;
    
    await FileSystem.writeAsStringAsync(filePath, jsonString);
    
    if (await Sharing.isAvailableAsync()) {
      await Sharing.shareAsync(filePath, {
        mimeType: 'application/json',
        dialogTitle: 'Export Budget Flow Data'
      });
    }
    
    return { success: true, filePath, fileName };
  } catch (error) {
    console.error('Error exporting SQLite data:', error);
    throw error;
  }
};

// Get migration status
export const getMigrationStatus = () => {
  return { ...migrationStatus };
};

// Reset migration status
export const resetMigrationStatus = () => {
  migrationStatus = {
    isRunning: false,
    progress: 0,
    currentStep: '',
    error: null
  };
};