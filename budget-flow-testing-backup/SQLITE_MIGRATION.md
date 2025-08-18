# SQLite Migration Guide - BudgetFlow

## Overview

This document details the complete migration of the BudgetFlow application from Firebase Firestore to SQLite local database.

## Migration Summary

### Before (Firebase)
- **Database**: Firebase Firestore (cloud-based)
- **Dependencies**: `firebase` package
- **Data Storage**: Remote cloud storage
- **Real-time**: Firebase real-time listeners
- **Configuration**: Firebase API keys and project setup

### After (SQLite)
- **Database**: SQLite (local device storage)
- **Dependencies**: `expo-sqlite` package
- **Data Storage**: Local device storage
- **Real-time**: EventEmitter-based local listeners
- **Configuration**: No external configuration needed

## Database Schema

### Tables Created

1. **categories**
   ```sql
   CREATE TABLE categories (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     name TEXT NOT NULL,
     description TEXT,
     color TEXT,
     createdAt TEXT,
     updatedAt TEXT
   );
   ```

2. **expenses**
   ```sql
   CREATE TABLE expenses (
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
   );
   ```

3. **funders**
   ```sql
   CREATE TABLE funders (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     name TEXT NOT NULL,
     contact TEXT,
     amount REAL DEFAULT 0,
     createdAt TEXT,
     updatedAt TEXT
   );
   ```

4. **helpers**
   ```sql
   CREATE TABLE helpers (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     name TEXT NOT NULL,
     contact TEXT,
     role TEXT,
     createdAt TEXT,
     updatedAt TEXT
   );
   ```

5. **budget_summary**
   ```sql
   CREATE TABLE budget_summary (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     totalBudget REAL DEFAULT 0,
     receivedFund REAL DEFAULT 0,
     peopleOverFund REAL DEFAULT 0,
     remainingFund REAL DEFAULT 0,
     updatedAt TEXT
   );
   ```

## API Changes

### Service Functions

All service functions maintain the same API interface:

```javascript
// Categories
getCategories()
addCategory(categoryData)
updateCategory(categoryId, categoryData)
deleteCategory(categoryId)

// Expenses
getExpense(id)
getExpenses(categoryId)
addExpense(expenseData)
updateExpense(expenseId, expenseData)
deleteExpense(expenseId)

// Funders
getFunders()
addFunder(funderData)
updateFunder(funderId, funderData)
deleteFunder(funderId)

// Helpers
getHelpers()
addHelper(helperData)

// Budget
getBudgetSummary()
updateBudgetSummary(budgetData)

// Real-time Listeners
listenExpenses(categoryId, callback)
listenCategories(callback)
listenFunders(callback)
```

### Real-time Updates

Firebase real-time listeners have been replaced with EventEmitter-based local listeners:

```javascript
// Before (Firebase)
const unsubscribe = onSnapshot(collection(db, 'expenses'), (snapshot) => {
  const expenses = snapshot.docs.map(doc => ({ id: doc.id, ...doc.data() }));
  callback(expenses);
});

// After (SQLite)
const unsubscribe = listenExpenses(null, (expenses) => {
  callback(expenses);
});
```

## File Changes

### New Files
- `services/sqliteService.js` - Complete SQLite database service

### Modified Files
- `App.js` - Added database initialization
- `package.json` - Replaced Firebase with expo-sqlite
- `app.json` - Removed Firebase configuration
- `.env.example` - Removed Firebase credentials
- `README.md` - Updated for SQLite
- `CHANGELOG.md` - Added migration documentation

### Removed Files
- `firebase/config.js` - Firebase configuration
- `firebase/` directory - Entire Firebase configuration
- `services/firebaseService.js` - Old Firebase service

### Updated Import Statements

All files that imported from `firebaseService` now import from `sqliteService`:

```javascript
// Before
import { getCategories, getExpenses } from '../../services/firebaseService';

// After
import { getCategories, getExpenses } from '../../services/sqliteService';
```

## Benefits of Migration

### 1. Privacy & Security
- **Local data storage**: No data sent to external servers
- **No API keys**: No need for Firebase configuration
- **Offline operation**: Works without internet connection

### 2. Performance
- **Faster queries**: Local database queries are much faster
- **No network latency**: No waiting for cloud responses
- **Reduced bandwidth**: No data transfer over network

### 3. Cost & Maintenance
- **No cloud costs**: No Firebase usage fees
- **No server maintenance**: No backend infrastructure needed
- **Simplified deployment**: No cloud configuration required

### 4. Development
- **Simplified setup**: No Firebase project creation needed
- **Faster development**: No network dependencies during development
- **Better testing**: Local database for testing scenarios

## Migration Process

### For New Installations
1. Extract the project
2. Run `npm install`
3. Run `npm start`
4. Database automatically initializes on first launch

### For Existing Users
- Previous Firebase data will not be automatically migrated
- New installations will start with empty local database
- Data export/import functionality available for manual migration

### For Developers
- All existing API calls remain the same
- No changes needed in UI components
- Database automatically initializes on first launch

## Database Utilities

### Export Data
```javascript
import { exportDatabase } from './services/sqliteService';

const data = await exportDatabase();
console.log(data); // JSON object with all data
```

### Clear Database
```javascript
import { clearDatabase } from './services/sqliteService';

await clearDatabase(); // Clears all data
```

### Database Location
- **iOS**: App's Documents directory
- **Android**: App's internal storage
- **Web**: Browser's IndexedDB (via SQLite.js)

## Error Handling

The SQLite service includes comprehensive error handling:

```javascript
try {
  const categories = await getCategories();
  // Handle success
} catch (error) {
  console.error('Database error:', error);
  // Handle error
}
```

## Testing

### Database Operations
All database operations are wrapped in transactions for data integrity:

```javascript
db.transaction(
  (tx) => {
    // Database operations
  },
  (error) => {
    // Error handling
  },
  () => {
    // Success callback
  }
);
```

### Real-time Updates
EventEmitter-based listeners ensure UI updates when data changes:

```javascript
const unsubscribe = listenExpenses(null, (expenses) => {
  setExpenses(expenses); // UI updates automatically
});
```

## Conclusion

The migration to SQLite provides a more robust, private, and performant solution for the BudgetFlow application. The local database approach eliminates external dependencies while maintaining all existing functionality and improving the user experience.

## Support

For questions or issues with the SQLite migration, please refer to:
- SQLite documentation: https://www.sqlite.org/docs.html
- Expo SQLite documentation: https://docs.expo.dev/versions/latest/sdk/sqlite/
- Project README.md for setup instructions