import React, { createContext, useContext, useState, useEffect } from 'react';
import * as SQLiteService from '../services/sqliteService';

const DataContext = createContext();

export const useData = () => {
  const context = useContext(DataContext);
  if (!context) {
    console.warn('useData must be used within a DataProvider');
    return {
      categories: [],
      funders: [],
      expenses: [],
      events: [],
      loading: false,
      error: null,
      addCategory: () => {},
      updateCategory: () => {},
      deleteCategory: () => {},
      addFunder: () => {},
      updateFunder: () => {},
      deleteFunder: () => {},
      addExpense: () => {},
      updateExpense: () => {},
      deleteExpense: () => {},
      addEvent: () => {},
      updateEvent: () => {},
      deleteEvent: () => {},
      getCategoryById: () => null,
      getFunderById: () => null,
      getExpenseById: () => null,
      getEventById: () => null,
      getExpensesByCategory: () => [],
      getExpensesByEvent: () => [],
      getBudgetSummary: () => ({ totalBudget: 0, totalSpent: 0, totalReceived: 0, remaining: 0, pending: 0 }),
      getStatusTotals: () => ({ Pending: 0, Spent: 0, Available: 0, Outstanding: 0 }),
      refreshData: () => {}
    };
  }
  return context;
};

export const DataProvider = ({ children }) => {
  const [categories, setCategories] = useState([]);
  const [funders, setFunders] = useState([]);
  const [expenses, setExpenses] = useState([]);
  const [events, setEvents] = useState([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  // Load all data from database
  const loadData = async () => {
    setLoading(true);
    setError(null);
    
    try {
      console.log('Loading static data...');
      
      // Use static data for now
      const categoriesData = [
        { id: 1, name: 'Food & Beverages', color: '#64a12d', description: 'Meals, snacks, and drinks' },
        { id: 2, name: 'Decorations', color: '#ff6b6b', description: 'Party decorations and setup' },
        { id: 3, name: 'Transportation', color: '#4ecdc4', description: 'Travel and transport costs' },
        { id: 4, name: 'Other Expenses', color: '#45b7d1', description: 'Miscellaneous expenses' }
      ];
      setCategories(categoriesData);
      console.log('Categories loaded:', categoriesData.length);
      
      const fundersData = [
        { id: 1, name: 'Sujith', phone: '+94 77 123 4567', email: 'sujith@example.com' },
        { id: 2, name: 'Nirvan', phone: '+94 78 234 5678', email: 'nirvan@example.com' },
        { id: 3, name: 'Welfare Funding', phone: '+94 11 345 6789', email: 'welfare@funding.org' }
      ];
      setFunders(fundersData);
      console.log('Funders loaded:', fundersData.length);
      
      const eventsData = [
        { 
          id: 1, 
          name: 'Birthday Celebration', 
          date: '2024-10-01', 
          category: 'Conference',
          budget: 100000,
          description: 'Annual birthday celebration event',
          location: 'Colombo'
        }
      ];
      setEvents(eventsData);
      console.log('Events loaded:', eventsData.length);
      
      const expensesData = [
        { id: 1, title: 'Food & Beverages', amount: 60000, status: 'Spent', categoryId: 1, assignedTo: 'Sujith', date: '2024-01-15', description: 'Birthday party catering' },
        { id: 2, title: 'Decorations', amount: 20000, status: 'Available', categoryId: 2, assignedTo: 'Nirvan', date: '2024-01-16', description: 'Party decorations and balloons' },
        { id: 3, title: 'Transportation', amount: 10000, status: 'Pending', categoryId: 3, assignedTo: 'Welfare', date: '2024-01-17', description: 'Transport for guests' },
        { id: 4, title: 'Other Expenses', amount: 10000, status: 'Outstanding', categoryId: 4, assignedTo: 'Sujith', date: '2024-01-18', description: 'Miscellaneous costs' }
      ];
      setExpenses(expensesData);
      
      console.log('All data loaded successfully');
    } catch (err) {
      console.error('Error loading data:', err);
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  // Load data on mount
  useEffect(() => {
    loadData();
  }, []);

  // Category CRUD operations
  const addCategory = async (categoryData) => {
    try {
      console.log('Adding category:', categoryData);
      const newCategory = {
        id: Date.now(),
        name: categoryData.name,
        color: categoryData.color || '#64a12d',
        description: categoryData.description || '',
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      };
      
      setCategories(prev => [...prev, newCategory]);
      console.log('Category added successfully:', newCategory);
      return newCategory;
    } catch (error) {
      console.error('Error adding category:', error);
      setError(error.message);
      throw error;
    }
  };

  const updateCategory = async (id, categoryData) => {
    try {
      // We'll need to add updateCategory to SQLiteService
      console.log('Updating category:', id, categoryData);
      await loadData(); // Reload data
    } catch (error) {
      console.error('Error updating category:', error);
      setError(error.message);
      throw error;
    }
  };

  const deleteCategory = async (id) => {
    try {
      // We'll need to add deleteCategory to SQLiteService
      console.log('Deleting category:', id);
      await loadData(); // Reload data
    } catch (error) {
      console.error('Error deleting category:', error);
      setError(error.message);
      throw error;
    }
  };

  // Funder CRUD operations
  const addFunder = async (funderData) => {
    try {
      console.log('Adding funder:', funderData);
      const newFunder = {
        id: Date.now(),
        name: funderData.name,
        phone: funderData.phone || '',
        email: funderData.email || '',
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      };
      
      setFunders(prev => [...prev, newFunder]);
      console.log('Funder added successfully:', newFunder);
      return newFunder;
    } catch (error) {
      console.error('Error adding funder:', error);
      setError(error.message);
      throw error;
    }
  };

  const updateFunder = async (id, funderData) => {
    try {
      // We'll need to add updateFunder to SQLiteService
      console.log('Updating funder:', id, funderData);
      await loadData(); // Reload data
    } catch (error) {
      console.error('Error updating funder:', error);
      setError(error.message);
      throw error;
    }
  };

  const deleteFunder = async (id) => {
    try {
      // We'll need to add deleteFunder to SQLiteService
      console.log('Deleting funder:', id);
      await loadData(); // Reload data
    } catch (error) {
      console.error('Error deleting funder:', error);
      setError(error.message);
      throw error;
    }
  };

  // Expense CRUD operations
  const addExpense = async (expenseData) => {
    try {
      console.log('Adding expense:', expenseData);
      const newExpense = {
        id: Date.now(),
        title: expenseData.title,
        amount: expenseData.amount,
        status: expenseData.status,
        categoryId: expenseData.categoryId,
        assignedTo: expenseData.assignedTo || '',
        date: expenseData.date || new Date().toISOString().split('T')[0],
        description: expenseData.description || '',
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      };
      
      setExpenses(prev => [...prev, newExpense]);
      console.log('Expense added successfully:', newExpense);
      return newExpense;
    } catch (error) {
      console.error('Error adding expense:', error);
      setError(error.message);
      throw error;
    }
  };

  const updateExpense = async (id, expenseData) => {
    try {
      console.log('Updating expense:', id, expenseData);
      // We'll need to add updateExpense to SQLiteService
      await loadData(); // Reload data
    } catch (error) {
      console.error('Error updating expense:', error);
      setError(error.message);
      throw error;
    }
  };

  const deleteExpense = async (id) => {
    try {
      console.log('Deleting expense:', id);
      // We'll need to add deleteExpense to SQLiteService
      await loadData(); // Reload data
    } catch (error) {
      console.error('Error deleting expense:', error);
      setError(error.message);
      throw error;
    }
  };

  // Event CRUD operations
  const addEvent = async (eventData) => {
    try {
      console.log('Adding event:', eventData);
      const newEvent = {
        id: Date.now(),
        name: eventData.name,
        description: eventData.description || '',
        date: eventData.date || '',
        budget: eventData.budget || 0,
        location: eventData.location || '',
        category: eventData.category || '',
        createdAt: new Date().toISOString()
      };
      
      setEvents(prev => [...prev, newEvent]);
      console.log('Event added successfully:', newEvent);
      return newEvent.id;
    } catch (error) {
      console.error('Error adding event:', error);
      setError(error.message);
      throw error;
    }
  };

  const updateEvent = async (id, eventData) => {
    try {
      console.log('Updating event:', id, eventData);
      // We'll need to add updateEvent to SQLiteService
      await loadData(); // Reload data
    } catch (error) {
      console.error('Error updating event:', error);
      setError(error.message);
      throw error;
    }
  };

  const deleteEvent = async (id) => {
    try {
      console.log('Deleting event:', id);
      // We'll need to add deleteEvent to SQLiteService
      await loadData(); // Reload data
    } catch (error) {
      console.error('Error deleting event:', error);
      setError(error.message);
      throw error;
    }
  };

  // Helper functions for data retrieval
  const getCategoryById = (id) => categories.find(cat => String(cat.id) === String(id));
  const getFunderById = (id) => funders.find(funder => String(funder.id) === String(id));
  const getExpenseById = (id) => expenses.find(exp => String(exp.id) === String(id));
  const getEventById = (id) => events.find(event => String(event.id) === String(id));

  const getExpensesByCategory = (categoryId) => expenses.filter(exp => String(exp.categoryId) === String(categoryId));
  const getExpensesByEvent = (eventId) => {
    const event = getEventById(eventId);
    if (!event || !event.expenses) return [];
    return expenses.filter(exp => event.expenses.includes(exp.id));
  };

  const getBudgetSummary = () => {
    const totalBudget = events.reduce((sum, event) => sum + (event.budget || 0), 0);
    const totalSpent = expenses.filter(exp => exp.status === 'Spent').reduce((sum, exp) => sum + (exp.amount || 0), 0);
    const totalReceived = funders.reduce((sum, funder) => sum + (funder.totalAmount || 0), 0);
    const remaining = totalBudget - totalSpent;
    const pending = funders.filter(funder => funder.status === 'Pending').reduce((sum, funder) => sum + (funder.totalAmount || 0), 0);

    return { totalBudget, totalSpent, totalReceived, remaining, pending };
  };

  const getStatusTotals = () => {
    const totals = { Pending: 0, Spent: 0, Available: 0, Outstanding: 0 };
    expenses.forEach(exp => {
      if (totals.hasOwnProperty(exp.status)) {
        totals[exp.status] += exp.amount;
      }
    });
    return totals;
  };

  const refreshData = () => {
    loadData();
  };

  const contextValue = {
    categories,
    funders,
    expenses,
    events,
    loading,
    error,
    addCategory,
    updateCategory,
    deleteCategory,
    addFunder,
    updateFunder,
    deleteFunder,
    addExpense,
    updateExpense,
    deleteExpense,
    addEvent,
    updateEvent,
    deleteEvent,
    getCategoryById,
    getFunderById,
    getExpenseById,
    getEventById,
    getExpensesByCategory,
    getExpensesByEvent,
    getBudgetSummary,
    getStatusTotals,
    refreshData
  };

  return (
    <DataContext.Provider value={contextValue}>
      {children}
    </DataContext.Provider>
  );
};