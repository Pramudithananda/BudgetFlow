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

  // Initialize with static data first to prevent white screen
  useEffect(() => {
    loadStaticData();
  }, []);

  const loadStaticData = () => {
    console.log('=== LOADING STATIC DATA ===');
    setLoading(true);
    setError(null);

    // Load static data immediately to prevent white screen
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
    
    setLoading(false);
    console.log('Static data loaded successfully');
    
    // Try to initialize database in background (non-blocking)
    initializeDatabaseInBackground();
  };

  const initializeDatabaseInBackground = async () => {
    try {
      console.log('=== INITIALIZING DATABASE IN BACKGROUND ===');
      await SQLiteService.initDatabase();
      console.log('Database initialized successfully in background');
      
      // Try to load data from database
      await loadData();
      console.log('Data loaded from database in background');
    } catch (error) {
      console.error('Database initialization failed in background:', error);
      console.log('Continuing with static data');
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
    console.log('=== ADDING CATEGORY ===');
    console.log('Category data:', categoryData);
    
    // Direct state update (no database dependency)
    const newCategory = {
      id: Date.now(), // Generate temporary ID
      name: categoryData.name,
      color: categoryData.color || '#64a12d',
      description: categoryData.description || '',
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString()
    };
    
    setCategories(prev => [...prev, newCategory]);
    console.log('Category added to state successfully');
    return newCategory;
  };

  const updateCategory = async (id, categoryData) => {
    console.log('=== UPDATING CATEGORY ===');
    console.log('Category ID:', id);
    console.log('Category data:', categoryData);
    
    // Direct state update (no database dependency)
    setCategories(prev => prev.map(category => 
      String(category.id) === String(id) 
        ? { ...category, ...categoryData, updated_at: new Date().toISOString() }
        : category
    ));
    console.log('Category updated in state successfully');
  };

  const deleteCategory = async (id) => {
    console.log('=== DELETING CATEGORY ===');
    console.log('Category ID:', id);
    
    // Direct state update (no database dependency)
    setCategories(prev => prev.filter(category => String(category.id) !== String(id)));
    setExpenses(prev => prev.filter(expense => String(expense.categoryId) !== String(id)));
    console.log('Category deleted from state successfully');
  };

  // Funder CRUD operations
  const addFunder = async (funderData) => {
    console.log('=== ADDING FUNDER ===');
    console.log('Funder data:', funderData);
    
    // Direct state update (no database dependency)
    const newFunder = {
      id: Date.now(), // Generate temporary ID
      name: funderData.name,
      phone: funderData.phone || '',
      email: funderData.email || '',
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString()
    };
    
    setFunders(prev => [...prev, newFunder]);
    console.log('Funder added to state successfully');
    return newFunder;
  };

  const updateFunder = async (id, funderData) => {
    console.log('=== UPDATING FUNDER ===');
    console.log('Funder ID:', id);
    console.log('Funder data:', funderData);
    
    // Direct state update (no database dependency)
    setFunders(prev => prev.map(funder => 
      String(funder.id) === String(id) 
        ? { ...funder, ...funderData, updated_at: new Date().toISOString() }
        : funder
    ));
    console.log('Funder updated in state successfully');
  };

  const deleteFunder = async (id) => {
    console.log('=== DELETING FUNDER ===');
    console.log('Funder ID:', id);
    
    // Direct state update (no database dependency)
    setFunders(prev => prev.filter(funder => String(funder.id) !== String(id)));
    console.log('Funder deleted from state successfully');
  };

  // Expense CRUD operations
  const addExpense = async (expenseData) => {
    console.log('=== ADDING EXPENSE ===');
    console.log('Expense data:', expenseData);
    
    // Direct state update (no database dependency)
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
    console.log('Expense added to state successfully');
    return newExpense;
  };

  const updateExpense = async (id, expenseData) => {
    console.log('=== UPDATING EXPENSE ===');
    console.log('Expense ID:', id);
    console.log('Expense data:', expenseData);
    
    // Direct state update (no database dependency)
    setExpenses(prev => prev.map(expense => 
      String(expense.id) === String(id) 
        ? { ...expense, ...expenseData, updated_at: new Date().toISOString() }
        : expense
    ));
    console.log('Expense updated in state successfully');
  };

  const deleteExpense = async (id) => {
    console.log('=== DELETING EXPENSE ===');
    console.log('Expense ID:', id);
    
    // Direct state update (no database dependency)
    setExpenses(prev => prev.filter(expense => String(expense.id) !== String(id)));
    console.log('Expense deleted from state successfully');
  };

  // Event CRUD operations
  const addEvent = async (eventData) => {
    console.log('=== ADDING EVENT ===');
    console.log('Event data:', eventData);
    
    // Direct state update (no database dependency)
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
    console.log('Event added to state successfully');
    return newEvent;
  };

  const updateEvent = async (id, eventData) => {
    console.log('=== UPDATING EVENT ===');
    console.log('Event ID:', id);
    console.log('Event data:', eventData);
    
    // Direct state update (no database dependency)
    setEvents(prev => prev.map(event => 
      String(event.id) === String(id) 
        ? { ...event, ...eventData }
        : event
    ));
    console.log('Event updated in state successfully');
  };

  const deleteEvent = async (id) => {
    console.log('=== DELETING EVENT ===');
    console.log('Event ID:', id);
    
    // Direct state update (no database dependency)
    setEvents(prev => prev.filter(event => String(event.id) !== String(id)));
    console.log('Event deleted from state successfully');
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