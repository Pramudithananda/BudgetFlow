import * as SQLite from 'expo-sqlite';

// Open (or create) the local SQLite database
const db = SQLite.openDatabase('budget_flow.db');

// Simple in-memory event system to emulate Firestore onSnapshot
const listeners = {
  expenses: new Set(), // each item: { callback, categoryId }
  categories: new Set(), // each item: { callback }
  funders: new Set(), // each item: { callback }
};

const nowIso = () => new Date().toISOString();
const generateId = () => `${Date.now().toString(36)}_${Math.random().toString(36).slice(2, 10)}`;

// Helper to run SQL and return a Promise
const runSql = (sql, params = []) => new Promise((resolve, reject) => {
  db.transaction(tx => {
    tx.executeSql(
      sql,
      params,
      (_tx, result) => resolve(result),
      (_tx, error) => {
        console.error('SQLite error:', error);
        reject(error);
        return false;
      }
    );
  });
});

// Initialize tables
const initializeSchema = () => {
  db.transaction(tx => {
    tx.executeSql(`CREATE TABLE IF NOT EXISTS categories (
      id TEXT PRIMARY KEY NOT NULL,
      name TEXT NOT NULL,
      description TEXT,
      createdAt TEXT,
      updatedAt TEXT
    );`);

    tx.executeSql(`CREATE TABLE IF NOT EXISTS funders (
      id TEXT PRIMARY KEY NOT NULL,
      name TEXT NOT NULL,
      phone TEXT,
      email TEXT,
      createdAt TEXT,
      updatedAt TEXT
    );`);

    tx.executeSql(`CREATE TABLE IF NOT EXISTS helpers (
      id TEXT PRIMARY KEY NOT NULL,
      name TEXT NOT NULL,
      createdAt TEXT,
      updatedAt TEXT
    );`);

    tx.executeSql(`CREATE TABLE IF NOT EXISTS expenses (
      id TEXT PRIMARY KEY NOT NULL,
      title TEXT NOT NULL,
      amount REAL NOT NULL,
      status TEXT,
      assignedTo TEXT,
      categoryId TEXT,
      funderId TEXT,
      description TEXT,
      notes TEXT,
      createdAt TEXT,
      updatedAt TEXT
    );`);

    tx.executeSql(`CREATE TABLE IF NOT EXISTS budget (
      id TEXT PRIMARY KEY NOT NULL,
      totalBudget REAL NOT NULL DEFAULT 0,
      receivedFund REAL NOT NULL DEFAULT 0,
      peopleOverFund REAL NOT NULL DEFAULT 0,
      remainingFund REAL NOT NULL DEFAULT 0,
      updatedAt TEXT
    );`);
  });
};

initializeSchema();

// Emit helpers
const emitExpenses = async () => {
  const res = await runSql('SELECT * FROM expenses ORDER BY createdAt DESC');
  const all = res?.rows?._array || [];
  listeners.expenses.forEach(({ callback, categoryId }) => {
    const filtered = categoryId ? all.filter(e => e.categoryId === categoryId) : all;
    callback(filtered);
  });
};

const emitCategories = async () => {
  const res = await runSql('SELECT * FROM categories ORDER BY name ASC');
  const all = res?.rows?._array || [];
  listeners.categories.forEach(({ callback }) => callback(all));
};

const emitFunders = async () => {
  const res = await runSql('SELECT * FROM funders ORDER BY name ASC');
  const all = res?.rows?._array || [];
  listeners.funders.forEach(({ callback }) => callback(all));
};

// Category Operations
export const getCategories = async () => {
  const res = await runSql('SELECT * FROM categories ORDER BY name ASC');
  return res.rows._array;
};

export const addCategory = async (categoryData) => {
  const id = generateId();
  const createdAt = nowIso();
  await runSql('INSERT INTO categories (id, name, description, createdAt) VALUES (?, ?, ?, ?)', [id, categoryData.name, categoryData.description || null, createdAt]);
  await emitCategories();
  return { id, name: categoryData.name, description: categoryData.description || null, createdAt };
};

export const updateCategory = async (categoryId, categoryData) => {
  const updatedAt = nowIso();
  await runSql('UPDATE categories SET name = ?, description = ?, updatedAt = ? WHERE id = ?', [categoryData.name, categoryData.description || null, updatedAt, categoryId]);
  await emitCategories();
  return { id: categoryId, ...categoryData, updatedAt };
};

export const deleteCategory = async (categoryId) => {
  await runSql('DELETE FROM categories WHERE id = ?', [categoryId]);
  await emitCategories();
  return categoryId;
};

// Expense Operations
export const getExpense = async (id) => {
  const res = await runSql('SELECT * FROM expenses WHERE id = ? LIMIT 1', [id]);
  const row = res.rows._array[0];
  return row || null;
};

export const getExpenses = async (categoryId = null) => {
  if (categoryId) {
    const res = await runSql('SELECT * FROM expenses WHERE categoryId = ? ORDER BY createdAt DESC', [categoryId]);
    return res.rows._array;
  }
  const res = await runSql('SELECT * FROM expenses ORDER BY createdAt DESC');
  return res.rows._array;
};

// Real-time listener for expenses (emulated)
export const listenExpenses = (categoryId = null, callback) => {
  const listener = { callback, categoryId };
  listeners.expenses.add(listener);
  // Fire immediately with current data
  getExpenses(categoryId).then(data => callback(data)).catch(() => {});
  return () => listeners.expenses.delete(listener);
};

// Real-time listener for categories (emulated)
export const listenCategories = (callback) => {
  const listener = { callback };
  listeners.categories.add(listener);
  getCategories().then(data => callback(data)).catch(() => {});
  return () => listeners.categories.delete(listener);
};

// Real-time listener for funders (emulated)
export const listenFunders = (callback) => {
  const listener = { callback };
  listeners.funders.add(listener);
  getFunders().then(data => callback(data)).catch(() => {});
  return () => listeners.funders.delete(listener);
};

export const addExpense = async (expenseData) => {
  const id = generateId();
  const createdAt = nowIso();
  const { title = '', amount = 0, status = 'Outstanding', assignedTo = null, categoryId = null, funderId = null, description = null, notes = null } = expenseData || {};
  await runSql(
    'INSERT INTO expenses (id, title, amount, status, assignedTo, categoryId, funderId, description, notes, createdAt) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
    [id, title, Number(amount) || 0, status, assignedTo, categoryId, funderId, description, notes, createdAt]
  );
  await emitExpenses();
  return { id, title, amount: Number(amount) || 0, status, assignedTo, categoryId, funderId, description, notes, createdAt };
};

export const updateExpense = async (expenseId, expenseData) => {
  const updatedAt = nowIso();
  const { title, amount, status, assignedTo, categoryId, funderId, description, notes } = expenseData || {};
  // Build dynamic update to avoid overwriting with undefined
  const fields = [];
  const values = [];
  if (title !== undefined) { fields.push('title = ?'); values.push(title); }
  if (amount !== undefined) { fields.push('amount = ?'); values.push(Number(amount) || 0); }
  if (status !== undefined) { fields.push('status = ?'); values.push(status); }
  if (assignedTo !== undefined) { fields.push('assignedTo = ?'); values.push(assignedTo); }
  if (categoryId !== undefined) { fields.push('categoryId = ?'); values.push(categoryId); }
  if (funderId !== undefined) { fields.push('funderId = ?'); values.push(funderId); }
  if (description !== undefined) { fields.push('description = ?'); values.push(description); }
  if (notes !== undefined) { fields.push('notes = ?'); values.push(notes); }
  fields.push('updatedAt = ?');
  values.push(updatedAt);
  values.push(expenseId);
  const sql = `UPDATE expenses SET ${fields.join(', ')} WHERE id = ?`;
  await runSql(sql, values);
  await emitExpenses();
  return { id: expenseId, ...expenseData, updatedAt };
};

export const deleteExpense = async (expenseId) => {
  await runSql('DELETE FROM expenses WHERE id = ?', [expenseId]);
  await emitExpenses();
  return expenseId;
};

// Budget Operations
export const getBudgetSummary = async () => {
  const res = await runSql('SELECT * FROM budget WHERE id = ? LIMIT 1', ['summary']);
  const row = res.rows._array[0];
  if (row) return row;
  const defaultBudget = {
    totalBudget: 0,
    receivedFund: 0,
    peopleOverFund: 0,
    remainingFund: 0,
    updatedAt: nowIso(),
  };
  await runSql(
    'INSERT INTO budget (id, totalBudget, receivedFund, peopleOverFund, remainingFund, updatedAt) VALUES (?, ?, ?, ?, ?, ?)',
    ['summary', defaultBudget.totalBudget, defaultBudget.receivedFund, defaultBudget.peopleOverFund, defaultBudget.remainingFund, defaultBudget.updatedAt]
  );
  return defaultBudget;
};

export const updateBudgetSummary = async (budgetData) => {
  const updatedAt = nowIso();
  const current = await getBudgetSummary();
  const data = { ...current, ...budgetData, updatedAt };
  await runSql(
    'INSERT OR REPLACE INTO budget (id, totalBudget, receivedFund, peopleOverFund, remainingFund, updatedAt) VALUES (?, ?, ?, ?, ?, ?)',
    ['summary', Number(data.totalBudget) || 0, Number(data.receivedFund) || 0, Number(data.peopleOverFund) || 0, Number(data.remainingFund) || 0, updatedAt]
  );
  return data;
};

// Helper Operations
export const getHelpers = async () => {
  const res = await runSql('SELECT * FROM helpers ORDER BY name ASC');
  return res.rows._array;
};

export const addHelper = async (helperData) => {
  const id = generateId();
  const createdAt = nowIso();
  await runSql('INSERT INTO helpers (id, name, createdAt) VALUES (?, ?, ?)', [id, helperData.name, createdAt]);
  return { id, name: helperData.name, createdAt };
};

// Funder Operations
export const getFunders = async () => {
  const res = await runSql('SELECT * FROM funders ORDER BY name ASC');
  return res.rows._array;
};

export const addFunder = async (funderData) => {
  const id = generateId();
  const createdAt = nowIso();
  await runSql('INSERT INTO funders (id, name, phone, email, createdAt) VALUES (?, ?, ?, ?, ?)', [id, funderData.name, funderData.phone || null, funderData.email || null, createdAt]);
  await emitFunders();
  return { id, name: funderData.name, phone: funderData.phone || null, email: funderData.email || null, createdAt };
};

export const updateFunder = async (funderId, funderData) => {
  const updatedAt = nowIso();
  await runSql('UPDATE funders SET name = ?, phone = ?, email = ?, updatedAt = ? WHERE id = ?', [funderData.name, funderData.phone || null, funderData.email || null, updatedAt, funderId]);
  await emitFunders();
  return { id: funderId, ...funderData, updatedAt };
};

export const deleteFunder = async (funderId) => {
  await runSql('DELETE FROM funders WHERE id = ?', [funderId]);
  await emitFunders();
  return funderId;
};