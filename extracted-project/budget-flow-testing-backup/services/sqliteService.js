import * as SQLite from 'expo-sqlite';
import * as FileSystem from 'expo-file-system';

let db = null;

// Initialize database
const initDatabase = async () => {
  if (db) return db;
  
  const dbPath = `${FileSystem.documentDirectory}budget_flow.db`;
  
  // Check if database exists
  const dbExists = await FileSystem.getInfoAsync(dbPath);
  
  db = SQLite.openDatabase('budget_flow.db');
  
  // Create tables if database doesn't exist
  if (!dbExists.exists) {
    await createTables();
  }
  
  return db;
};

// Create database tables
const createTables = () => {
  return new Promise((resolve, reject) => {
    db.transaction(tx => {
      // Categories table
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS categories (
          id TEXT PRIMARY KEY,
          name TEXT NOT NULL,
          color TEXT,
          createdAt TEXT,
          updatedAt TEXT
        )`,
        [],
        () => {},
        (_, error) => reject(error)
      );
      
      // Expenses table
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS expenses (
          id TEXT PRIMARY KEY,
          title TEXT NOT NULL,
          amount REAL NOT NULL,
          categoryId TEXT,
          description TEXT,
          date TEXT,
          createdAt TEXT,
          updatedAt TEXT,
          FOREIGN KEY (categoryId) REFERENCES categories (id)
        )`,
        [],
        () => {},
        (_, error) => reject(error)
      );
      
      // Funders table
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS funders (
          id TEXT PRIMARY KEY,
          name TEXT NOT NULL,
          amount REAL NOT NULL,
          phone TEXT,
          email TEXT,
          createdAt TEXT,
          updatedAt TEXT
        )`,
        [],
        () => {},
        (_, error) => reject(error)
      );
      
      // Helpers table
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS helpers (
          id TEXT PRIMARY KEY,
          name TEXT NOT NULL,
          phone TEXT,
          email TEXT,
          role TEXT,
          createdAt TEXT,
          updatedAt TEXT
        )`,
        [],
        () => {},
        (_, error) => reject(error)
      );
      
      // Budget summary table
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS budget_summary (
          id TEXT PRIMARY KEY,
          totalBudget REAL DEFAULT 0,
          receivedFund REAL DEFAULT 0,
          peopleOverFund REAL DEFAULT 0,
          remainingFund REAL DEFAULT 0,
          updatedAt TEXT
        )`,
        [],
        () => {
          // Insert default budget summary
          tx.executeSql(
            `INSERT OR IGNORE INTO budget_summary (id, totalBudget, receivedFund, peopleOverFund, remainingFund, updatedAt) 
             VALUES ('summary', 0, 0, 0, 0, ?)`,
            [new Date().toISOString()],
            () => resolve(),
            (_, error) => reject(error)
          );
        },
        (_, error) => reject(error)
      );
    });
  });
};

// Helper function to generate unique IDs
const generateId = () => {
  return Date.now().toString() + Math.random().toString(36).substr(2, 9);
};

// Helper function to get current timestamp
const getCurrentTimestamp = () => {
  return new Date().toISOString();
};

// Category Operations
export const getCategories = async () => {
  const database = await initDatabase();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'SELECT * FROM categories ORDER BY name',
        [],
        (_, { rows: { _array } }) => resolve(_array),
        (_, error) => reject(error)
      );
    });
  });
};

export const addCategory = async (categoryData) => {
  const database = await initDatabase();
  const id = generateId();
  const timestamp = getCurrentTimestamp();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'INSERT INTO categories (id, name, color, createdAt) VALUES (?, ?, ?, ?)',
        [id, categoryData.name, categoryData.color, timestamp],
        () => resolve({ id, ...categoryData, createdAt: timestamp }),
        (_, error) => reject(error)
      );
    });
  });
};

export const updateCategory = async (categoryId, categoryData) => {
  const database = await initDatabase();
  const timestamp = getCurrentTimestamp();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'UPDATE categories SET name = ?, color = ?, updatedAt = ? WHERE id = ?',
        [categoryData.name, categoryData.color, timestamp, categoryId],
        () => resolve({ id: categoryId, ...categoryData, updatedAt: timestamp }),
        (_, error) => reject(error)
      );
    });
  });
};

export const deleteCategory = async (categoryId) => {
  const database = await initDatabase();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      // First, update expenses to remove category reference
      tx.executeSql(
        'UPDATE expenses SET categoryId = NULL WHERE categoryId = ?',
        [categoryId],
        () => {
          // Then delete the category
          tx.executeSql(
            'DELETE FROM categories WHERE id = ?',
            [categoryId],
            () => resolve(categoryId),
            (_, error) => reject(error)
          );
        },
        (_, error) => reject(error)
      );
    });
  });
};

// Expense Operations
export const getExpense = async (id) => {
  const database = await initDatabase();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'SELECT * FROM expenses WHERE id = ?',
        [id],
        (_, { rows: { _array } }) => {
          resolve(_array.length > 0 ? _array[0] : null);
        },
        (_, error) => reject(error)
      );
    });
  });
};

export const getExpenses = async (categoryId = null) => {
  const database = await initDatabase();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      let query = 'SELECT * FROM expenses';
      let params = [];
      
      if (categoryId) {
        query += ' WHERE categoryId = ?';
        params.push(categoryId);
      }
      
      query += ' ORDER BY createdAt DESC';
      
      tx.executeSql(
        query,
        params,
        (_, { rows: { _array } }) => resolve(_array),
        (_, error) => reject(error)
      );
    });
  });
};

// Note: Real-time listeners are not available in SQLite
// We'll implement polling or use React state management instead
export const listenExpenses = (categoryId = null, callback) => {
  // For SQLite, we'll return a function that can be called to refresh data
  // The component should handle periodic updates or manual refresh
  return () => {
    // This is a no-op for SQLite since we don't have real-time listeners
    // Components should call getExpenses() directly when they need fresh data
  };
};

export const listenCategories = (callback) => {
  // Same as above - no real-time listeners in SQLite
  return () => {};
};

export const listenFunders = (callback) => {
  // Same as above - no real-time listeners in SQLite
  return () => {};
};

export const addExpense = async (expenseData) => {
  const database = await initDatabase();
  const id = generateId();
  const timestamp = getCurrentTimestamp();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        `INSERT INTO expenses (id, title, amount, categoryId, description, date, createdAt) 
         VALUES (?, ?, ?, ?, ?, ?, ?)`,
        [
          id,
          expenseData.title,
          expenseData.amount,
          expenseData.categoryId,
          expenseData.description,
          expenseData.date,
          timestamp
        ],
        () => resolve({ id, ...expenseData, createdAt: timestamp }),
        (_, error) => reject(error)
      );
    });
  });
};

export const updateExpense = async (expenseId, expenseData) => {
  const database = await initDatabase();
  const timestamp = getCurrentTimestamp();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        `UPDATE expenses SET title = ?, amount = ?, categoryId = ?, description = ?, date = ?, updatedAt = ? 
         WHERE id = ?`,
        [
          expenseData.title,
          expenseData.amount,
          expenseData.categoryId,
          expenseData.description,
          expenseData.date,
          timestamp,
          expenseId
        ],
        () => resolve({ id: expenseId, ...expenseData, updatedAt: timestamp }),
        (_, error) => reject(error)
      );
    });
  });
};

export const deleteExpense = async (expenseId) => {
  const database = await initDatabase();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'DELETE FROM expenses WHERE id = ?',
        [expenseId],
        () => resolve(expenseId),
        (_, error) => reject(error)
      );
    });
  });
};

// Budget Operations
export const getBudgetSummary = async () => {
  const database = await initDatabase();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'SELECT * FROM budget_summary WHERE id = "summary"',
        [],
        (_, { rows: { _array } }) => {
          if (_array.length > 0) {
            resolve(_array[0]);
          } else {
            // Create default budget if not exists
            const defaultBudget = {
              id: 'summary',
              totalBudget: 0,
              receivedFund: 0,
              peopleOverFund: 0,
              remainingFund: 0,
              updatedAt: getCurrentTimestamp()
            };
            
            tx.executeSql(
              `INSERT INTO budget_summary (id, totalBudget, receivedFund, peopleOverFund, remainingFund, updatedAt) 
               VALUES (?, ?, ?, ?, ?, ?)`,
              [
                defaultBudget.id,
                defaultBudget.totalBudget,
                defaultBudget.receivedFund,
                defaultBudget.peopleOverFund,
                defaultBudget.remainingFund,
                defaultBudget.updatedAt
              ],
              () => resolve(defaultBudget),
              (_, error) => reject(error)
            );
          }
        },
        (_, error) => reject(error)
      );
    });
  });
};

export const updateBudgetSummary = async (budgetData) => {
  const database = await initDatabase();
  const timestamp = getCurrentTimestamp();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        `UPDATE budget_summary SET totalBudget = ?, receivedFund = ?, peopleOverFund = ?, remainingFund = ?, updatedAt = ? 
         WHERE id = "summary"`,
        [
          budgetData.totalBudget,
          budgetData.receivedFund,
          budgetData.peopleOverFund,
          budgetData.remainingFund,
          timestamp
        ],
        () => resolve({ ...budgetData, updatedAt: timestamp }),
        (_, error) => reject(error)
      );
    });
  });
};

// Helper Operations
export const getHelpers = async () => {
  const database = await initDatabase();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'SELECT * FROM helpers ORDER BY name',
        [],
        (_, { rows: { _array } }) => resolve(_array),
        (_, error) => reject(error)
      );
    });
  });
};

export const addHelper = async (helperData) => {
  const database = await initDatabase();
  const id = generateId();
  const timestamp = getCurrentTimestamp();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'INSERT INTO helpers (id, name, phone, email, role, createdAt) VALUES (?, ?, ?, ?, ?, ?)',
        [id, helperData.name, helperData.phone, helperData.email, helperData.role, timestamp],
        () => resolve({ id, ...helperData, createdAt: timestamp }),
        (_, error) => reject(error)
      );
    });
  });
};

// Funder Operations
export const getFunders = async () => {
  const database = await initDatabase();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'SELECT * FROM funders ORDER BY name',
        [],
        (_, { rows: { _array } }) => resolve(_array),
        (_, error) => reject(error)
      );
    });
  });
};

export const addFunder = async (funderData) => {
  const database = await initDatabase();
  const id = generateId();
  const timestamp = getCurrentTimestamp();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'INSERT INTO funders (id, name, amount, phone, email, createdAt) VALUES (?, ?, ?, ?, ?, ?)',
        [id, funderData.name, funderData.amount, funderData.phone, funderData.email, timestamp],
        () => resolve({ id, ...funderData, createdAt: timestamp }),
        (_, error) => reject(error)
      );
    });
  });
};

export const updateFunder = async (funderId, funderData) => {
  const database = await initDatabase();
  const timestamp = getCurrentTimestamp();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'UPDATE funders SET name = ?, amount = ?, phone = ?, email = ?, updatedAt = ? WHERE id = ?',
        [funderData.name, funderData.amount, funderData.phone, funderData.email, timestamp, funderId],
        () => resolve({ id: funderId, ...funderData, updatedAt: timestamp }),
        (_, error) => reject(error)
      );
    });
  });
};

export const deleteFunder = async (funderId) => {
  const database = await initDatabase();
  
  return new Promise((resolve, reject) => {
    database.transaction(tx => {
      tx.executeSql(
        'DELETE FROM funders WHERE id = ?',
        [funderId],
        () => resolve(funderId),
        (_, error) => reject(error)
      );
    });
  });
};