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
      console.log('Falling back to static data due to database error');
      
      // Fallback to static data if database fails
      setCategories([
        { id: 1, name: 'Food & Beverages', color: '#64a12d', description: 'Meals, snacks, and drinks' },
        { id: 2, name: 'Decorations', color: '#ff6b6b', description: 'Party decorations and setup' },
        { id: 3, name: 'Transportation', color: '#4ecdc4', description: 'Travel and transport costs' },
        { id: 4, name: 'Other Expenses', color: '#45b7d1', description: 'Miscellaneous expenses' }
      ]);
      
      setFunders([
        { id: 1, name: 'Sujith', phone: '+94 77 123 4567', email: 'sujith@example.com' },
        { id: 2, name: 'Nirvan', phone: '+94 78 234 5678', email: 'nirvan@example.com' },
        { id: 3, name: 'Welfare Funding', phone: '+94 11 345 6789', email: 'welfare@funding.org' }
      ]);
      
      setExpenses([
        { id: 1, title: 'Food & Beverages', amount: 60000, status: 'Spent', categoryId: 1, assignedTo: 'Sujith', date: '2024-01-15', description: 'Birthday party catering' },
        { id: 2, title: 'Decorations', amount: 20000, status: 'Available', categoryId: 2, assignedTo: 'Nirvan', date: '2024-01-16', description: 'Party decorations and balloons' },
        { id: 3, title: 'Transportation', amount: 10000, status: 'Pending', categoryId: 3, assignedTo: 'Welfare', date: '2024-01-17', description: 'Transport for guests' },
        { id: 4, title: 'Other Expenses', amount: 10000, status: 'Outstanding', categoryId: 4, assignedTo: 'Sujith', date: '2024-01-18', description: 'Miscellaneous costs' }
      ]);
      
      setEvents([
        { 
          id: 1, 
          name: 'Birthday Celebration', 
          date: '2024-10-01', 
          category: 'Conference',
          budget: 100000,
          description: 'Annual birthday celebration event',
          location: 'Colombo'
        }
      ]);
      
      setError('Database unavailable - using offline mode');
      console.log('Static data loaded as fallback');
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
      console.error('Error adding category to database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      const newCategory = {
        id: Date.now(), // Generate temporary ID
        name: categoryData.name,
        color: categoryData.color || '#64a12d',
        description: categoryData.description || '',
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      };
      
      setCategories(prev => [...prev, newCategory]);
      console.log('Category added to state as fallback');
      return newCategory;
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
      console.error('Error updating category in database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      setCategories(prev => prev.map(category => 
        String(category.id) === String(id) 
          ? { ...category, ...categoryData, updated_at: new Date().toISOString() }
          : category
      ));
      console.log('Category updated in state as fallback');
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
      console.error('Error deleting category from database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      setCategories(prev => prev.filter(category => String(category.id) !== String(id)));
      setExpenses(prev => prev.filter(expense => String(expense.categoryId) !== String(id)));
      console.log('Category deleted from state as fallback');
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
      console.error('Error adding funder to database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      const newFunder = {
        id: Date.now(), // Generate temporary ID
        name: funderData.name,
        phone: funderData.phone || '',
        email: funderData.email || '',
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      };
      
      setFunders(prev => [...prev, newFunder]);
      console.log('Funder added to state as fallback');
      return newFunder;
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
      console.error('Error updating funder in database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      setFunders(prev => prev.map(funder => 
        String(funder.id) === String(id) 
          ? { ...funder, ...funderData, updated_at: new Date().toISOString() }
          : funder
      ));
      console.log('Funder updated in state as fallback');
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
      console.error('Error deleting funder from database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      setFunders(prev => prev.filter(funder => String(funder.id) !== String(id)));
      console.log('Funder deleted from state as fallback');
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
      console.error('Error adding expense to database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      const newExpense = {
        id: Date.now(), // Generate temporary ID
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
      
      setExpenses(prev => [...prev, newExpense]);
      console.log('Expense added to state as fallback');
      return newExpense;
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
      console.error('Error updating expense in database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      setExpenses(prev => prev.map(expense => 
        String(expense.id) === String(id) 
          ? { ...expense, ...expenseData, updated_at: new Date().toISOString() }
          : expense
      ));
      console.log('Expense updated in state as fallback');
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
      console.error('Error deleting expense from database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      setExpenses(prev => prev.filter(expense => String(expense.id) !== String(id)));
      console.log('Expense deleted from state as fallback');
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
      console.error('Error adding event to database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      const newEvent = {
        id: Date.now(), // Generate temporary ID
        name: eventData.name,
        description: eventData.description || '',
        date: eventData.date || '',
        budget: eventData.budget || 0,
        location: eventData.location || '',
        category: eventData.category || '',
        createdAt: new Date().toISOString()
      };
      
      setEvents(prev => [...prev, newEvent]);
      console.log('Event added to state as fallback');
      return newEvent;
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
      console.error('Error updating event in database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      setEvents(prev => prev.map(event => 
        String(event.id) === String(id) 
          ? { ...event, ...eventData }
          : event
      ));
      console.log('Event updated in state as fallback');
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
      console.error('Error deleting event from database:', error);
      console.log('Falling back to state update');
      
      // Fallback to state update if database fails
      setEvents(prev => prev.filter(event => String(event.id) !== String(id)));
      console.log('Event deleted from state as fallback');
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