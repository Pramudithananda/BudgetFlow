import * as SQLite from 'expo-sqlite';
import { EventEmitter } from 'events';

// Create database instance
const db = SQLite.openDatabase('budgetflow.db');

// Event emitter for real-time updates simulation
const eventEmitter = new EventEmitter();

// Database initialization
export const initDatabase = () => {
  return new Promise((resolve, reject) => {
    db.transaction(
      (tx) => {
        // Create categories table
        tx.executeSql(
          `CREATE TABLE IF NOT EXISTS categories (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            description TEXT,
            color TEXT,
            createdAt TEXT,
            updatedAt TEXT
          );`
        );

        // Create expenses table
        tx.executeSql(
          `CREATE TABLE IF NOT EXISTS expenses (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            amount REAL NOT NULL,
            description TEXT,
            categoryId INTEGER,
            status TEXT DEFAULT 'Outstanding',
            funderId INTEGER,
            createdAt TEXT,
            updatedAt TEXT,
            FOREIGN KEY (categoryId) REFERENCES categories (id) ON DELETE SET NULL,
            FOREIGN KEY (funderId) REFERENCES funders (id) ON DELETE SET NULL
          );`
        );

        // Create funders table
        tx.executeSql(
          `CREATE TABLE IF NOT EXISTS funders (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            contact TEXT,
            amount REAL DEFAULT 0,
            createdAt TEXT,
            updatedAt TEXT
          );`
        );

        // Create helpers table
        tx.executeSql(
          `CREATE TABLE IF NOT EXISTS helpers (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            contact TEXT,
            role TEXT,
            createdAt TEXT,
            updatedAt TEXT
          );`
        );

        // Create budget_summary table
        tx.executeSql(
          `CREATE TABLE IF NOT EXISTS budget_summary (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            totalBudget REAL DEFAULT 0,
            receivedFund REAL DEFAULT 0,
            peopleOverFund REAL DEFAULT 0,
            remainingFund REAL DEFAULT 0,
            updatedAt TEXT
          );`
        );
      },
      (error) => {
        console.error('Error initializing database:', error);
        reject(error);
      },
      () => {
        console.log('Database initialized successfully');
        resolve();
      }
    );
  });
};

// Helper function to get current timestamp
const getCurrentTimestamp = () => {
  return new Date().toISOString();
};

// Helper function to emit events for real-time updates
const emitEvent = (eventName, data) => {
  eventEmitter.emit(eventName, data);
};

// Category Operations
export const getCategories = async () => {
  return new Promise((resolve, reject) => {
    db.transaction(
      (tx) => {
        tx.executeSql(
          'SELECT * FROM categories ORDER BY name ASC;',
          [],
          (_, { rows: { _array } }) => {
            resolve(_array);
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error getting categories:', error);
        reject(error);
      }
    );
  });
};

export const addCategory = async (categoryData) => {
  return new Promise((resolve, reject) => {
    const timestamp = getCurrentTimestamp();
    db.transaction(
      (tx) => {
        tx.executeSql(
          'INSERT INTO categories (name, description, color, createdAt) VALUES (?, ?, ?, ?);',
          [categoryData.name, categoryData.description, categoryData.color, timestamp],
          (_, { insertId }) => {
            const newCategory = { id: insertId, ...categoryData, createdAt: timestamp };
            emitEvent('categoriesChanged', await getCategories());
            resolve(newCategory);
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error adding category:', error);
        reject(error);
      }
    );
  });
};

export const updateCategory = async (categoryId, categoryData) => {
  return new Promise((resolve, reject) => {
    const timestamp = getCurrentTimestamp();
    db.transaction(
      (tx) => {
        tx.executeSql(
          'UPDATE categories SET name = ?, description = ?, color = ?, updatedAt = ? WHERE id = ?;',
          [categoryData.name, categoryData.description, categoryData.color, timestamp, categoryId],
          (_, { rowsAffected }) => {
            if (rowsAffected > 0) {
              const updatedCategory = { id: categoryId, ...categoryData, updatedAt: timestamp };
              emitEvent('categoriesChanged', getCategories());
              resolve(updatedCategory);
            } else {
              reject(new Error('Category not found'));
            }
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error updating category:', error);
        reject(error);
      }
    );
  });
};

export const deleteCategory = async (categoryId) => {
  return new Promise((resolve, reject) => {
    db.transaction(
      (tx) => {
        tx.executeSql(
          'DELETE FROM categories WHERE id = ?;',
          [categoryId],
          (_, { rowsAffected }) => {
            if (rowsAffected > 0) {
              emitEvent('categoriesChanged', getCategories());
              resolve(categoryId);
            } else {
              reject(new Error('Category not found'));
            }
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error deleting category:', error);
        reject(error);
      }
    );
  });
};

// Expense Operations
export const getExpense = async (id) => {
  return new Promise((resolve, reject) => {
    db.transaction(
      (tx) => {
        tx.executeSql(
          'SELECT * FROM expenses WHERE id = ?;',
          [id],
          (_, { rows: { _array } }) => {
            resolve(_array.length > 0 ? _array[0] : null);
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error getting expense:', error);
        reject(error);
      }
    );
  });
};

export const getExpenses = async (categoryId = null) => {
  return new Promise((resolve, reject) => {
    let query = 'SELECT * FROM expenses ORDER BY createdAt DESC;';
    let params = [];

    if (categoryId) {
      query = 'SELECT * FROM expenses WHERE categoryId = ? ORDER BY createdAt DESC;';
      params = [categoryId];
    }

    db.transaction(
      (tx) => {
        tx.executeSql(
          query,
          params,
          (_, { rows: { _array } }) => {
            resolve(_array);
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error getting expenses:', error);
        reject(error);
      }
    );
  });
};

export const addExpense = async (expenseData) => {
  return new Promise((resolve, reject) => {
    const timestamp = getCurrentTimestamp();
    db.transaction(
      (tx) => {
        tx.executeSql(
          'INSERT INTO expenses (amount, description, categoryId, status, funderId, createdAt) VALUES (?, ?, ?, ?, ?, ?);',
          [
            expenseData.amount,
            expenseData.description,
            expenseData.categoryId,
            expenseData.status || 'Outstanding',
            expenseData.funderId,
            timestamp
          ],
          (_, { insertId }) => {
            const newExpense = { id: insertId, ...expenseData, createdAt: timestamp };
            emitEvent('expensesChanged', getExpenses());
            resolve(newExpense);
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error adding expense:', error);
        reject(error);
      }
    );
  });
};

export const updateExpense = async (expenseId, expenseData) => {
  return new Promise((resolve, reject) => {
    const timestamp = getCurrentTimestamp();
    db.transaction(
      (tx) => {
        tx.executeSql(
          'UPDATE expenses SET amount = ?, description = ?, categoryId = ?, status = ?, funderId = ?, updatedAt = ? WHERE id = ?;',
          [
            expenseData.amount,
            expenseData.description,
            expenseData.categoryId,
            expenseData.status,
            expenseData.funderId,
            timestamp,
            expenseId
          ],
          (_, { rowsAffected }) => {
            if (rowsAffected > 0) {
              const updatedExpense = { id: expenseId, ...expenseData, updatedAt: timestamp };
              emitEvent('expensesChanged', getExpenses());
              resolve(updatedExpense);
            } else {
              reject(new Error('Expense not found'));
            }
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error updating expense:', error);
        reject(error);
      }
    );
  });
};

export const deleteExpense = async (expenseId) => {
  return new Promise((resolve, reject) => {
    db.transaction(
      (tx) => {
        tx.executeSql(
          'DELETE FROM expenses WHERE id = ?;',
          [expenseId],
          (_, { rowsAffected }) => {
            if (rowsAffected > 0) {
              emitEvent('expensesChanged', getExpenses());
              resolve(expenseId);
            } else {
              reject(new Error('Expense not found'));
            }
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error deleting expense:', error);
        reject(error);
      }
    );
  });
};

// Funder Operations
export const getFunders = async () => {
  return new Promise((resolve, reject) => {
    db.transaction(
      (tx) => {
        tx.executeSql(
          'SELECT * FROM funders ORDER BY name ASC;',
          [],
          (_, { rows: { _array } }) => {
            resolve(_array);
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error getting funders:', error);
        reject(error);
      }
    );
  });
};

export const addFunder = async (funderData) => {
  return new Promise((resolve, reject) => {
    const timestamp = getCurrentTimestamp();
    db.transaction(
      (tx) => {
        tx.executeSql(
          'INSERT INTO funders (name, contact, amount, createdAt) VALUES (?, ?, ?, ?);',
          [funderData.name, funderData.contact, funderData.amount || 0, timestamp],
          (_, { insertId }) => {
            const newFunder = { id: insertId, ...funderData, createdAt: timestamp };
            emitEvent('fundersChanged', getFunders());
            resolve(newFunder);
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error adding funder:', error);
        reject(error);
      }
    );
  });
};

export const updateFunder = async (funderId, funderData) => {
  return new Promise((resolve, reject) => {
    const timestamp = getCurrentTimestamp();
    db.transaction(
      (tx) => {
        tx.executeSql(
          'UPDATE funders SET name = ?, contact = ?, amount = ?, updatedAt = ? WHERE id = ?;',
          [funderData.name, funderData.contact, funderData.amount, timestamp, funderId],
          (_, { rowsAffected }) => {
            if (rowsAffected > 0) {
              const updatedFunder = { id: funderId, ...funderData, updatedAt: timestamp };
              emitEvent('fundersChanged', getFunders());
              resolve(updatedFunder);
            } else {
              reject(new Error('Funder not found'));
            }
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error updating funder:', error);
        reject(error);
      }
    );
  });
};

export const deleteFunder = async (funderId) => {
  return new Promise((resolve, reject) => {
    db.transaction(
      (tx) => {
        tx.executeSql(
          'DELETE FROM funders WHERE id = ?;',
          [funderId],
          (_, { rowsAffected }) => {
            if (rowsAffected > 0) {
              emitEvent('fundersChanged', getFunders());
              resolve(funderId);
            } else {
              reject(new Error('Funder not found'));
            }
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error deleting funder:', error);
        reject(error);
      }
    );
  });
};

// Helper Operations
export const getHelpers = async () => {
  return new Promise((resolve, reject) => {
    db.transaction(
      (tx) => {
        tx.executeSql(
          'SELECT * FROM helpers ORDER BY name ASC;',
          [],
          (_, { rows: { _array } }) => {
            resolve(_array);
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error getting helpers:', error);
        reject(error);
      }
    );
  });
};

export const addHelper = async (helperData) => {
  return new Promise((resolve, reject) => {
    const timestamp = getCurrentTimestamp();
    db.transaction(
      (tx) => {
        tx.executeSql(
          'INSERT INTO helpers (name, contact, role, createdAt) VALUES (?, ?, ?, ?);',
          [helperData.name, helperData.contact, helperData.role, timestamp],
          (_, { insertId }) => {
            const newHelper = { id: insertId, ...helperData, createdAt: timestamp };
            resolve(newHelper);
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error adding helper:', error);
        reject(error);
      }
    );
  });
};

// Budget Operations
export const getBudgetSummary = async () => {
  return new Promise((resolve, reject) => {
    db.transaction(
      (tx) => {
        tx.executeSql(
          'SELECT * FROM budget_summary LIMIT 1;',
          [],
          (_, { rows: { _array } }) => {
            if (_array.length > 0) {
              resolve(_array[0]);
            } else {
              // Create default budget if not exists
              const defaultBudget = {
                totalBudget: 0,
                receivedFund: 0,
                peopleOverFund: 0,
                remainingFund: 0,
              };
              updateBudgetSummary(defaultBudget).then(resolve).catch(reject);
            }
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error getting budget summary:', error);
        reject(error);
      }
    );
  });
};

export const updateBudgetSummary = async (budgetData) => {
  return new Promise((resolve, reject) => {
    const timestamp = getCurrentTimestamp();
    db.transaction(
      (tx) => {
        tx.executeSql(
          `INSERT OR REPLACE INTO budget_summary 
           (id, totalBudget, receivedFund, peopleOverFund, remainingFund, updatedAt) 
           VALUES (1, ?, ?, ?, ?, ?);`,
          [
            budgetData.totalBudget || 0,
            budgetData.receivedFund || 0,
            budgetData.peopleOverFund || 0,
            budgetData.remainingFund || 0,
            timestamp
          ],
          (_, { insertId }) => {
            const updatedBudget = { id: insertId || 1, ...budgetData, updatedAt: timestamp };
            resolve(updatedBudget);
          },
          (_, error) => {
            reject(error);
            return false;
          }
        );
      },
      (error) => {
        console.error('Error updating budget summary:', error);
        reject(error);
      }
    );
  });
};

// Real-time listeners (simulated with EventEmitter)
export const listenExpenses = (categoryId = null, callback) => {
  const handleExpensesChange = async () => {
    try {
      const expenses = await getExpenses(categoryId);
      callback(expenses);
    } catch (error) {
      console.error('Error in expenses listener:', error);
    }
  };

  eventEmitter.on('expensesChanged', handleExpensesChange);
  
  // Initial call
  handleExpensesChange();

  // Return unsubscribe function
  return () => {
    eventEmitter.off('expensesChanged', handleExpensesChange);
  };
};

export const listenCategories = (callback) => {
  const handleCategoriesChange = async () => {
    try {
      const categories = await getCategories();
      callback(categories);
    } catch (error) {
      console.error('Error in categories listener:', error);
    }
  };

  eventEmitter.on('categoriesChanged', handleCategoriesChange);
  
  // Initial call
  handleCategoriesChange();

  // Return unsubscribe function
  return () => {
    eventEmitter.off('categoriesChanged', handleCategoriesChange);
  };
};

export const listenFunders = (callback) => {
  const handleFundersChange = async () => {
    try {
      const funders = await getFunders();
      callback(funders);
    } catch (error) {
      console.error('Error in funders listener:', error);
    }
  };

  eventEmitter.on('fundersChanged', handleFundersChange);
  
  // Initial call
  handleFundersChange();

  // Return unsubscribe function
  return () => {
    eventEmitter.off('fundersChanged', handleFundersChange);
  };
};

// Database utility functions
export const clearDatabase = () => {
  return new Promise((resolve, reject) => {
    db.transaction(
      (tx) => {
        tx.executeSql('DELETE FROM expenses;');
        tx.executeSql('DELETE FROM categories;');
        tx.executeSql('DELETE FROM funders;');
        tx.executeSql('DELETE FROM helpers;');
        tx.executeSql('DELETE FROM budget_summary;');
      },
      (error) => {
        console.error('Error clearing database:', error);
        reject(error);
      },
      () => {
        console.log('Database cleared successfully');
        resolve();
      }
    );
  });
};

export const exportDatabase = async () => {
  try {
    const categories = await getCategories();
    const expenses = await getExpenses();
    const funders = await getFunders();
    const helpers = await getHelpers();
    const budgetSummary = await getBudgetSummary();

    return {
      categories,
      expenses,
      funders,
      helpers,
      budgetSummary,
      exportedAt: new Date().toISOString()
    };
  } catch (error) {
    console.error('Error exporting database:', error);
    throw error;
  }
};