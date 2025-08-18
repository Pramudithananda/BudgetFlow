# BudgetFlow: Firebase to SQLite Migration

This document describes the migration of the BudgetFlow app from Firebase Firestore to SQLite for local storage.

## Overview

The BudgetFlow app has been successfully converted from using Firebase Firestore to SQLite for data storage. This change provides several benefits:

- **Offline-first**: No internet connection required
- **Faster performance**: Local database operations
- **No external dependencies**: No need for Firebase configuration
- **Data privacy**: All data stays on the device

## Changes Made

### 1. Database Services

#### New SQLite Service (`services/sqliteService.js`)
- Complete SQLite implementation with all CRUD operations
- Automatic database initialization and table creation
- Support for all existing data entities:
  - Categories
  - Expenses
  - Funders
  - Helpers
  - Budget Summary

#### Database Service Wrapper (`services/databaseService.js`)
- Acts as a unified interface for both Firebase and SQLite
- Allows switching between database types
- Defaults to SQLite for new installations
- Maintains backward compatibility

#### Migration Service (`services/migrationService.js`)
- Handles data migration from Firebase to SQLite
- Progress tracking and error handling
- Export functionality for data backup

### 2. Updated Dependencies

#### Added
- `expo-sqlite`: SQLite database support for Expo

#### Removed
- `firebase`: No longer required for basic functionality

### 3. New Features

#### Migration Screen (`app/(screens)/migration.js`)
- User-friendly migration interface
- Progress tracking with visual feedback
- Data export functionality
- Migration status and results display

#### Updated About Screen
- Shows current database type
- Link to migration screen
- Updated feature descriptions

### 4. Updated Components

All existing screens and components have been updated to use the new database service:
- Home screen
- Dashboard
- Categories
- Expenses
- Funders
- All edit/create screens

## Database Schema

### Categories Table
```sql
CREATE TABLE categories (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  color TEXT,
  createdAt TEXT,
  updatedAt TEXT
);
```

### Expenses Table
```sql
CREATE TABLE expenses (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  amount REAL NOT NULL,
  categoryId TEXT,
  description TEXT,
  date TEXT,
  createdAt TEXT,
  updatedAt TEXT,
  FOREIGN KEY (categoryId) REFERENCES categories (id)
);
```

### Funders Table
```sql
CREATE TABLE funders (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  amount REAL NOT NULL,
  phone TEXT,
  email TEXT,
  createdAt TEXT,
  updatedAt TEXT
);
```

### Helpers Table
```sql
CREATE TABLE helpers (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  phone TEXT,
  email TEXT,
  role TEXT,
  createdAt TEXT,
  updatedAt TEXT
);
```

### Budget Summary Table
```sql
CREATE TABLE budget_summary (
  id TEXT PRIMARY KEY,
  totalBudget REAL DEFAULT 0,
  receivedFund REAL DEFAULT 0,
  peopleOverFund REAL DEFAULT 0,
  remainingFund REAL DEFAULT 0,
  updatedAt TEXT
);
```

## Migration Process

### For Existing Users

1. **Access Migration Screen**: Go to About → Database Migration
2. **Start Migration**: Click "Start Migration" button
3. **Monitor Progress**: Watch the progress bar and status updates
4. **Verify Results**: Check the migration results summary
5. **Export Data** (Optional): Export your SQLite data as backup

### Migration Features

- **Automatic Data Transfer**: All Firebase data is copied to SQLite
- **Progress Tracking**: Real-time progress updates
- **Error Handling**: Comprehensive error reporting
- **Data Integrity**: Maintains all relationships and data types
- **Non-destructive**: Original Firebase data remains unchanged

## Usage

### New Users
- App automatically uses SQLite by default
- No configuration required
- All features work offline

### Existing Users
- Can continue using Firebase if preferred
- Can migrate to SQLite for offline access
- Can switch between databases (advanced users)

## Technical Details

### Database Location
- SQLite database: `budget_flow.db`
- Location: App's document directory
- Automatic backup with device backups

### Data Types
- All timestamps stored as ISO strings
- Numbers stored as REAL (floating point)
- Text fields stored as TEXT
- Foreign key relationships maintained

### Performance
- Local database operations are significantly faster
- No network latency
- Reduced battery usage
- Smaller app size (no Firebase SDK)

## Troubleshooting

### Migration Issues
1. **Network Required**: Migration requires internet for Firebase access
2. **Large Datasets**: Migration may take time for large datasets
3. **Storage Space**: Ensure sufficient device storage

### SQLite Issues
1. **Database Corruption**: Rare, but can be resolved by reinstalling
2. **Storage Full**: Clear app data or free up device storage
3. **Permissions**: Ensure app has storage permissions

## Development Notes

### Switching Database Types
```javascript
import { setDatabaseType } from '../services/databaseService';

// Switch to Firebase
await setDatabaseType('firebase');

// Switch to SQLite
await setDatabaseType('sqlite');
```

### Direct Service Access
```javascript
import { FirebaseService, SQLiteService } from '../services/databaseService';

// Use Firebase directly
const categories = await FirebaseService.getCategories();

// Use SQLite directly
const categories = await SQLiteService.getCategories();
```

### Real-time Listeners
- Firebase: Real-time updates via Firestore listeners
- SQLite: Manual refresh or polling required
- Components handle both scenarios automatically

## Future Enhancements

1. **Data Sync**: Optional cloud sync for SQLite data
2. **Backup/Restore**: Enhanced backup functionality
3. **Data Export**: Additional export formats (CSV, Excel)
4. **Performance**: Query optimization and indexing
5. **Multi-device**: Cross-device data synchronization

## Support

For issues or questions regarding the migration:
- Check the migration screen for error details
- Review the console logs for technical details
- Ensure all dependencies are properly installed
- Verify device storage and permissions

## Conclusion

The migration to SQLite provides a robust, offline-first solution for BudgetFlow while maintaining all existing functionality. The migration process is designed to be user-friendly and reliable, ensuring a smooth transition for existing users.