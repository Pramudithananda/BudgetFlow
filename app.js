import React, { useState, useEffect } from 'react';
import { 
  ChevronRight, Plus, Calendar, Users, DollarSign, TrendingUp, 
  TrendingDown, Clock, CheckCircle, AlertCircle, Edit, Trash2,
  Save, X, PieChart, BarChart3
} from 'lucide-react';

// Initial sample data
const initialEvents = [
  {
    id: 1,
    name: "Birthday Party",
    date: "2025-11-25",
    totalBudget: 325000,
    status: "active",
    expenses: [],
    funders: []
  }
];

const initialCategories = [
  { id: 1, name: "Dressing", color: "#3B82F6", icon: "👔" },
  { id: 2, name: "Food", color: "#EF4444", icon: "🍽️" },
  { id: 3, name: "Venue", color: "#10B981", icon: "🏛️" },
  { id: 4, name: "Decoration", color: "#F59E0B", icon: "🎨" },
  { id: 5, name: "Entertainment", color: "#8B5CF6", icon: "🎵" }
];

const initialFunders = [
  { id: 1, name: "Self Funded", color: "#6366F1" },
  { id: 2, name: "Sponsors", color: "#EC4899" },
  { id: 3, name: "Donations", color: "#14B8A6" }
];

export default function BudgetFlowApp() {
  const [events, setEvents] = useState(initialEvents);
  const [categories, setCategories] = useState(initialCategories);
  const [funders, setFunders] = useState(initialFunders);
  const [activeView, setActiveView] = useState('home');
  const [selectedEvent, setSelectedEvent] = useState(null);
  const [showModal, setShowModal] = useState(false);
  const [modalType, setModalType] = useState('');

  // Form states
  const [formData, setFormData] = useState({});

  // Calculate event statistics
  const calculateEventStats = (event) => {
    const expenses = event.expenses || [];
    const funders = event.funders || [];

    const totalSpent = expenses
      .filter(e => e.status === 'spent')
      .reduce((sum, e) => sum + e.amount, 0);

    const totalPending = expenses
      .filter(e => e.status === 'pending')
      .reduce((sum, e) => sum + e.amount, 0);

    const totalOutstanding = expenses
      .filter(e => e.status === 'outstanding')
      .reduce((sum, e) => sum + e.amount, 0);

    const totalReceived = funders
      .filter(f => f.status === 'received')
      .reduce((sum, f) => sum + f.amount, 0);

    const totalExpected = funders
      .reduce((sum, f) => sum + f.amount, 0);

    return {
      totalSpent,
      totalPending,
      totalOutstanding,
      totalReceived,
      totalExpected,
      remaining: event.totalBudget - totalSpent,
      receivedPercentage: event.totalBudget > 0 ? (totalReceived / event.totalBudget * 100) : 0
    };
  };

  // Add new event
  const addEvent = () => {
    const newEvent = {
      id: Date.now(),
      name: formData.name || "New Event",
      date: formData.date || new Date().toISOString().split('T')[0],
      totalBudget: parseFloat(formData.budget) || 0,
      status: "active",
      expenses: [],
      funders: []
    };
    setEvents([...events, newEvent]);
    setShowModal(false);
    setFormData({});
  };

  // Add expense to event
  const addExpense = () => {
    const updatedEvents = events.map(event => {
      if (event.id === selectedEvent.id) {
        const newExpense = {
          id: Date.now(),
          title: formData.title || "New Expense",
          amount: parseFloat(formData.amount) || 0,
          category: formData.category || categories[0].id,
          status: formData.status || 'pending',
          date: formData.date || new Date().toISOString().split('T')[0]
        };
        return {
          ...event,
          expenses: [...(event.expenses || []), newExpense]
        };
      }
      return event;
    });
    setEvents(updatedEvents);
    setSelectedEvent(updatedEvents.find(e => e.id === selectedEvent.id));
    setShowModal(false);
    setFormData({});
  };

  // Add funder to event
  const addFunder = () => {
    const updatedEvents = events.map(event => {
      if (event.id === selectedEvent.id) {
        const newFunder = {
          id: Date.now(),
          name: formData.funderName || "New Funder",
          amount: parseFloat(formData.amount) || 0,
          type: formData.funderType || funders[0].id,
          status: formData.status || 'expected',
          date: formData.date || new Date().toISOString().split('T')[0]
        };
        return {
          ...event,
          funders: [...(event.funders || []), newFunder]
        };
      }
      return event;
    });
    setEvents(updatedEvents);
    setSelectedEvent(updatedEvents.find(e => e.id === selectedEvent.id));
    setShowModal(false);
    setFormData({});
  };

  // Delete expense
  const deleteExpense = (expenseId) => {
    const updatedEvents = events.map(event => {
      if (event.id === selectedEvent.id) {
        return {
          ...event,
          expenses: event.expenses.filter(e => e.id !== expenseId)
        };
      }
      return event;
    });
    setEvents(updatedEvents);
    setSelectedEvent(updatedEvents.find(e => e.id === selectedEvent.id));
  };

  // Get category name
  const getCategoryName = (categoryId) => {
    const category = categories.find(c => c.id === categoryId);
    return category ? category.name : "Unknown";
  };

  // Get category color
  const getCategoryColor = (categoryId) => {
    const category = categories.find(c => c.id === categoryId);
    return category ? category.color : "#gray";
  };

  // Render Home View
  const renderHomeView = () => {
    const overallStats = events.reduce((acc, event) => {
      const stats = calculateEventStats(event);
      return {
        totalBudget: acc.totalBudget + event.totalBudget,
        totalSpent: acc.totalSpent + stats.totalSpent,
        totalReceived: acc.totalReceived + stats.totalReceived,
        totalExpected: acc.totalExpected + stats.totalExpected
      };
    }, { totalBudget: 0, totalSpent: 0, totalReceived: 0, totalExpected: 0 });

    return (
      <div className="min-h-screen bg-gray-900 text-white p-4">
        {/* Header */}
        <div className="bg-green-600 p-4 rounded-t-lg -mx-4 -mt-4">
          <h1 className="text-2xl font-bold flex items-center gap-2">
            💰 BudgetFlow
          </h1>
        </div>

        {/* Overall Budget Card */}
        <div className="bg-gradient-to-br from-green-600 to-green-700 rounded-lg p-6 mt-4 shadow-lg">
          <div className="flex items-center gap-2 text-green-100 mb-2">
            <DollarSign size={24} />
            <span className="text-lg">Overall Budget</span>
          </div>
          <div className="text-4xl font-bold mb-4">
            Rs. {overallStats.totalBudget.toLocaleString()}
          </div>
          
          <div className="bg-green-800 bg-opacity-30 rounded-full h-3 mb-3">
            <div 
              className="bg-white h-3 rounded-full transition-all duration-500"
              style={{ width: `${(overallStats.totalReceived / overallStats.totalBudget * 100) || 0}%` }}
            />
          </div>
          
          <div className="text-green-100 text-sm mb-4">
            Rs. {overallStats.totalReceived.toLocaleString()} received of Rs. {overallStats.totalBudget.toLocaleString()}
          </div>
          
          <div className="grid grid-cols-2 gap-4">
            <div>
              <div className="text-green-200 text-sm">Remaining</div>
              <div className="text-xl font-bold text-red-300">
                Rs. {(overallStats.totalBudget - overallStats.totalSpent).toLocaleString()}
              </div>
            </div>
            <div>
              <div className="text-green-200 text-sm">Received</div>
              <div className="text-xl font-bold">
                Rs. {overallStats.totalReceived.toLocaleString()}
              </div>
            </div>
          </div>
        </div>

        {/* Quick Stats */}
        <div className="grid grid-cols-2 gap-3 mt-4">
          <div className="bg-blue-600 rounded-lg p-4">
            <TrendingDown className="mb-2" size={24} />
            <div className="text-2xl font-bold">Rs. {overallStats.totalSpent.toLocaleString()}</div>
            <div className="text-sm text-blue-100">Spent</div>
          </div>
          <div className="bg-purple-600 rounded-lg p-4">
            <TrendingUp className="mb-2" size={24} />
            <div className="text-2xl font-bold">Rs. {overallStats.totalExpected.toLocaleString()}</div>
            <div className="text-sm text-purple-100">Expected</div>
          </div>
        </div>

        {/* Events List */}
        <div className="mt-6">
          <div className="flex justify-between items-center mb-4">
            <h2 className="text-xl font-bold">Events</h2>
            <button 
              onClick={() => {
                setModalType('event');
                setShowModal(true);
              }}
              className="bg-green-600 text-white px-4 py-2 rounded-lg flex items-center gap-2 hover:bg-green-700"
            >
              <Plus size={20} />
              New Event
            </button>
          </div>

          {events.map(event => {
            const stats = calculateEventStats(event);
            return (
              <div 
                key={event.id}
                onClick={() => {
                  setSelectedEvent(event);
                  setActiveView('event-detail');
                }}
                className="bg-gray-800 rounded-lg p-4 mb-3 cursor-pointer hover:bg-gray-750 transition"
              >
                <div className="flex justify-between items-start mb-3">
                  <div>
                    <h3 className="text-lg font-bold flex items-center gap-2">
                      🎉 {event.name}
                    </h3>
                    <div className="text-sm text-gray-400 flex items-center gap-1 mt-1">
                      <Calendar size={14} />
                      {event.date}
                    </div>
                  </div>
                  <div className="text-right">
                    <div className="text-green-400 font-bold text-lg">
                      Rs. {event.totalBudget.toLocaleString()}
                    </div>
                  </div>
                </div>

                <div className="grid grid-cols-4 gap-2 text-center text-sm">
                  <div className="bg-green-900 bg-opacity-30 rounded p-2">
                    <div className="text-green-400 font-bold">
                      Rs. {stats.totalSpent.toLocaleString()}
                    </div>
                    <div className="text-gray-400 text-xs">Spent</div>
                  </div>
                  <div className="bg-blue-900 bg-opacity-30 rounded p-2">
                    <div className="text-blue-400 font-bold">
                      Rs. {stats.totalReceived.toLocaleString()}
                    </div>
                    <div className="text-gray-400 text-xs">Received</div>
                  </div>
                  <div className="bg-red-900 bg-opacity-30 rounded p-2">
                    <div className="text-red-400 font-bold">
                      Rs. {stats.totalOutstanding.toLocaleString()}
                    </div>
                    <div className="text-gray-400 text-xs">Outstanding</div>
                  </div>
                  <div className="bg-yellow-900 bg-opacity-30 rounded p-2">
                    <div className="text-yellow-400 font-bold">
                      Rs. {stats.totalPending.toLocaleString()}
                    </div>
                    <div className="text-gray-400 text-xs">Pending</div>
                  </div>
                </div>

                <div className="mt-3 bg-gray-700 rounded-full h-2">
                  <div 
                    className="bg-green-500 h-2 rounded-full transition-all duration-500"
                    style={{ width: `${Math.min(stats.receivedPercentage, 100)}%` }}
                  />
                </div>
              </div>
            );
          })}
        </div>
      </div>
    );
  };

  // Render Event Detail View
  const renderEventDetailView = () => {
    if (!selectedEvent) return null;
    const stats = calculateEventStats(selectedEvent);

    return (
      <div className="min-h-screen bg-gray-900 text-white p-4">
        {/* Header */}
        <div className="bg-green-600 p-4 rounded-t-lg -mx-4 -mt-4 flex items-center gap-3">
          <button 
            onClick={() => {
              setActiveView('home');
              setSelectedEvent(null);
            }}
            className="text-white"
          >
            ← Back
          </button>
          <h1 className="text-xl font-bold flex-1">
            {selectedEvent.name}
          </h1>
        </div>

        {/* Event Budget Overview */}
        <div className="bg-gradient-to-br from-green-600 to-green-700 rounded-lg p-6 mt-4">
          <div className="text-3xl font-bold mb-2">
            Rs. {selectedEvent.totalBudget.toLocaleString()}
          </div>
          <div className="text-green-100 text-sm mb-4">Total Budget</div>
          
          <div className="grid grid-cols-2 gap-4">
            <div className="bg-white bg-opacity-20 rounded-lg p-3">
              <div className="text-sm text-green-100">Received</div>
              <div className="text-xl font-bold">Rs. {stats.totalReceived.toLocaleString()}</div>
            </div>
            <div className="bg-white bg-opacity-20 rounded-lg p-3">
              <div className="text-sm text-green-100">Remaining</div>
              <div className="text-xl font-bold">Rs. {stats.remaining.toLocaleString()}</div>
            </div>
          </div>
        </div>

        {/* Status Cards */}
        <div className="grid grid-cols-2 gap-3 mt-4">
          <div className="bg-green-900 bg-opacity-50 rounded-lg p-4 border border-green-600">
            <CheckCircle className="text-green-400 mb-2" size={24} />
            <div className="text-2xl font-bold">Rs. {stats.totalSpent.toLocaleString()}</div>
            <div className="text-sm text-gray-300">Spent</div>
          </div>
          <div className="bg-yellow-900 bg-opacity-50 rounded-lg p-4 border border-yellow-600">
            <Clock className="text-yellow-400 mb-2" size={24} />
            <div className="text-2xl font-bold">Rs. {stats.totalPending.toLocaleString()}</div>
            <div className="text-sm text-gray-300">Pending</div>
          </div>
          <div className="bg-red-900 bg-opacity-50 rounded-lg p-4 border border-red-600">
            <AlertCircle className="text-red-400 mb-2" size={24} />
            <div className="text-2xl font-bold">Rs. {stats.totalOutstanding.toLocaleString()}</div>
            <div className="text-sm text-gray-300">Outstanding</div>
          </div>
          <div className="bg-blue-900 bg-opacity-50 rounded-lg p-4 border border-blue-600">
            <TrendingUp className="text-blue-400 mb-2" size={24} />
            <div className="text-2xl font-bold">Rs. {stats.totalExpected.toLocaleString()}</div>
            <div className="text-sm text-gray-300">Expected</div>
          </div>
        </div>

        {/* Expenses Section */}
        <div className="mt-6">
          <div className="flex justify-between items-center mb-4">
            <h2 className="text-xl font-bold">Expenses</h2>
            <button 
              onClick={() => {
                setModalType('expense');
                setShowModal(true);
              }}
              className="bg-green-600 px-4 py-2 rounded-lg flex items-center gap-2 hover:bg-green-700"
            >
              <Plus size={20} />
              Add
            </button>
          </div>

          {(selectedEvent.expenses || []).map(expense => (
            <div 
              key={expense.id}
              className={`rounded-lg p-4 mb-3 border-l-4 ${
                expense.status === 'spent' ? 'bg-green-900 bg-opacity-30 border-green-500' :
                expense.status === 'pending' ? 'bg-yellow-900 bg-opacity-30 border-yellow-500' :
                'bg-red-900 bg-opacity-30 border-red-500'
              }`}
            >
              <div className="flex justify-between items-start mb-2">
                <div>
                  <h3 className="font-bold">{expense.title}</h3>
                  <div className="text-sm text-gray-400">
                    {getCategoryName(expense.category)}
                  </div>
                </div>
                <button 
                  onClick={() => deleteExpense(expense.id)}
                  className="text-red-400 hover:text-red-300"
                >
                  <Trash2 size={18} />
                </button>
              </div>
              <div className="flex justify-between items-center">
                <div className="text-lg font-bold">Rs. {expense.amount.toLocaleString()}</div>
                <div className={`px-3 py-1 rounded-full text-xs font-bold ${
                  expense.status === 'spent' ? 'bg-green-600' :
                  expense.status === 'pending' ? 'bg-yellow-600' :
                  'bg-red-600'
                }`}>
                  {expense.status.toUpperCase()}
                </div>
              </div>
            </div>
          ))}
        </div>

        {/* Funders Section */}
        <div className="mt-6">
          <div className="flex justify-between items-center mb-4">
            <h2 className="text-xl font-bold">Funders</h2>
            <button 
              onClick={() => {
                setModalType('funder');
                setShowModal(true);
              }}
              className="bg-blue-600 px-4 py-2 rounded-lg flex items-center gap-2 hover:bg-blue-700"
            >
              <Plus size={20} />
              Add
            </button>
          </div>

          {(selectedEvent.funders || []).map(funder => (
            <div 
              key={funder.id}
              className={`rounded-lg p-4 mb-3 ${
                funder.status === 'received' ? 'bg-blue-900 bg-opacity-30' : 'bg-gray-800'
              }`}
            >
              <div className="flex justify-between items-center">
                <div>
                  <h3 className="font-bold">{funder.name}</h3>
                  <div className="text-sm text-gray-400">{funder.date}</div>
                </div>
                <div className="text-right">
                  <div className="text-lg font-bold">Rs. {funder.amount.toLocaleString()}</div>
                  <div className={`text-xs ${
                    funder.status === 'received' ? 'text-green-400' : 'text-yellow-400'
                  }`}>
                    {funder.status === 'received' ? 'RECEIVED' : 'EXPECTED'}
                  </div>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    );
  };

  // Render Modal
  const renderModal = () => {
    if (!showModal) return null;

    return (
      <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center p-4 z-50">
        <div className="bg-gray-800 rounded-lg p-6 w-full max-w-md">
          <div className="flex justify-between items-center mb-4">
            <h2 className="text-xl font-bold">
              {modalType === 'event' ? 'Add New Event' :
               modalType === 'expense' ? 'Add Expense' :
               'Add Funder'}
            </h2>
            <button onClick={() => {
              setShowModal(false);
              setFormData({});
            }}>
              <X size={24} />
            </button>
          </div>

          {modalType === 'event' && (
            <>
              <input
                type="text"
                placeholder="Event Name"
                value={formData.name || ''}
                onChange={(e) => setFormData({...formData, name: e.target.value})}
                className="w-full bg-gray-700 rounded p-3 mb-3 text-white"
              />
              <input
                type="date"
                value={formData.date || ''}
                onChange={(e) => setFormData({...formData, date: e.target.value})}
                className="w-full bg-gray-700 rounded p-3 mb-3 text-white"
              />
              <input
                type="number"
                placeholder="Total Budget"
                value={formData.budget || ''}
                onChange={(e) => setFormData({...formData, budget: e.target.value})}
                className="w-full bg-gray-700 rounded p-3 mb-4 text-white"
              />
              <button
                onClick={addEvent}
                className="w-full bg-green-600 text-white py-3 rounded-lg font-bold hover:bg-green-700"
              >
                Create Event
              </button>
            </>
          )}

          {modalType === 'expense' && (
            <>
              <input
                type="text"
                placeholder="Expense Title"
                value={formData.title || ''}
                onChange={(e) => setFormData({...formData, title: e.target.value})}
                className="w-full bg-gray-700 rounded p-3 mb-3 text-white"
              />
              <input
                type="number"
                placeholder="Amount"
                value={formData.amount || ''}
                onChange={(e) => setFormData({...formData, amount: e.target.value})}
                className="w-full bg-gray-700 rounded p-3 mb-3 text-white"
              />
              <select
                value={formData.category || ''}
                onChange={(e) => setFormData({...formData, category: parseInt(e.target.value)})}
                className="w-full bg-gray-700 rounded p-3 mb-3 text-white"
              >
                <option value="">Select Category</option>
                {categories.map(cat => (
                  <option key={cat.id} value={cat.id}>{cat.icon} {cat.name}</option>
                ))}
              </select>
              <select
                value={formData.status || ''}
                onChange={(e) => setFormData({...formData, status: e.target.value})}
                className="w-full bg-gray-700 rounded p-3 mb-4 text-white"
              >
                <option value="">Select Status</option>
                <option value="spent">Spent</option>
                <option value="pending">Pending</option>
                <option value="outstanding">Outstanding</option>
              </select>
              <button
                onClick={addExpense}
                className="w-full bg-green-600 text-white py-3 rounded-lg font-bold hover:bg-green-700"
              >
                Add Expense
              </button>
            </>
          )}

          {modalType === 'funder' && (
            <>
              <input
                type="text"
                placeholder="Funder Name"
                value={formData.funderName || ''}
                onChange={(e) => setFormData({...formData, funderName: e.target.value})}
                className="w-full bg-gray-700 rounded p-3 mb-3 text-white"
              />
              <input
                type="number"
                placeholder="Amount"
                value={formData.amount || ''}
                onChange={(e) => setFormData({...formData, amount: e.target.value})}
                className="w-full bg-gray-700 rounded p-3 mb-3 text-white"
              />
              <select
                value={formData.funderType || ''}
                onChange={(e) => setFormData({...formData, funderType: parseInt(e.target.value)})}
                className="w-full bg-gray-700 rounded p-3 mb-3 text-white"
              >
                <option value="">Select Type</option>
                {funders.map(f => (
                  <option key={f.id} value={f.id}>{f.name}</option>
                ))}
              </select>
              <select
                value={formData.status || ''}
                onChange={(e) => setFormData({...formData, status: e.target.value})}
                className="w-full bg-gray-700 rounded p-3 mb-4 text-white"
              >
                <option value="">Select Status</option>
                <option value="received">Received</option>
                <option value="expected">Expected</option>
              </select>
              <button
                onClick={addFunder}
                className="w-full bg-blue-600 text-white py-3 rounded-lg font-bold hover:bg-blue-700"
              >
                Add Funder
              </button>
            </>
          )}
        </div>
      </div>
    );
  };

  return (
    <div className="max-w-md mx-auto">
      {activeView === 'home' && renderHomeView()}
      {activeView === 'event-detail' && renderEventDetailView()}
      {renderModal()}
    </div>
  );
}