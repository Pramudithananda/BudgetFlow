import * as SQLite from 'expo-sqlite';

// Database initialization
let db = null;

const initDatabase = async () => {
  if (db) return db;
  
  try {
    db = await SQLite.openDatabaseAsync('budgetflow.db');
    
    // Create tables
    await db.execAsync(`
      PRAGMA journal_mode = WAL;
      
      CREATE TABLE IF NOT EXISTS categories (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
      );
      
      CREATE TABLE IF NOT EXISTS expenses (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        amount REAL NOT NULL DEFAULT 0,
        status TEXT NOT NULL DEFAULT 'Outstanding',
        category_id INTEGER,
        funder_id INTEGER,
        assigned_to TEXT,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE SET NULL,
        FOREIGN KEY (funder_id) REFERENCES funders (id) ON DELETE SET NULL
      );
      
      CREATE TABLE IF NOT EXISTS budget (
        id INTEGER PRIMARY KEY DEFAULT 1,
        total_budget REAL DEFAULT 0,
        received_fund REAL DEFAULT 0,
        people_over_fund REAL DEFAULT 0,
        remaining_fund REAL DEFAULT 0,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
      );
      
      CREATE TABLE IF NOT EXISTS helpers (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP
      );
      
      CREATE TABLE IF NOT EXISTS funders (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
      );
      
      CREATE INDEX IF NOT EXISTS idx_expenses_category_id ON expenses(category_id);
      CREATE INDEX IF NOT EXISTS idx_expenses_funder_id ON expenses(funder_id);
      CREATE INDEX IF NOT EXISTS idx_expenses_status ON expenses(status);
      CREATE INDEX IF NOT EXISTS idx_expenses_created_at ON expenses(created_at);
      
      -- Insert default budget record if not exists
      INSERT OR IGNORE INTO budget (id, total_budget, received_fund, people_over_fund, remaining_fund)
      VALUES (1, 0, 0, 0, 0);
    `);
    
    console.log('Database initialized successfully');
    return db;
  } catch (error) {
    console.error('Error initializing database:', error);
    throw error;
  }
};

// Helper function to ensure database is initialized
const getDatabase = async () => {
  if (!db) {
    await initDatabase();
  }
  return db;
};

// Utility function to convert SQLite row to object with camelCase
const convertRow = (row) => {
  const converted = {};
  for (const [key, value] of Object.entries(row)) {
    const camelKey = key.replace(/_([a-z])/g, (match, letter) => letter.toUpperCase());
    converted[camelKey] = value;
  }
  return converted;
};

// Category Operations
export const getCategories = async () => {
  try {
    const database = await getDatabase();
    const result = await database.getAllAsync('SELECT * FROM categories ORDER BY name');
    return result.map(convertRow);
  } catch (error) {
    console.error('Error getting categories:', error);
    throw error;
  }
};

export const addCategory = async (categoryData) => {
  try {
    const database = await getDatabase();
    const result = await database.runAsync(
      'INSERT INTO categories (name) VALUES (?)',
      [categoryData.name]
    );
    
    const newCategory = {
      id: result.lastInsertRowId,
      name: categoryData.name,
      createdAt: new Date().toISOString(),
      updatedAt: new Date().toISOString(),
    };
    
    // Notify listeners
    notifyListeners('categories');
    
    return newCategory;
  } catch (error) {
    console.error('Error adding category:', error);
    throw error;
  }
};

export const updateCategory = async (categoryId, categoryData) => {
  try {
    const database = await getDatabase();
    await database.runAsync(
      'UPDATE categories SET name = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?',
      [categoryData.name, categoryId]
    );
    
    // Notify listeners
    notifyListeners('categories');
    
    return { id: categoryId, ...categoryData };
  } catch (error) {
    console.error('Error updating category:', error);
    throw error;
  }
};

// FIXED: Enhanced deleteCategory with proper transaction handling
export const deleteCategory = async (categoryId) => {
  try {
    const database = await getDatabase();
    
    // Start transaction for safe deletion
    await database.execAsync('BEGIN TRANSACTION;');
    
    try {
      // First check if category exists
      const existingCategory = await database.getFirstAsync('SELECT id FROM categories WHERE id = ?', [categoryId]);
      if (!existingCategory) {
        await database.execAsync('ROLLBACK;');
        throw new Error('Category not found');
      }
      
      // Delete the category
      const result = await database.runAsync('DELETE FROM categories WHERE id = ?', [categoryId]);
      
      // Verify deletion was successful
      if (result.changes === 0) {
        await database.execAsync('ROLLBACK;');
        throw new Error('Failed to delete category - no rows affected');
      }
      
      // Commit transaction
      await database.execAsync('COMMIT;');
      
      console.log(`Successfully deleted category ${categoryId}, rows affected: ${result.changes}`);
      
      // Notify listeners
      notifyListeners('categories');
      
      return categoryId;
    } catch (transactionError) {
      // Rollback on any error
      await database.execAsync('ROLLBACK;');
      throw transactionError;
    }
  } catch (error) {
    console.error('Error deleting category:', error);
    throw error;
  }
};

// Expense Operations
export const getExpense = async (id) => {
  try {
    const database = await getDatabase();
    const result = await database.getFirstAsync('SELECT * FROM expenses WHERE id = ?', [id]);
    
    if (!result) {
      return null;
    }
    
    return convertRow(result);
  } catch (error) {
    console.error('Error getting expense:', error);
    throw error;
  }
};

export const getExpenses = async (categoryId = null) => {
  try {
    const database = await getDatabase();
    let query = 'SELECT * FROM expenses';
    let params = [];
    
    if (categoryId) {
      query += ' WHERE category_id = ?';
      params = [categoryId];
    }
    
    query += ' ORDER BY created_at DESC';
    
    const result = await database.getAllAsync(query, params);
    return result.map(convertRow);
  } catch (error) {
    console.error('Error getting expenses:', error);
    throw error;
  }
};

// Data change listeners for SQLite
const listeners = {
  expenses: new Set(),
  categories: new Set(),
  funders: new Set(),
};

// Helper function to notify listeners of data changes
const notifyListeners = async (type, categoryId = null) => {
  const relevantListeners = Array.from(listeners[type]).filter(listener => {
    if (type === 'expenses' && categoryId !== null) {
      return listener.categoryId === categoryId || listener.categoryId === null;
    }
    return true;
  });

  for (const listener of relevantListeners) {
    try {
      let data;
      switch (type) {
        case 'expenses':
          data = await getExpenses(listener.categoryId);
          break;
        case 'categories':
          data = await getCategories();
          break;
        case 'funders':
          data = await getFunders();
          break;
      }
      listener.callback(data);
    } catch (error) {
      console.error(`Error notifying ${type} listener:`, error);
    }
  }
};

export const listenExpenses = (categoryId = null, callback) => {
  const listener = { categoryId, callback };
  listeners.expenses.add(listener);
  
  // Initial data fetch
  const fetchAndNotify = async () => {
    try {
      const expenses = await getExpenses(categoryId);
      callback(expenses);
    } catch (error) {
      console.error('Error in listenExpenses:', error);
    }
  };
  
  fetchAndNotify();
  
  // Return cleanup function
  return () => {
    listeners.expenses.delete(listener);
  };
};

export const listenCategories = (callback) => {
  const listener = { callback };
  listeners.categories.add(listener);
  
  const fetchAndNotify = async () => {
    try {
      const categories = await getCategories();
      callback(categories);
    } catch (error) {
      console.error('Error in listenCategories:', error);
    }
  };
  
  fetchAndNotify();
  
  return () => {
    listeners.categories.delete(listener);
  };
};

export const listenFunders = (callback) => {
  const listener = { callback };
  listeners.funders.add(listener);
  
  const fetchAndNotify = async () => {
    try {
      const funders = await getFunders();
      callback(funders);
    } catch (error) {
      console.error('Error in listenFunders:', error);
    }
  };
  
  fetchAndNotify();
  
  return () => {
    listeners.funders.delete(listener);
  };
};

export const addExpense = async (expenseData) => {
  try {
    const database = await getDatabase();
    const result = await database.runAsync(
      'INSERT INTO expenses (title, amount, status, category_id, funder_id, assigned_to) VALUES (?, ?, ?, ?, ?, ?)',
      [
        expenseData.title,
        expenseData.amount || 0,
        expenseData.status || 'Outstanding',
        expenseData.categoryId || null,
        expenseData.funderId || null,
        expenseData.assignedTo || null
      ]
    );
    
    const newExpense = {
      id: result.lastInsertRowId,
      title: expenseData.title,
      amount: expenseData.amount || 0,
      status: expenseData.status || 'Outstanding',
      categoryId: expenseData.categoryId || null,
      funderId: expenseData.funderId || null,
      assignedTo: expenseData.assignedTo || null,
      createdAt: new Date().toISOString(),
      updatedAt: new Date().toISOString(),
    };
    
    // Notify listeners
    notifyListeners('expenses', expenseData.categoryId);
    
    return newExpense;
  } catch (error) {
    console.error('Error adding expense:', error);
    throw error;
  }
};

export const updateExpense = async (expenseId, expenseData) => {
  try {
    const database = await getDatabase();
    await database.runAsync(
      'UPDATE expenses SET title = ?, amount = ?, status = ?, category_id = ?, funder_id = ?, assigned_to = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?',
      [
        expenseData.title,
        expenseData.amount,
        expenseData.status,
        expenseData.categoryId || null,
        expenseData.funderId || null,
        expenseData.assignedTo || null,
        expenseId
      ]
    );
    
    // Notify listeners
    notifyListeners('expenses', expenseData.categoryId);
    
    return { id: expenseId, ...expenseData };
  } catch (error) {
    console.error('Error updating expense:', error);
    throw error;
  }
};

// FIXED: Enhanced deleteExpense with proper transaction handling
export const deleteExpense = async (expenseId) => {
  try {
    const database = await getDatabase();
    
    // Start transaction for safe deletion
    await database.execAsync('BEGIN TRANSACTION;');
    
    try {
      // First check if expense exists
      const existingExpense = await database.getFirstAsync('SELECT id FROM expenses WHERE id = ?', [expenseId]);
      if (!existingExpense) {
        await database.execAsync('ROLLBACK;');
        throw new Error('Expense not found');
      }
      
      // Delete the expense
      const result = await database.runAsync('DELETE FROM expenses WHERE id = ?', [expenseId]);
      
      // Verify deletion was successful
      if (result.changes === 0) {
        await database.execAsync('ROLLBACK;');
        throw new Error('Failed to delete expense - no rows affected');
      }
      
      // Commit transaction
      await database.execAsync('COMMIT;');
      
      console.log(`Successfully deleted expense ${expenseId}, rows affected: ${result.changes}`);
      
      // Notify listeners
      notifyListeners('expenses');
      
      return expenseId;
    } catch (transactionError) {
      // Rollback on any error
      await database.execAsync('ROLLBACK;');
      throw transactionError;
    }
  } catch (error) {
    console.error('Error deleting expense:', error);
    throw error;
  }
};

// Budget Operations
export const getBudgetSummary = async () => {
  try {
    const database = await getDatabase();
    const result = await database.getFirstAsync('SELECT * FROM budget WHERE id = 1');
    
    if (result) {
      return convertRow(result);
    } else {
      // Create default budget if not exists
      const defaultBudget = {
        totalBudget: 0,
        receivedFund: 0,
        peopleOverFund: 0,
        remainingFund: 0,
      };
      
      await updateBudgetSummary(defaultBudget);
      return defaultBudget;
    }
  } catch (error) {
    console.error('Error getting budget summary:', error);
    throw error;
  }
};

export const updateBudgetSummary = async (budgetData) => {
  try {
    const database = await getDatabase();
    await database.runAsync(
      'UPDATE budget SET total_budget = ?, received_fund = ?, people_over_fund = ?, remaining_fund = ?, updated_at = CURRENT_TIMESTAMP WHERE id = 1',
      [
        budgetData.totalBudget || 0,
        budgetData.receivedFund || 0,
        budgetData.peopleOverFund || 0,
        budgetData.remainingFund || 0
      ]
    );
    
    return budgetData;
  } catch (error) {
    console.error('Error updating budget summary:', error);
    throw error;
  }
};

// Helper Operations
export const getHelpers = async () => {
  try {
    const database = await getDatabase();
    const result = await database.getAllAsync('SELECT * FROM helpers ORDER BY name');
    return result.map(convertRow);
  } catch (error) {
    console.error('Error getting helpers:', error);
    throw error;
  }
};

export const addHelper = async (helperData) => {
  try {
    const database = await getDatabase();
    const result = await database.runAsync(
      'INSERT INTO helpers (name) VALUES (?)',
      [helperData.name]
    );
    
    const newHelper = {
      id: result.lastInsertRowId,
      name: helperData.name,
      createdAt: new Date().toISOString(),
    };
    
    return newHelper;
  } catch (error) {
    console.error('Error adding helper:', error);
    throw error;
  }
};

// Funder Operations
export const getFunders = async () => {
  try {
    const database = await getDatabase();
    const result = await database.getAllAsync('SELECT * FROM funders ORDER BY name');
    return result.map(convertRow);
  } catch (error) {
    console.error('Error getting funders:', error);
    throw error;
  }
};

export const addFunder = async (funderData) => {
  try {
    const database = await getDatabase();
    const result = await database.runAsync(
      'INSERT INTO funders (name) VALUES (?)',
      [funderData.name]
    );
    
    const newFunder = {
      id: result.lastInsertRowId,
      name: funderData.name,
      createdAt: new Date().toISOString(),
      updatedAt: new Date().toISOString(),
    };
    
    // Notify listeners
    notifyListeners('funders');
    
    return newFunder;
  } catch (error) {
    console.error('Error adding funder:', error);
    throw error;
  }
};

export const updateFunder = async (funderId, funderData) => {
  try {
    const database = await getDatabase();
    await database.runAsync(
      'UPDATE funders SET name = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?',
      [funderData.name, funderId]
    );
    
    // Notify listeners
    notifyListeners('funders');
    
    return { id: funderId, ...funderData };
  } catch (error) {
    console.error('Error updating funder:', error);
    throw error;
  }
};

// FIXED: Enhanced deleteFunder with proper transaction handling
export const deleteFunder = async (funderId) => {
  try {
    const database = await getDatabase();
    
    // Start transaction for safe deletion
    await database.execAsync('BEGIN TRANSACTION;');
    
    try {
      // First check if funder exists
      const existingFunder = await database.getFirstAsync('SELECT id FROM funders WHERE id = ?', [funderId]);
      if (!existingFunder) {
        await database.execAsync('ROLLBACK;');
        throw new Error('Funder not found');
      }
      
      // Delete the funder
      const result = await database.runAsync('DELETE FROM funders WHERE id = ?', [funderId]);
      
      // Verify deletion was successful
      if (result.changes === 0) {
        await database.execAsync('ROLLBACK;');
        throw new Error('Failed to delete funder - no rows affected');
      }
      
      // Commit transaction
      await database.execAsync('COMMIT;');
      
      console.log(`Successfully deleted funder ${funderId}, rows affected: ${result.changes}`);
      
      // Notify listeners
      notifyListeners('funders');
      
      return funderId;
    } catch (transactionError) {
      // Rollback on any error
      await database.execAsync('ROLLBACK;');
      throw transactionError;
    }
  } catch (error) {
    console.error('Error deleting funder:', error);
    throw error;
  }
};

// Initialize database when module loads
initDatabase().catch(console.error);
