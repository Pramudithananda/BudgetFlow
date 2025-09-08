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
      refreshData: () => {},
      getCategoryById: () => null,
      getFunderById: () => null,
      getExpenseById: () => null,
      getEventById: () => null,
      getExpensesByCategory: () => [],
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

  // Initialize database and load data
  useEffect(() => {
    initializeDatabase();
  }, []);

  const initializeDatabase = async () => {
    try {
      console.log('=== INITIALIZING DATABASE ===');
      setLoading(true);
      setError(null);

      // Initialize SQLite database
      await SQLiteService.initDatabase();
      console.log('Database initialized successfully');

      // Load all data from database
      await loadData();
      console.log('Data loaded successfully from database');
    } catch (error) {
      console.error('Error initializing database:', error);
      setError(error.message);
    } finally {
      setLoading(false);
    }
  };

  const loadData = async () => {
    try {
      console.log('=== LOADING DATA FROM DATABASE ===');
      
      // Load all data from database
      const [categoriesData, fundersData, expensesData, eventsData] = await Promise.all([
        SQLiteService.getCategories(),
        SQLiteService.getFunders(),
        SQLiteService.getExpenses(),
        SQLiteService.getEvents()
      ]);

      console.log('Loaded data from database:', {
        categories: categoriesData.length,
        funders: fundersData.length,
        expenses: expensesData.length,
        events: eventsData.length
      });

      // Update state with database data
      setCategories(categoriesData);
      setFunders(fundersData);
      setExpenses(expensesData);
      setEvents(eventsData);

      console.log('State updated with database data');
    } catch (error) {
      console.error('Error loading data:', error);
      setError(error.message);
      throw error;
    }
  };

  const refreshData = async () => {
    try {
      console.log('=== REFRESHING DATA ===');
      await loadData();
      console.log('Data refreshed successfully');
    } catch (error) {
      console.error('Error refreshing data:', error);
      setError(error.message);
    }
  };

  // Category CRUD operations
  const addCategory = async (categoryData) => {
    try {
      console.log('=== ADDING CATEGORY ===');
      console.log('Category data:', categoryData);
      
      const newCategory = await SQLiteService.addCategory(categoryData);
      console.log('Category added to database:', newCategory);
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Category added successfully');
      return newCategory;
    } catch (error) {
      console.error('Error adding category:', error);
      setError(error.message);
      throw error;
    }
  };

  const updateCategory = async (id, categoryData) => {
    try {
      console.log('=== UPDATING CATEGORY ===');
      console.log('Category ID:', id);
      console.log('Category data:', categoryData);
      
      await SQLiteService.updateCategory(id, categoryData);
      console.log('Category updated in database');
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Category updated successfully');
    } catch (error) {
      console.error('Error updating category:', error);
      setError(error.message);
      throw error;
    }
  };

  const deleteCategory = async (id) => {
    try {
      console.log('=== DELETING CATEGORY ===');
      console.log('Category ID:', id);
      
      await SQLiteService.deleteCategory(id);
      console.log('Category deleted from database');
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Category deleted successfully');
    } catch (error) {
      console.error('Error deleting category:', error);
      setError(error.message);
      throw error;
    }
  };

  // Funder CRUD operations
  const addFunder = async (funderData) => {
    try {
      console.log('=== ADDING FUNDER ===');
      console.log('Funder data:', funderData);
      
      const newFunder = await SQLiteService.addFunder(funderData);
      console.log('Funder added to database:', newFunder);
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Funder added successfully');
      return newFunder;
    } catch (error) {
      console.error('Error adding funder:', error);
      setError(error.message);
      throw error;
    }
  };

  const updateFunder = async (id, funderData) => {
    try {
      console.log('=== UPDATING FUNDER ===');
      console.log('Funder ID:', id);
      console.log('Funder data:', funderData);
      
      await SQLiteService.updateFunder(id, funderData);
      console.log('Funder updated in database');
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Funder updated successfully');
    } catch (error) {
      console.error('Error updating funder:', error);
      setError(error.message);
      throw error;
    }
  };

  const deleteFunder = async (id) => {
    try {
      console.log('=== DELETING FUNDER ===');
      console.log('Funder ID:', id);
      
      await SQLiteService.deleteFunder(id);
      console.log('Funder deleted from database');
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Funder deleted successfully');
    } catch (error) {
      console.error('Error deleting funder:', error);
      setError(error.message);
      throw error;
    }
  };

  // Expense CRUD operations
  const addExpense = async (expenseData) => {
    try {
      console.log('=== ADDING EXPENSE ===');
      console.log('Expense data:', expenseData);
      
      const newExpense = await SQLiteService.addExpense(expenseData);
      console.log('Expense added to database:', newExpense);
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Expense added successfully');
      return newExpense;
    } catch (error) {
      console.error('Error adding expense:', error);
      setError(error.message);
      throw error;
    }
  };

  const updateExpense = async (id, expenseData) => {
    try {
      console.log('=== UPDATING EXPENSE ===');
      console.log('Expense ID:', id);
      console.log('Expense data:', expenseData);
      
      await SQLiteService.updateExpense(id, expenseData);
      console.log('Expense updated in database');
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Expense updated successfully');
    } catch (error) {
      console.error('Error updating expense:', error);
      setError(error.message);
      throw error;
    }
  };

  const deleteExpense = async (id) => {
    try {
      console.log('=== DELETING EXPENSE ===');
      console.log('Expense ID:', id);
      
      await SQLiteService.deleteExpense(id);
      console.log('Expense deleted from database');
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Expense deleted successfully');
    } catch (error) {
      console.error('Error deleting expense:', error);
      setError(error.message);
      throw error;
    }
  };

  // Event CRUD operations
  const addEvent = async (eventData) => {
    try {
      console.log('=== ADDING EVENT ===');
      console.log('Event data:', eventData);
      
      const newEvent = await SQLiteService.addEvent(eventData);
      console.log('Event added to database:', newEvent);
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Event added successfully');
      return newEvent;
    } catch (error) {
      console.error('Error adding event:', error);
      setError(error.message);
      throw error;
    }
  };

  const updateEvent = async (id, eventData) => {
    try {
      console.log('=== UPDATING EVENT ===');
      console.log('Event ID:', id);
      console.log('Event data:', eventData);
      
      await SQLiteService.updateEvent(id, eventData);
      console.log('Event updated in database');
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Event updated successfully');
    } catch (error) {
      console.error('Error updating event:', error);
      setError(error.message);
      throw error;
    }
  };

  const deleteEvent = async (id) => {
    try {
      console.log('=== DELETING EVENT ===');
      console.log('Event ID:', id);
      
      await SQLiteService.deleteEvent(id);
      console.log('Event deleted from database');
      
      // Reload data to get updated state
      await loadData();
      
      console.log('Event deleted successfully');
    } catch (error) {
      console.error('Error deleting event:', error);
      setError(error.message);
      throw error;
    }
  };

  // Helper functions
  const getCategoryById = (id) => {
    return categories.find(category => String(category.id) === String(id));
  };

  const getFunderById = (id) => {
    return funders.find(funder => String(funder.id) === String(id));
  };

  const getExpenseById = (id) => {
    return expenses.find(expense => String(expense.id) === String(id));
  };

  const getEventById = (id) => {
    return events.find(event => String(event.id) === String(id));
  };

  const getExpensesByCategory = (categoryId) => {
    return expenses.filter(expense => String(expense.categoryId) === String(categoryId));
  };

  const value = {
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
    refreshData,
    getCategoryById,
    getFunderById,
    getExpenseById,
    getEventById,
    getExpensesByCategory,
  };

  return (
    <DataContext.Provider value={value}>
      {children}
    </DataContext.Provider>
  );
};