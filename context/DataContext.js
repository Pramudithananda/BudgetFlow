import React, { createContext, useContext, useState } from 'react';

const DataContext = createContext();

export const useData = () => {
  const context = useContext(DataContext);
  if (!context) {
    console.warn('useData must be used within a DataProvider');
    // Return default values instead of throwing error
    return {
      categories: [],
      funders: [],
      expenses: [],
      events: [],
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
      getStatusTotals: () => ({ Pending: 0, Spent: 0, Available: 0, Outstanding: 0 })
    };
  }
  return context;
};

export const DataProvider = ({ children }) => {
  // Initial sample data
  const [categories, setCategories] = useState([
    { id: 1, name: 'Food & Beverages', color: '#64a12d', description: 'Meals, snacks, and drinks' },
    { id: 2, name: 'Decorations', color: '#ff6b6b', description: 'Party decorations and setup' },
    { id: 3, name: 'Transportation', color: '#4ecdc4', description: 'Travel and transport costs' },
    { id: 4, name: 'Other Expenses', color: '#45b7d1', description: 'Miscellaneous expenses' }
  ]);

  const [funders, setFunders] = useState([
    { 
      id: 1, 
      name: 'Sujith', 
      phone: '+94 77 123 4567', 
      email: 'sujith@example.com',
      totalAmount: 25000,
      status: 'Spent'
    },
    { 
      id: 2, 
      name: 'Nirvan', 
      phone: '+94 78 234 5678', 
      email: 'nirvan@example.com',
      totalAmount: 40000,
      status: 'Available'
    },
    { 
      id: 3, 
      name: 'Welfare Funding', 
      phone: '+94 11 345 6789', 
      email: 'welfare@funding.org',
      totalAmount: 35000,
      status: 'Pending'
    }
  ]);

  const [expenses, setExpenses] = useState([
    { id: 1, title: 'Food & Beverages', amount: 60000, status: 'Spent', categoryId: 1, assignedTo: 'Sujith', date: '2024-01-15', description: 'Birthday party catering' },
    { id: 2, title: 'Decorations', amount: 20000, status: 'Available', categoryId: 2, assignedTo: 'Nirvan', date: '2024-01-16', description: 'Party decorations and balloons' },
    { id: 3, title: 'Transportation', amount: 10000, status: 'Pending', categoryId: 3, assignedTo: 'Welfare', date: '2024-01-17', description: 'Transport for guests' },
    { id: 4, title: 'Other Expenses', amount: 10000, status: 'Outstanding', categoryId: 4, assignedTo: 'Sujith', date: '2024-01-18', description: 'Miscellaneous costs' }
  ]);

  const [events, setEvents] = useState([
    { 
      id: 1, 
      name: 'Birthday Celebration', 
      date: '2024-10-01', 
      category: 'Conference',
      totalFunding: 100000,
      receivedFunding: 25000,
      pendingFunding: 75000,
      description: 'Annual birthday celebration event',
      location: 'Colombo',
      expenses: [1, 2, 3, 4], // expense IDs
      funders: [1, 2, 3] // funder IDs
    }
  ]);

  // Category CRUD operations
  const addCategory = (categoryData) => {
    console.log('Adding category:', categoryData);
    const newCategory = {
      id: Date.now(),
      ...categoryData,
      createdAt: new Date().toISOString()
    };
    console.log('New category created:', newCategory);
    setCategories(prev => {
      const updated = [...prev, newCategory];
      console.log('Categories updated:', updated);
      return updated;
    });
    return newCategory;
  };

  const updateCategory = (id, categoryData) => {
    setCategories(prev => prev.map(cat => 
      cat.id === id ? { ...cat, ...categoryData, updatedAt: new Date().toISOString() } : cat
    ));
  };

  const deleteCategory = (id) => {
    setCategories(prev => prev.filter(cat => cat.id !== id));
    // Also remove expenses in this category
    setExpenses(prev => prev.filter(exp => exp.categoryId !== id));
  };

  // Funder CRUD operations
  const addFunder = (funderData) => {
    console.log('Adding funder:', funderData);
    const newFunder = {
      id: Date.now(),
      ...funderData,
      createdAt: new Date().toISOString()
    };
    console.log('New funder created:', newFunder);
    setFunders(prev => {
      const updated = [...prev, newFunder];
      console.log('Funders updated:', updated);
      return updated;
    });
    return newFunder;
  };

  const updateFunder = (id, funderData) => {
    setFunders(prev => prev.map(funder => 
      funder.id === id ? { ...funder, ...funderData, updatedAt: new Date().toISOString() } : funder
    ));
  };

  const deleteFunder = (id) => {
    setFunders(prev => prev.filter(funder => funder.id !== id));
  };

  // Expense CRUD operations
  const addExpense = (expenseData) => {
    const newExpense = {
      id: Date.now(),
      ...expenseData,
      createdAt: new Date().toISOString()
    };
    setExpenses(prev => [...prev, newExpense]);
    return newExpense;
  };

  const updateExpense = (id, expenseData) => {
    setExpenses(prev => prev.map(exp => 
      exp.id === id ? { ...exp, ...expenseData, updatedAt: new Date().toISOString() } : exp
    ));
  };

  const deleteExpense = (id) => {
    setExpenses(prev => prev.filter(exp => exp.id !== id));
  };

  // Event CRUD operations
  const addEvent = (eventData) => {
    const newEvent = {
      id: Date.now(),
      ...eventData,
      createdAt: new Date().toISOString()
    };
    setEvents(prev => [...prev, newEvent]);
    return newEvent;
  };

  const updateEvent = (id, eventData) => {
    setEvents(prev => prev.map(event => 
      event.id === id ? { ...event, ...eventData, updatedAt: new Date().toISOString() } : event
    ));
  };

  const deleteEvent = (id) => {
    setEvents(prev => prev.filter(event => event.id !== id));
  };

  // Helper functions
  const getCategoryById = (id) => categories.find(cat => cat.id === id);
  const getFunderById = (id) => funders.find(funder => funder.id === id);
  const getExpenseById = (id) => expenses.find(exp => exp.id === id);
  const getEventById = (id) => events.find(event => event.id === id);

  const getExpensesByCategory = (categoryId) => expenses.filter(exp => exp.categoryId === categoryId);
  const getExpensesByEvent = (eventId) => {
    const event = getEventById(eventId);
    if (!event) return [];
    return expenses.filter(exp => event.expenses.includes(exp.id));
  };

  const getBudgetSummary = () => {
    const totalBudget = events.reduce((sum, event) => sum + event.totalFunding, 0);
    const totalSpent = expenses.reduce((sum, exp) => sum + exp.amount, 0);
    const totalReceived = events.reduce((sum, event) => sum + event.receivedFunding, 0);
    
    return {
      totalBudget,
      totalSpent,
      totalReceived,
      remaining: totalBudget - totalSpent,
      pending: totalBudget - totalReceived
    };
  };

  const getStatusTotals = () => {
    const statusTotals = {
      Pending: 0,
      Spent: 0,
      Available: 0,
      Outstanding: 0
    };
    
    expenses.forEach(expense => {
      if (statusTotals.hasOwnProperty(expense.status)) {
        statusTotals[expense.status] += expense.amount;
      }
    });
    
    return statusTotals;
  };

  const value = {
    // Data
    categories,
    funders,
    expenses,
    events,
    
    // Category operations
    addCategory,
    updateCategory,
    deleteCategory,
    
    // Funder operations
    addFunder,
    updateFunder,
    deleteFunder,
    
    // Expense operations
    addExpense,
    updateExpense,
    deleteExpense,
    
    // Event operations
    addEvent,
    updateEvent,
    deleteEvent,
    
    // Helper functions
    getCategoryById,
    getFunderById,
    getExpenseById,
    getEventById,
    getExpensesByCategory,
    getExpensesByEvent,
    getBudgetSummary,
    getStatusTotals
  };

  return (
    <DataContext.Provider value={value}>
      {children}
    </DataContext.Provider>
  );
};