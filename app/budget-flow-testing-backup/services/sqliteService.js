import db, { initDb } from './database';

// Ensure DB tables are ready as soon as this module is imported
initDb().catch(err => console.error('DB init failed', err));

/************************ Helper utilities ************************/
const now = () => Math.floor(Date.now() / 1000);

const runQuery = (sql, params = []) => new Promise((resolve, reject) => {
  db.transaction(tx => {
    tx.executeSql(sql, params, (_, result) => resolve(result), (_, err) => {
      reject(err);
      return false;
    });
  });
});

const rowsToArray = (result) => {
  const { rows } = result;
  const out = [];
  for (let i = 0; i < rows.length; i++) {
    out.push(rows.item(i));
  }
  return out;
};

/************************ Event listeners ************************/
const listeners = {
  categories: new Set(),
  expenses: new Set(),
  funders: new Set(),
};

const notify = async (table) => {
  let data = [];
  switch (table) {
    case 'categories':
      data = await getCategories();
      break;
    case 'expenses':
      data = await getExpenses();
      break;
    case 'funders':
      data = await getFunders();
      break;
    default:
      break;
  }
  listeners[table].forEach(cb => cb(data));
};

/************************ Category Operations ************************/
export const getCategories = async () => {
  const res = await runQuery('SELECT * FROM categories ORDER BY name');
  return rowsToArray(res);
};

export const addCategory = async (categoryData) => {
  const { name } = categoryData;
  await runQuery('INSERT INTO categories (name, createdAt) VALUES (?, ?)', [name, now()]);
  const res = await runQuery('SELECT * FROM categories ORDER BY id DESC LIMIT 1');
  const newCat = rowsToArray(res)[0];
  await notify('categories');
  return newCat;
};

export const updateCategory = async (categoryId, categoryData) => {
  const { name } = categoryData;
  await runQuery('UPDATE categories SET name = ?, updatedAt = ? WHERE id = ?', [name, now(), categoryId]);
  const res = await runQuery('SELECT * FROM categories WHERE id = ?', [categoryId]);
  const updated = rowsToArray(res)[0];
  await notify('categories');
  return updated;
};

export const deleteCategory = async (categoryId) => {
  await runQuery('DELETE FROM categories WHERE id = ?', [categoryId]);
  await notify('categories');
  return categoryId;
};

/************************ Expense Operations ************************/
export const getExpense = async (id) => {
  const res = await runQuery('SELECT * FROM expenses WHERE id = ?', [id]);
  const rows = rowsToArray(res);
  return rows.length ? rows[0] : null;
};

export const getExpenses = async (categoryId = null) => {
  let res;
  if (categoryId) {
    res = await runQuery('SELECT * FROM expenses WHERE categoryId = ? ORDER BY createdAt DESC', [categoryId]);
  } else {
    res = await runQuery('SELECT * FROM expenses ORDER BY createdAt DESC');
  }
  return rowsToArray(res);
};

export const addExpense = async (expenseData) => {
  const { categoryId, title, description, amount, createdAt } = expenseData;
  const createdTs = createdAt ? Math.floor(new Date(createdAt).getTime() / 1000) : now();
  await runQuery(
    'INSERT INTO expenses (categoryId, title, description, amount, createdAt) VALUES (?, ?, ?, ?, ?)',
    [categoryId || null, title || '', description || '', amount || 0, createdTs]
  );
  const res = await runQuery('SELECT * FROM expenses ORDER BY id DESC LIMIT 1');
  const newExpense = rowsToArray(res)[0];
  await notify('expenses');
  return newExpense;
};

export const updateExpense = async (expenseId, expenseData) => {
  const { categoryId, title, description, amount } = expenseData;
  await runQuery(
    'UPDATE expenses SET categoryId = ?, title = ?, description = ?, amount = ?, updatedAt = ? WHERE id = ?',
    [categoryId || null, title || '', description || '', amount || 0, now(), expenseId]
  );
  const res = await runQuery('SELECT * FROM expenses WHERE id = ?', [expenseId]);
  const updated = rowsToArray(res)[0];
  await notify('expenses');
  return updated;
};

export const deleteExpense = async (expenseId) => {
  await runQuery('DELETE FROM expenses WHERE id = ?', [expenseId]);
  await notify('expenses');
  return expenseId;
};

/************************ Budget Summary Operations ************************/
export const getBudgetSummary = async () => {
  const res = await runQuery('SELECT * FROM budget_summary WHERE id = 1');
  return rowsToArray(res)[0];
};

export const updateBudgetSummary = async (budgetData) => {
  const { totalBudget, receivedFund, peopleOverFund, remainingFund } = budgetData;
  await runQuery(
    `UPDATE budget_summary
     SET totalBudget = ?, receivedFund = ?, peopleOverFund = ?, remainingFund = ?, updatedAt = ?
     WHERE id = 1`,
    [totalBudget, receivedFund, peopleOverFund, remainingFund, now()]
  );
  return getBudgetSummary();
};

/************************ Helper Operations ************************/
export const getHelpers = async () => {
  const res = await runQuery('SELECT * FROM helpers ORDER BY name');
  return rowsToArray(res);
};

export const addHelper = async (helperData) => {
  const { name } = helperData;
  await runQuery('INSERT INTO helpers (name, createdAt) VALUES (?, ?)', [name, now()]);
  const res = await runQuery('SELECT * FROM helpers ORDER BY id DESC LIMIT 1');
  return rowsToArray(res)[0];
};

/************************ Funder Operations ************************/
export const getFunders = async () => {
  const res = await runQuery('SELECT * FROM funders ORDER BY name');
  return rowsToArray(res);
};

export const addFunder = async (funderData) => {
  const { name } = funderData;
  await runQuery('INSERT INTO funders (name, createdAt) VALUES (?, ?)', [name, now()]);
  const res = await runQuery('SELECT * FROM funders ORDER BY id DESC LIMIT 1');
  const newFunder = rowsToArray(res)[0];
  await notify('funders');
  return newFunder;
};

export const updateFunder = async (funderId, funderData) => {
  const { name } = funderData;
  await runQuery('UPDATE funders SET name = ?, updatedAt = ? WHERE id = ?', [name, now(), funderId]);
  const res = await runQuery('SELECT * FROM funders WHERE id = ?', [funderId]);
  const updated = rowsToArray(res)[0];
  await notify('funders');
  return updated;
};

export const deleteFunder = async (funderId) => {
  await runQuery('DELETE FROM funders WHERE id = ?', [funderId]);
  await notify('funders');
  return funderId;
};

/************************ Listener helpers ************************/
export const listenCategories = (callback) => {
  listeners.categories.add(callback);
  // Send initial snapshot
  getCategories().then(callback);
  return () => listeners.categories.delete(callback);
};

export const listenExpenses = (categoryId = null, callback) => {
  const wrapper = async () => {
    const data = await getExpenses(categoryId);
    callback(data);
  };
  listeners.expenses.add(wrapper);
  wrapper();
  return () => listeners.expenses.delete(wrapper);
};

export const listenFunders = (callback) => {
  listeners.funders.add(callback);
  getFunders().then(callback);
  return () => listeners.funders.delete(callback);
};