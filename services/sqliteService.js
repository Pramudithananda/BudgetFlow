import * as SQLite from 'expo-sqlite';

// Database initialization
let db = null;

const initDatabase = async () => {
  if (db) return db;
  
  try {
    db = SQLite.openDatabase('budgetflow.db');
    
    // Create tables using transaction
    db.transaction(tx => {
      tx.executeSql(`
        PRAGMA journal_mode = WAL;
      `);
      
      tx.executeSql(`
        CREATE TABLE IF NOT EXISTS categories (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
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
    });
    
    // Lightweight migration: ensure event_id and date columns exist on expenses
    db.transaction(tx => {
      tx.executeSql("PRAGMA table_info('expenses')", [], (_, result) => {
        const colNames = new Set();
        for (let i = 0; i < result.rows.length; i++) {
          colNames.add(result.rows.item(i).name);
        }
        
        if (!colNames.has('event_id')) {
          tx.executeSql("ALTER TABLE expenses ADD COLUMN event_id INTEGER;");
          tx.executeSql("CREATE INDEX IF NOT EXISTS idx_expenses_event_id ON expenses(event_id);");
        }
        if (!colNames.has('date')) {
          tx.executeSql("ALTER TABLE expenses ADD COLUMN date TEXT;");
        }
      });
    });

    // Migration: ensure phone and email columns exist on funders
    db.transaction(tx => {
      tx.executeSql("PRAGMA table_info('funders')", [], (_, result) => {
        const colNames = new Set();
        for (let i = 0; i < result.rows.length; i++) {
          colNames.add(result.rows.item(i).name);
        }
        
        if (!colNames.has('phone')) {
          tx.executeSql("ALTER TABLE funders ADD COLUMN phone TEXT;");
        }
        if (!colNames.has('email')) {
          tx.executeSql("ALTER TABLE funders ADD COLUMN email TEXT;");
        }
      });
    });

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
    await ensureDatabase();
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

export const updateCategory = (categoryId, categoryData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'UPDATE categories SET name = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?',
          [categoryData.name, categoryId],
          (_, result) => {
            console.log('Category updated successfully');
            resolve({ id: categoryId, ...categoryData });
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

export const deleteCategory = (categoryId) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'DELETE FROM categories WHERE id = ?',
          [categoryId],
          (_, result) => {
            console.log('Category deleted successfully');
            resolve(categoryId);
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

export const getExpensesByEvent = async (eventId) => {
  try {
    const database = await getDatabase();
    const result = await database.getAllAsync(
      `SELECT e.*, c.name as category_name, f.name as funder_name
       FROM expenses e
       LEFT JOIN categories c ON c.id = e.category_id
       LEFT JOIN funders f ON f.id = e.funder_id
       WHERE e.event_id = ?
       ORDER BY e.created_at DESC`,
      [eventId]
    );
    return result.map(convertRow);
  } catch (error) {
    console.error('Error getting expenses by event:', error);
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
      'INSERT INTO expenses (title, amount, status, category_id, funder_id, event_id, date, assigned_to) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
      [
        expenseData.title,
        expenseData.amount || 0,
        expenseData.status || 'Outstanding',
        expenseData.categoryId || null,
        expenseData.funderId || null,
        expenseData.eventId || null,
        expenseData.date || new Date().toISOString().slice(0,10),
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
      eventId: expenseData.eventId || null,
      date: expenseData.date || new Date().toISOString().slice(0,10),
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
      'UPDATE expenses SET title = ?, amount = ?, status = ?, category_id = ?, funder_id = ?, event_id = ?, date = ?, assigned_to = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?',
      [
        expenseData.title,
        expenseData.amount,
        expenseData.status,
        expenseData.categoryId || null,
        expenseData.funderId || null,
        expenseData.eventId || null,
        expenseData.date || null,
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

export const deleteExpense = async (expenseId) => {
  try {
    const database = await getDatabase();
    await database.runAsync('DELETE FROM expenses WHERE id = ?', [expenseId]);
    
    // Notify listeners
    notifyListeners('expenses');
    
    return expenseId;
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

export const deleteFunder = async (funderId) => {
  try {
    const database = await getDatabase();
    await database.runAsync('DELETE FROM funders WHERE id = ?', [funderId]);
    
    // Notify listeners
    notifyListeners('funders');
    
    return funderId;
  } catch (error) {
    console.error('Error deleting funder:', error);
    throw error;
  }
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

export const updateEvent = (eventId, eventData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          `UPDATE events SET 
           name = ?, description = ?, date = ?, budget = ?, location = ?, category = ?
           WHERE id = ?`,
          [
            eventData.name,
            eventData.description || '',
            eventData.date || '',
            eventData.budget || 0,
            eventData.location || '',
            eventData.category || '',
            eventId
          ],
          (_, result) => {
            console.log('Event updated successfully');
            resolve(result);
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

export const deleteEvent = (eventId) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'DELETE FROM events WHERE id = ?',
          [eventId],
          (_, result) => {
            console.log('Event deleted successfully');
            resolve(result);
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

export const getEventFunding = (eventId) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          `SELECT ef.*, f.name as funder_name 
           FROM event_funding ef 
           JOIN funders f ON ef.funder_id = f.id 
           WHERE ef.event_id = ? 
           ORDER BY ef.created_at DESC`,
          [eventId],
          (_, result) => {
            const funding = [];
            for (let i = 0; i < result.rows.length; i++) {
              funding.push(result.rows.item(i));
            }
            console.log('Retrieved event funding:', funding);
            resolve(funding);
          },
          (_, error) => {
            console.error('Error getting event funding:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const updateEventFunding = (fundingId, fundingData) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          `UPDATE event_funding SET 
           amount = ?, status = ?, description = ?, transfer_date = ?, updated_at = CURRENT_TIMESTAMP
           WHERE id = ?`,
          [
            parseFloat(fundingData.amount) || 0,
            fundingData.status,
            fundingData.description || '',
            fundingData.transferDate || new Date().toISOString().slice(0, 10),
            fundingId
          ],
          (_, result) => {
            console.log('Event funding updated successfully');
            resolve(result);
          },
          (_, error) => {
            console.error('Error updating event funding:', error);
            reject(error);
          }
        );
      });
    }).catch(reject);
  });
};

export const deleteEventFunding = (fundingId) => {
  return new Promise((resolve, reject) => {
    ensureDatabase().then(() => {
      db.transaction(tx => {
        tx.executeSql(
          'DELETE FROM event_funding WHERE id = ?',
          [fundingId],
          (_, result) => {
            console.log('Event funding deleted successfully');
            resolve(result);
          },
          (_, error) => {
            console.error('Error deleting event funding:', error);
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
let initPromise = null;
const ensureDatabase = () => {
  return new Promise((resolve, reject) => {
    if (!initPromise) {
      initPromise = initDatabase();
    }
    initPromise.then(resolve).catch(reject);
  });
};

// Initialize database when module loads
ensureDatabase().catch(console.error);