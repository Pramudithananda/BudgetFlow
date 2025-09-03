import * as SQLite from 'expo-sqlite';

const db = SQLite.openDatabase('budgetflow.db');

export const runDatabaseMigration = () => {
  return new Promise((resolve, reject) => {
    db.transaction(tx => {
      // Create events table if it doesn't exist
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS events (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          description TEXT,
          startDate TEXT,
          endDate TEXT,
          budget REAL,
          location TEXT,
          status TEXT DEFAULT 'planned',
          createdAt TEXT DEFAULT CURRENT_TIMESTAMP
        );`,
        [],
        () => {
          console.log('Events table created successfully');
        },
        (_, error) => {
          console.error('Error creating events table:', error);
        }
      );

      // Create categories table if it doesn't exist
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS categories (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL UNIQUE,
          color TEXT DEFAULT '#64a12d',
          createdAt TEXT DEFAULT CURRENT_TIMESTAMP
        );`,
        [],
        () => {
          console.log('Categories table created successfully');
        },
        (_, error) => {
          console.error('Error creating categories table:', error);
        }
      );

      // Create funders table if it doesn't exist
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS funders (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          contact TEXT,
          amount REAL DEFAULT 0,
          createdAt TEXT DEFAULT CURRENT_TIMESTAMP
        );`,
        [],
        () => {
          console.log('Funders table created successfully');
        },
        (_, error) => {
          console.error('Error creating funders table:', error);
        }
      );

      // Create expenses table if it doesn't exist
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS expenses (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          description TEXT NOT NULL,
          amount REAL NOT NULL,
          date TEXT,
          categoryId INTEGER,
          eventId INTEGER,
          status TEXT DEFAULT 'Outstanding',
          createdAt TEXT DEFAULT CURRENT_TIMESTAMP
        );`,
        [],
        () => {
          console.log('Expenses table created successfully');
        },
        (_, error) => {
          console.error('Error creating expenses table:', error);
        }
      );

      // Insert default categories if they don't exist
      const defaultCategories = [
        { name: 'Food & Beverages', color: '#FF6B6B' },
        { name: 'Transportation', color: '#4ECDC4' },
        { name: 'Accommodation', color: '#45B7D1' },
        { name: 'Materials', color: '#96CEB4' },
        { name: 'Services', color: '#FFEAA7' },
        { name: 'Marketing', color: '#DDA0DD' },
        { name: 'Other', color: '#F8BBD9' }
      ];

      defaultCategories.forEach(category => {
        tx.executeSql(
          'INSERT OR IGNORE INTO categories (name, color) VALUES (?, ?);',
          [category.name, category.color],
          () => {
            console.log(`Default category ${category.name} inserted`);
          },
          (_, error) => {
            console.error(`Error inserting default category ${category.name}:`, error);
          }
        );
      });

      // Insert sample event for testing
      tx.executeSql(
        `INSERT OR IGNORE INTO events (name, description, startDate, endDate, budget, location, status) 
         VALUES (?, ?, ?, ?, ?, ?, ?);`,
        ['Sample Event', 'This is a sample event for testing', '2025-01-01', '2025-01-31', 1000.00, 'Sample Location', 'planned'],
        () => {
          console.log('Sample event inserted');
        },
        (_, error) => {
          console.error('Error inserting sample event:', error);
        }
      );

    }, 
    (error) => {
      console.error('Database migration failed:', error);
      reject(error);
    },
    () => {
      console.log('Database migration completed successfully');
      resolve();
    });
  });
};

export default runDatabaseMigration;