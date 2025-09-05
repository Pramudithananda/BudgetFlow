import * as SQLite from 'expo-sqlite';

const db = SQLite.openDatabase('budgetflow.db');

export const runDatabaseMigration = () => {
  return new Promise((resolve, reject) => {
    console.log('DatabaseMigration: Starting database migration...');
    
    db.transaction(tx => {
      console.log('DatabaseMigration: Transaction started');
      
      // Create events table if it doesn't exist
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS events (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          description TEXT,
          date TEXT,
          budget REAL,
          location TEXT,
          category TEXT,
          createdAt TEXT DEFAULT CURRENT_TIMESTAMP
        );`,
        [],
        () => {
          console.log('DatabaseMigration: Events table created successfully');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error creating events table:', error);
        }
      );

      // Create categories table if it doesn't exist
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS categories (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL UNIQUE,
          color TEXT DEFAULT '#64a12d',
          description TEXT,
          createdAt TEXT DEFAULT CURRENT_TIMESTAMP
        );`,
        [],
        () => {
          console.log('DatabaseMigration: Categories table created successfully');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error creating categories table:', error);
        }
      );

      // Create funders table if it doesn't exist
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS funders (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          phone TEXT,
          email TEXT,
          createdAt TEXT DEFAULT CURRENT_TIMESTAMP,
          updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
        );`,
        [],
        () => {
          console.log('DatabaseMigration: Funders table created successfully');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error creating funders table:', error);
        }
      );

      // Create event_funding table if it doesn't exist
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS event_funding (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          event_id INTEGER NOT NULL,
          funder_id INTEGER NOT NULL,
          amount REAL NOT NULL,
          status TEXT NOT NULL CHECK (status IN ('Pending', 'Spent', 'Available', 'Outstanding')),
          description TEXT,
          transfer_date TEXT,
          created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
          updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
          FOREIGN KEY (event_id) REFERENCES events (id) ON DELETE CASCADE,
          FOREIGN KEY (funder_id) REFERENCES funders (id) ON DELETE CASCADE
        );`,
        [],
        () => {
          console.log('DatabaseMigration: Event funding table created successfully');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error creating event funding table:', error);
        }
      );

      // Create fund categories table if it doesn't exist
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS fund_categories (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL UNIQUE,
          description TEXT,
          color TEXT DEFAULT '#64a12d',
          createdAt TEXT DEFAULT CURRENT_TIMESTAMP
        );`,
        [],
        () => {
          console.log('DatabaseMigration: Fund categories table created successfully');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error creating fund categories table:', error);
        }
      );

      // Create expenses table if it doesn't exist
      tx.executeSql(
        `CREATE TABLE IF NOT EXISTS expenses (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT NOT NULL,
          description TEXT,
          amount REAL NOT NULL,
          date TEXT,
          categoryId INTEGER,
          eventId INTEGER,
          funderId INTEGER,
          status TEXT DEFAULT 'Outstanding',
          assigned_to TEXT,
          createdAt TEXT DEFAULT CURRENT_TIMESTAMP,
          updated_at TEXT DEFAULT CURRENT_TIMESTAMP
        );`,
        [],
        () => {
          console.log('DatabaseMigration: Expenses table created successfully');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error creating expenses table:', error);
        }
      );

      // Insert default expense categories if they don't exist
      const defaultCategories = [
        { name: 'Food & Catering', color: '#FF6B6B', description: 'Food and catering expenses - Rs. 60,000' },
        { name: 'Decorations', color: '#4ECDC4', description: 'Party decorations and setup - Rs. 20,000' },
        { name: 'Transportation', color: '#45B7D1', description: 'Transportation costs - Rs. 10,000' },
        { name: 'Other Expenses', color: '#96CEB4', description: 'Other miscellaneous expenses' },
        { name: 'Venue & Facilities', color: '#FFEAA7', description: 'Party hall and venue costs' },
        { name: 'Entertainment', color: '#DDA0DD', description: 'Music, entertainment, activities' },
        { name: 'Photography', color: '#F8BBD9', description: 'Photography and videography' },
        { name: 'Gifts & Prizes', color: '#A8E6CF', description: 'Birthday gifts and prizes' },
        { name: 'Administrative', color: '#FFB6C1', description: 'Administrative and planning costs' },
        { name: 'Emergency Fund', color: '#D3D3D3', description: 'Emergency and contingency fund' }
      ];

      defaultCategories.forEach(category => {
        tx.executeSql(
          'INSERT OR IGNORE INTO categories (name, color, description) VALUES (?, ?, ?);',
          [category.name, category.color, category.description],
          () => {
            console.log(`DatabaseMigration: Default category ${category.name} inserted`);
          },
          (_, error) => {
            console.error(`DatabaseMigration: Error inserting default category ${category.name}:`, error);
          }
        );
      });

      // Insert sample fund categories if they don't exist
      const sampleFundCategories = [
        { name: 'Government Grants', description: 'Government funding and grants', color: '#FF6B6B' },
        { name: 'International Organizations', description: 'UN, World Bank, etc.', color: '#4ECDC4' },
        { name: 'Private Foundations', description: 'Private charitable foundations', color: '#45B7D1' },
        { name: 'Corporate Sponsors', description: 'Business and corporate funding', color: '#96CEB4' },
        { name: 'Embassy Funding', description: 'Foreign embassy grants', color: '#FFEAA7' },
        { name: 'NGO Partners', description: 'Non-governmental organizations', color: '#DDA0DD' },
        { name: 'Local Donors', description: 'Local community donors', color: '#F8BBD9' },
        { name: 'Educational Institutions', description: 'Universities and schools', color: '#A8E6CF' }
      ];

      sampleFundCategories.forEach(category => {
        tx.executeSql(
          'INSERT OR IGNORE INTO fund_categories (name, description, color) VALUES (?, ?, ?);',
          [category.name, category.description, category.color],
          () => {
            console.log(`DatabaseMigration: Fund category ${category.name} inserted`);
          },
          (_, error) => {
            console.error(`DatabaseMigration: Error inserting fund category ${category.name}:`, error);
          }
        );
      });

      // Insert sample funders if they don't exist
      const sampleFunders = [
        { name: 'Sujith', phone: '0771234567', email: 'sujith@email.com' },
        { name: 'Nirvan', phone: '0777654321', email: 'nirvan@email.com' },
        { name: 'Welfare Funding', phone: '0112345678', email: 'welfare@funding.lk' },
        { name: 'ABC Foundation', phone: '0111111111', email: 'info@abcfoundation.org' },
        { name: 'XYZ Corporation', phone: '0112222222', email: 'grants@xyzcorp.com' },
        { name: 'Ministry of Education', phone: '0113333333', email: 'grants@moe.gov.lk' },
        { name: 'World Bank', phone: '0114444444', email: 'info@worldbank.org' },
        { name: 'UNICEF', phone: '0115555555', email: 'srilanka@unicef.org' }
      ];

      sampleFunders.forEach(funder => {
        tx.executeSql(
          'INSERT OR IGNORE INTO funders (name, phone, email) VALUES (?, ?, ?);',
          [funder.name, funder.phone, funder.email],
          () => {
            console.log(`DatabaseMigration: Sample funder ${funder.name} inserted`);
          },
          (_, error) => {
            console.error(`DatabaseMigration: Error inserting sample funder ${funder.name}:`, error);
          }
        );
      });

      // Insert sample event for testing - Birthday Celebration
      tx.executeSql(
        `INSERT OR IGNORE INTO events (name, description, date, budget, location, category) 
         VALUES (?, ?, ?, ?, ?, ?);`,
        [
          'Birthday Celebration',
          'Birthday party celebration with food, decorations, transportation and other expenses',
          '2024-10-01',
          100000,
          'Party Hall',
          'Celebration'
        ],
        () => {
          console.log('DatabaseMigration: Birthday event inserted');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error inserting birthday event:', error);
        }
      );

      // Insert sample event funding for testing - Birthday Celebration
      // Sujith's contribution - Rs. 25,000 (Spent)
      tx.executeSql(
        `INSERT OR IGNORE INTO event_funding (event_id, funder_id, amount, status, description, transfer_date) 
         VALUES (?, ?, ?, ?, ?, ?);`,
        [
          1, // event_id
          1, // funder_id (Sujith)
          25000,
          'Spent',
          'Sujith provided funds for birthday celebration expenses',
          '2024-09-15'
        ],
        () => {
          console.log('DatabaseMigration: Sujith funding inserted');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error inserting Sujith funding:', error);
        }
      );

      // Nirvan's contribution - Rs. 10,000 (Available)
      tx.executeSql(
        `INSERT OR IGNORE INTO event_funding (event_id, funder_id, amount, status, description, transfer_date) 
         VALUES (?, ?, ?, ?, ?, ?);`,
        [
          1, // event_id
          2, // funder_id (Nirvan)
          10000,
          'Available',
          'Nirvan provided funds for remaining expenses',
          '2024-09-20'
        ],
        () => {
          console.log('DatabaseMigration: Nirvan funding inserted');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error inserting Nirvan funding:', error);
        }
      );

      // Welfare Funding - Rs. 40,000 (Pending)
      tx.executeSql(
        `INSERT OR IGNORE INTO event_funding (event_id, funder_id, amount, status, description, transfer_date) 
         VALUES (?, ?, ?, ?, ?, ?);`,
        [
          1, // event_id
          3, // funder_id (Welfare Funding)
          40000,
          'Pending',
          'Welfare funding expected for birthday celebration',
          '2024-10-01'
        ],
        () => {
          console.log('DatabaseMigration: Welfare funding inserted');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error inserting Welfare funding:', error);
        }
      );


    }, 
    (error) => {
      console.error('DatabaseMigration: Database migration failed:', error);
      reject(error);
    },
    () => {
      console.log('DatabaseMigration: Database migration completed successfully');
      resolve();
    });
  });
};

export default runDatabaseMigration;