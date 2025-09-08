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
          { name: 'Food & Beverages', color: '#64a12d', description: 'Meals, snacks, and drinks' },
          { name: 'Decorations', color: '#ff6b6b', description: 'Party decorations and setup' },
          { name: 'Transportation', color: '#4ecdc4', description: 'Travel and transport costs' },
          { name: 'Other Expenses', color: '#45b7d1', description: 'Miscellaneous expenses' }
        ];
        
        sampleCategories.forEach(category => {
          tx.executeSql(
            'INSERT OR IGNORE INTO categories (name, color, description) VALUES (?, ?, ?);',
            [category.name, category.color, category.description]
          );
        });
        
        const sampleFunders = [
          { name: 'Sujith', phone: '+94 77 123 4567', email: 'sujith@example.com' },
          { name: 'Nirvan', phone: '+94 78 234 5678', email: 'nirvan@example.com' },
          { name: 'Welfare Funding', phone: '+94 11 345 6789', email: 'welfare@funding.org' }
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
            'Annual birthday celebration event',
            '2024-10-01',
            100000,
            'Colombo',
            'Conference'
          ]
        );
        
        // Sample expenses data
        const sampleExpenses = [
          { title: 'Food & Beverages', amount: 60000, status: 'Spent', categoryId: 1, assignedTo: 'Sujith', date: '2024-01-15', description: 'Birthday party catering' },
          { title: 'Decorations', amount: 20000, status: 'Available', categoryId: 2, assignedTo: 'Nirvan', date: '2024-01-16', description: 'Party decorations and balloons' },
          { title: 'Transportation', amount: 10000, status: 'Pending', categoryId: 3, assignedTo: 'Welfare', date: '2024-01-17', description: 'Transport for guests' },
          { title: 'Other Expenses', amount: 10000, status: 'Outstanding', categoryId: 4, assignedTo: 'Sujith', date: '2024-01-18', description: 'Miscellaneous costs' }
        ];
        
        sampleExpenses.forEach(expense => {
          tx.executeSql(
            'INSERT OR IGNORE INTO expenses (title, amount, status, category_id, assigned_to, date, description) VALUES (?, ?, ?, ?, ?, ?, ?);',
            [expense.title, expense.amount, expense.status, expense.categoryId, expense.assignedTo, expense.date, expense.description]
          );
        });
        
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
          'INSERT INTO categories (name, color, description) VALUES (?, ?, ?)',
          [categoryData.name, categoryData.color || '#64a12d', categoryData.description || ''],
          (_, result) => {
            const newCategory = {
              id: result.insertId,
              name: categoryData.name,
              color: categoryData.color || '#64a12d',
              description: categoryData.description || '',
              created_at: new Date().toISOString(),
              updated_at: new Date().toISOString(),
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

export const updateCategory = (id, categoryData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'UPDATE categories SET name = ?, color = ?, description = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?',
          [categoryData.name, categoryData.color || '#64a12d', categoryData.description || '', id],
          (_, result) => {
            console.log('Category updated successfully:', result.rowsAffected);
            resolve(result.rowsAffected);
          },
          (_, error) => {
            console.error('Error updating category:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const deleteCategory = (id) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'DELETE FROM categories WHERE id = ?',
          [id],
          (_, result) => {
            console.log('Category deleted successfully:', result.rowsAffected);
            resolve(result.rowsAffected);
          },
          (_, error) => {
            console.error('Error deleting category:', error);
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
              created_at: new Date().toISOString(),
              updated_at: new Date().toISOString(),
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

export const updateFunder = (id, funderData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'UPDATE funders SET name = ?, phone = ?, email = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?',
          [funderData.name, funderData.phone || '', funderData.email || '', id],
          (_, result) => {
            console.log('Funder updated successfully:', result.rowsAffected);
            resolve(result.rowsAffected);
          },
          (_, error) => {
            console.error('Error updating funder:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const deleteFunder = (id) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'DELETE FROM funders WHERE id = ?',
          [id],
          (_, result) => {
            console.log('Funder deleted successfully:', result.rowsAffected);
            resolve(result.rowsAffected);
          },
          (_, error) => {
            console.error('Error deleting funder:', error);
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
            const newEvent = {
              id: result.insertId,
              name: eventData.name,
              description: eventData.description || '',
              date: eventData.date || '',
              budget: eventData.budget || 0,
              location: eventData.location || '',
              category: eventData.category || '',
              createdAt: new Date().toISOString()
            };
            console.log('Event added successfully with ID:', result.insertId);
            resolve(newEvent);
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

export const updateEvent = (id, eventData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          `UPDATE events SET name = ?, description = ?, date = ?, budget = ?, location = ?, category = ? WHERE id = ?`,
          [
            eventData.name,
            eventData.description || '',
            eventData.date || '',
            eventData.budget || 0,
            eventData.location || '',
            eventData.category || '',
            id
          ],
          (_, result) => {
            console.log('Event updated successfully:', result.rowsAffected);
            resolve(result.rowsAffected);
          },
          (_, error) => {
            console.error('Error updating event:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const deleteEvent = (id) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'DELETE FROM events WHERE id = ?',
          [id],
          (_, result) => {
            console.log('Event deleted successfully:', result.rowsAffected);
            resolve(result.rowsAffected);
          },
          (_, error) => {
            console.error('Error deleting event:', error);
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

// Expense Operations
export const getExpenses = () => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'SELECT * FROM expenses ORDER BY created_at DESC',
          [],
          (_, result) => {
            const expenses = [];
            for (let i = 0; i < result.rows.length; i++) {
              expenses.push(result.rows.item(i));
            }
            console.log('Retrieved expenses:', expenses);
            resolve(expenses);
          },
          (_, error) => {
            console.error('Error getting expenses:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const addExpense = (expenseData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          `INSERT INTO expenses (title, amount, status, category_id, funder_id, event_id, date, assigned_to, description) 
           VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
          [
            expenseData.title,
            expenseData.amount || 0,
            expenseData.status || 'Outstanding',
            expenseData.categoryId || null,
            expenseData.funderId || null,
            expenseData.eventId || null,
            expenseData.date || new Date().toISOString().slice(0, 10),
            expenseData.assignedTo || '',
            expenseData.description || ''
          ],
          (_, result) => {
            const newExpense = {
              id: result.insertId,
              title: expenseData.title,
              amount: expenseData.amount || 0,
              status: expenseData.status || 'Outstanding',
              categoryId: expenseData.categoryId || null,
              funderId: expenseData.funderId || null,
              eventId: expenseData.eventId || null,
              date: expenseData.date || new Date().toISOString().slice(0, 10),
              assignedTo: expenseData.assignedTo || '',
              description: expenseData.description || '',
              created_at: new Date().toISOString(),
              updated_at: new Date().toISOString()
            };
            console.log('Expense added successfully with ID:', result.insertId);
            resolve(newExpense);
          },
          (_, error) => {
            console.error('Error adding expense:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const updateExpense = (id, expenseData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          `UPDATE expenses SET title = ?, amount = ?, status = ?, category_id = ?, funder_id = ?, event_id = ?, date = ?, assigned_to = ?, description = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?`,
          [
            expenseData.title,
            expenseData.amount || 0,
            expenseData.status || 'Outstanding',
            expenseData.categoryId || null,
            expenseData.funderId || null,
            expenseData.eventId || null,
            expenseData.date || new Date().toISOString().slice(0, 10),
            expenseData.assignedTo || '',
            expenseData.description || '',
            id
          ],
          (_, result) => {
            console.log('Expense updated successfully:', result.rowsAffected);
            resolve(result.rowsAffected);
          },
          (_, error) => {
            console.error('Error updating expense:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const deleteExpense = (id) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'DELETE FROM expenses WHERE id = ?',
          [id],
          (_, result) => {
            console.log('Expense deleted successfully:', result.rowsAffected);
            resolve(result.rowsAffected);
          },
          (_, error) => {
            console.error('Error deleting expense:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

// Initialize database when module loads
ensureDatabase().catch(console.error);