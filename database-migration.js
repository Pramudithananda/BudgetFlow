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
          startDate TEXT,
          endDate TEXT,
          budget REAL,
          location TEXT,
          status TEXT DEFAULT 'planned',
          fundCategoryId INTEGER,
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
          contact TEXT,
          amount REAL DEFAULT 0,
          fundCategoryId INTEGER,
          createdAt TEXT DEFAULT CURRENT_TIMESTAMP
        );`,
        [],
        () => {
          console.log('DatabaseMigration: Funders table created successfully');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error creating funders table:', error);
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
        { name: 'Venue & Facilities', color: '#FF6B6B', description: 'Conference halls, meeting rooms, venues' },
        { name: 'Catering & Food', color: '#4ECDC4', description: 'Meals, snacks, beverages for events' },
        { name: 'Transportation', color: '#45B7D1', description: 'Travel, transport, logistics' },
        { name: 'Marketing & Promotion', color: '#96CEB4', description: 'Advertising, flyers, social media' },
        { name: 'Equipment & Technology', color: '#FFEAA7', description: 'AV equipment, laptops, projectors' },
        { name: 'Speakers & Training', color: '#DDA0DD', description: 'Speaker fees, training materials' },
        { name: 'Accommodation', color: '#F8BBD9', description: 'Hotel bookings, guest accommodation' },
        { name: 'Materials & Supplies', color: '#A8E6CF', description: 'Stationery, printing, supplies' },
        { name: 'Security & Safety', color: '#FFB6C1', description: 'Security services, safety equipment' },
        { name: 'Administrative', color: '#D3D3D3', description: 'Office supplies, admin costs' }
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
        { name: 'ABC Foundation', contact: 'info@abcfoundation.org', categoryId: 3 },
        { name: 'XYZ Corporation', contact: 'grants@xyzcorp.com', categoryId: 4 },
        { name: 'DEF Trust', contact: 'contact@deftrust.org', categoryId: 3 },
        { name: 'GHI Fund', contact: 'funding@ghifund.org', categoryId: 3 },
        { name: 'JKL Organization', contact: 'support@jklorg.org', categoryId: 6 },
        { name: 'Ministry of Education', contact: 'grants@moe.gov.lk', categoryId: 1 },
        { name: 'World Bank', contact: 'info@worldbank.org', categoryId: 2 },
        { name: 'UNICEF', contact: 'srilanka@unicef.org', categoryId: 2 },
        { name: 'Red Cross', contact: 'srilanka@redcross.org', categoryId: 6 },
        { name: 'Local Business Association', contact: 'info@lba.lk', categoryId: 7 },
        { name: 'European Union', contact: 'delegation-srilanka@eeas.europa.eu', categoryId: 2 },
        { name: 'USAID', contact: 'colombo@usaid.gov', categoryId: 2 },
        { name: 'Australian Aid', contact: 'colombo@dfat.gov.au', categoryId: 2 },
        { name: 'Japanese Embassy', contact: 'cultural@colombo.emb-japan.go.jp', categoryId: 5 },
        { name: 'British Council', contact: 'info@britishcouncil.lk', categoryId: 5 }
      ];

      sampleFunders.forEach(funder => {
        tx.executeSql(
          'INSERT OR IGNORE INTO funders (name, contact, fundCategoryId) VALUES (?, ?, ?);',
          [funder.name, funder.contact, funder.categoryId],
          () => {
            console.log(`DatabaseMigration: Sample funder ${funder.name} inserted`);
          },
          (_, error) => {
            console.error(`DatabaseMigration: Error inserting sample funder ${funder.name}:`, error);
          }
        );
      });

      // Insert sample event for testing
      tx.executeSql(
        `INSERT OR IGNORE INTO events (name, description, startDate, endDate, budget, location, status) 
         VALUES (?, ?, ?, ?, ?, ?, ?);`,
        ['Sample Event', 'This is a sample event for testing', '2025-01-01', '2025-01-31', 1000.00, 'Sample Location', 'planned'],
        () => {
          console.log('DatabaseMigration: Sample event inserted');
        },
        (_, error) => {
          console.error('DatabaseMigration: Error inserting sample event:', error);
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