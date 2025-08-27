import * as SQLite from 'expo-sqlite';

// Open (or create) SQLite database
const db = SQLite.openDatabase('budgetflow.db');

/**
 * Initializes all required tables if they do not yet exist.
 * Returns a Promise that resolves when setup completes.
 */
export const initDb = () => {
  return new Promise((resolve, reject) => {
    db.transaction(tx => {
      // Categories table
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS categories (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          createdAt INTEGER,
          updatedAt INTEGER
        );`
      );
      // Expenses table
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS expenses (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          categoryId INTEGER,
          title TEXT,
          description TEXT,
          amount REAL,
          createdAt INTEGER,
          updatedAt INTEGER,
          FOREIGN KEY (categoryId) REFERENCES categories(id)
        );`
      );
      // Funders table
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS funders (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          createdAt INTEGER,
          updatedAt INTEGER
        );`
      );
      // Helpers table
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS helpers (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          createdAt INTEGER,
          updatedAt INTEGER
        );`
      );
      // Budget summary table (singleton row with id = 1)
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS budget_summary (
          id INTEGER PRIMARY KEY CHECK (id = 1),
          totalBudget REAL DEFAULT 0,
          receivedFund REAL DEFAULT 0,
          peopleOverFund REAL DEFAULT 0,
          remainingFund REAL DEFAULT 0,
          updatedAt INTEGER
        );`
      );
      // Ensure budget_summary has a default row
      tx.executeSql(
        `INSERT OR IGNORE INTO budget_summary (id, totalBudget, receivedFund, peopleOverFund, remainingFund, updatedAt)
         VALUES (1, 0, 0, 0, 0, strftime('%s','now'));`
      );
    },
    (txErr) => {
      console.error('SQLite setup failed', txErr);
      reject(txErr);
    },
    () => {
      console.log('SQLite tables verified');
      resolve();
    });
  });
};

export default db;