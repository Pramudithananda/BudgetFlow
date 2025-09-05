import * as SQLite from 'expo-sqlite';

// Database initialization
let db = null;

const initDatabase = () => {
  return new Promise((resolve, reject) => {
    if (db) {
      resolve(db);
      return;
    }
    
    try {
      db = SQLite.openDatabase('budgetflow.db');
      console.log('Database opened successfully');
    
      // Create tables using transaction
      db.transaction(tx => {
        tx.executeSql(`
          PRAGMA journal_mode = WAL;
        `);
        
        tx.executeSql(`
          CREATE TABLE IF NOT EXISTS categories (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            color TEXT DEFAULT '#64a12d',
            description TEXT,
            created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
            updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
          );
        `);
        
        tx.executeSql(`
          CREATE TABLE IF NOT EXISTS expenses (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            amount REAL NOT NULL DEFAULT 0,
            status TEXT NOT NULL DEFAULT 'Outstanding',
            category_id INTEGER,
            funder_id INTEGER,
            event_id INTEGER,
            date TEXT,
            assigned_to TEXT,
            created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
            updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
            FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE SET NULL,
            FOREIGN KEY (funder_id) REFERENCES funders (id) ON DELETE SET NULL
          );
        `);
        
        tx.executeSql(`
          CREATE TABLE IF NOT EXISTS budget (
            id INTEGER PRIMARY KEY DEFAULT 1,
            total_budget REAL DEFAULT 0,
            received_fund REAL DEFAULT 0,
            people_over_fund REAL DEFAULT 0,
            remaining_fund REAL DEFAULT 0,
            updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
          );
        `);
        
        tx.executeSql(`
          CREATE TABLE IF NOT EXISTS helpers (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            created_at DATETIME DEFAULT CURRENT_TIMESTAMP
          );
        `);
        
        tx.executeSql(`
          CREATE TABLE IF NOT EXISTS funders (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            phone TEXT,
            email TEXT,
            created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
            updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
          );
        `);
        
        tx.executeSql(`
          CREATE TABLE IF NOT EXISTS events (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            description TEXT,
            date TEXT,
            budget REAL,
            location TEXT,
            category TEXT,
            createdAt TEXT DEFAULT CURRENT_TIMESTAMP
          );
        `);
        
        tx.executeSql(`
          CREATE TABLE IF NOT EXISTS event_funding (
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
          );
        `);
        
        tx.executeSql(`CREATE INDEX IF NOT EXISTS idx_expenses_category_id ON expenses(category_id);`);
        tx.executeSql(`CREATE INDEX IF NOT EXISTS idx_expenses_funder_id ON expenses(funder_id);`);
        tx.executeSql(`CREATE INDEX IF NOT EXISTS idx_expenses_event_id ON expenses(event_id);`);
        tx.executeSql(`CREATE INDEX IF NOT EXISTS idx_expenses_status ON expenses(status);`);
        tx.executeSql(`CREATE INDEX IF NOT EXISTS idx_expenses_created_at ON expenses(created_at);`);
        tx.executeSql(`CREATE INDEX IF NOT EXISTS idx_events_created_at ON events(createdAt);`);
        tx.executeSql(`CREATE INDEX IF NOT EXISTS idx_events_category ON events(category);`);
        tx.executeSql(`CREATE INDEX IF NOT EXISTS idx_event_funding_event_id ON event_funding(event_id);`);
        tx.executeSql(`CREATE INDEX IF NOT EXISTS idx_event_funding_funder_id ON event_funding(funder_id);`);
        tx.executeSql(`CREATE INDEX IF NOT EXISTS idx_event_funding_status ON event_funding(status);`);
        
        tx.executeSql(`
          INSERT OR IGNORE INTO budget (id, total_budget, received_fund, people_over_fund, remaining_fund)
          VALUES (1, 0, 0, 0, 0);
        `);
        
        // Insert sample data
        const sampleCategories = [
          { name: 'Food & Catering', color: '#FF6B6B', description: 'Food and catering expenses - Rs. 60,000' },
          { name: 'Decorations', color: '#4ECDC4', description: 'Party decorations and setup - Rs. 20,000' },
          { name: 'Transportation', color: '#45B7D1', description: 'Transportation costs - Rs. 10,000' },
          { name: 'Other Expenses', color: '#96CEB4', description: 'Other miscellaneous expenses' }
        ];
        
        sampleCategories.forEach(category => {
          tx.executeSql(
            'INSERT OR IGNORE INTO categories (name, color, description) VALUES (?, ?, ?);',
            [category.name, category.color, category.description]
          );
        });
        
        const sampleFunders = [
          { name: 'Sujith', phone: '0771234567', email: 'sujith@email.com' },
          { name: 'Nirvan', phone: '0777654321', email: 'nirvan@email.com' },
          { name: 'Welfare Funding', phone: '0112345678', email: 'welfare@funding.lk' }
        ];
        
        sampleFunders.forEach(funder => {
          tx.executeSql(
            'INSERT OR IGNORE INTO funders (name, phone, email) VALUES (?, ?, ?);',
            [funder.name, funder.phone, funder.email]
          );
        });
        
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
          ]
        );
        
        // Sample funding data
        tx.executeSql(
          `INSERT OR IGNORE INTO event_funding (event_id, funder_id, amount, status, description, transfer_date) 
           VALUES (?, ?, ?, ?, ?, ?);`,
          [1, 1, 25000, 'Spent', 'Sujith provided funds for birthday celebration expenses', '2024-09-15']
        );
        
        tx.executeSql(
          `INSERT OR IGNORE INTO event_funding (event_id, funder_id, amount, status, description, transfer_date) 
           VALUES (?, ?, ?, ?, ?, ?);`,
          [1, 2, 10000, 'Available', 'Nirvan provided funds for remaining expenses', '2024-09-20']
        );
        
        tx.executeSql(
          `INSERT OR IGNORE INTO event_funding (event_id, funder_id, amount, status, description, transfer_date) 
           VALUES (?, ?, ?, ?, ?, ?);`,
          [1, 3, 40000, 'Pending', 'Welfare funding expected for birthday celebration', '2024-10-01']
        );
        
      }, (error) => {
        console.error('Database transaction failed:', error);
        reject(error);
      }, () => {
        console.log('Database initialized successfully');
        resolve(db);
      });
      
    } catch (error) {
      console.error('Error initializing database:', error);
      reject(error);
    }
  });
};

// Initialize database when module loads
let initPromise = null;
const ensureDatabase = () => {
  return new Promise((resolve, reject) => {
    if (!initPromise) {
      initPromise = initDatabase();
    }
    initPromise.then(resolve).catch(reject);
  });
};

// Category Operations
export const getCategories = () => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'SELECT * FROM categories ORDER BY name',
          [],
          (_, result) => {
            const categories = [];
            for (let i = 0; i < result.rows.length; i++) {
              categories.push(result.rows.item(i));
            }
            console.log('Retrieved categories:', categories);
            resolve(categories);
          },
          (_, error) => {
            console.error('Error getting categories:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const addCategory = (categoryData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'INSERT INTO categories (name) VALUES (?)',
          [categoryData.name],
          (_, result) => {
            const newCategory = {
              id: result.insertId,
              name: categoryData.name,
              createdAt: new Date().toISOString(),
              updatedAt: new Date().toISOString(),
            };
            
            console.log('Category added successfully with ID:', result.insertId);
            resolve(newCategory);
          },
          (_, error) => {
            console.error('Error adding category:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

// Funder Operations
export const getFunders = () => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'SELECT * FROM funders ORDER BY name',
          [],
          (_, result) => {
            const funders = [];
            for (let i = 0; i < result.rows.length; i++) {
              funders.push(result.rows.item(i));
            }
            console.log('Retrieved funders:', funders);
            resolve(funders);
          },
          (_, error) => {
            console.error('Error getting funders:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const addFunder = (funderData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'INSERT INTO funders (name, phone, email) VALUES (?, ?, ?)',
          [funderData.name, funderData.phone || '', funderData.email || ''],
          (_, result) => {
            const newFunder = {
              id: result.insertId,
              name: funderData.name,
              phone: funderData.phone || '',
              email: funderData.email || '',
              createdAt: new Date().toISOString(),
              updatedAt: new Date().toISOString(),
            };
            
            console.log('Funder added successfully with ID:', result.insertId);
            resolve(newFunder);
          },
          (_, error) => {
            console.error('Error adding funder:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

// Events functions
export const addEvent = (eventData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          `INSERT INTO events (name, description, date, budget, location, category) 
           VALUES (?, ?, ?, ?, ?, ?)`,
          [
            eventData.name,
            eventData.description || '',
            eventData.date || '',
            eventData.budget || 0,
            eventData.location || '',
            eventData.category || ''
          ],
          (_, result) => {
            console.log('Event added successfully with ID:', result.insertId);
            resolve(result.insertId);
          },
          (_, error) => {
            console.error('Error adding event:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const getEvents = () => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'SELECT * FROM events ORDER BY createdAt DESC',
          [],
          (_, result) => {
            const events = [];
            for (let i = 0; i < result.rows.length; i++) {
              events.push(result.rows.item(i));
            }
            console.log('Retrieved events:', events);
            resolve(events);
          },
          (_, error) => {
            console.error('Error getting events:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

// Event Funding functions
export const addEventFunding = (fundingData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          `INSERT INTO event_funding (event_id, funder_id, amount, status, description, transfer_date) 
           VALUES (?, ?, ?, ?, ?, ?)`,
          [
            fundingData.eventId,
            fundingData.funderId,
            parseFloat(fundingData.amount) || 0,
            fundingData.status,
            fundingData.description || '',
            fundingData.transferDate || new Date().toISOString().slice(0, 10)
          ],
          (_, result) => {
            console.log('Event funding added successfully with ID:', result.insertId);
            resolve(result.insertId);
          },
          (_, error) => {
            console.error('Error adding event funding:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const getEventFundingSummary = (eventId) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          `SELECT 
             status,
             SUM(amount) as total_amount,
             COUNT(*) as count
           FROM event_funding 
           WHERE event_id = ? 
           GROUP BY status`,
          [eventId],
          (_, result) => {
            const summary = {
              Pending: 0,
              Spent: 0,
              Available: 0,
              Outstanding: 0
            };
            
            for (let i = 0; i < result.rows.length; i++) {
              const row = result.rows.item(i);
              summary[row.status] = parseFloat(row.total_amount) || 0;
            }
            
            console.log('Event funding summary:', summary);
            resolve(summary);
          },
          (_, error) => {
            console.error('Error getting event funding summary:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

// Initialize database when module loads
ensureDatabase().catch(console.error);