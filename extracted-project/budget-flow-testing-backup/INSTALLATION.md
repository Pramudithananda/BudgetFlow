# BudgetFlow Installation Guide

## Prerequisites

- Node.js (v16 or higher)
- Expo CLI (`npm install -g @expo/cli`)
- iOS Simulator (for iOS development) or Android Studio (for Android development)

## Installation Steps

### 1. Install Dependencies

```bash
npm install
```

### 2. Install Expo SQLite

The app now uses SQLite for local storage. The `expo-sqlite` dependency has been added to `package.json`.

### 3. Start the Development Server

```bash
npm start
```

### 4. Run on Device/Simulator

- **iOS**: Press `i` in the terminal or scan the QR code with the Expo Go app
- **Android**: Press `a` in the terminal or scan the QR code with the Expo Go app
- **Web**: Press `w` in the terminal

## Database Configuration

### Default Configuration
- The app defaults to SQLite for new installations
- No additional configuration required
- All data is stored locally on the device

### Firebase Migration (Optional)
If you have existing Firebase data:

1. Open the app
2. Go to About → Database Migration
3. Follow the migration process
4. Your data will be copied to SQLite

### Switching Database Types
For advanced users, you can switch between Firebase and SQLite:

```javascript
import { setDatabaseType } from './services/databaseService';

// Switch to Firebase
await setDatabaseType('firebase');

// Switch to SQLite
await setDatabaseType('sqlite');
```

## Features

### Core Features
- ✅ Expense tracking
- ✅ Category management
- ✅ Funder management
- ✅ Budget summary
- ✅ Offline support
- ✅ Data export

### New Features
- ✅ Local SQLite storage
- ✅ Firebase to SQLite migration
- ✅ Data backup and export
- ✅ Offline-first operation

## Troubleshooting

### Common Issues

#### 1. SQLite Database Issues
```bash
# Clear app data (if needed)
expo r -c
```

#### 2. Migration Problems
- Ensure internet connection for Firebase access
- Check device storage space
- Verify Firebase configuration (if using Firebase)

#### 3. Build Issues
```bash
# Clear cache and reinstall
rm -rf node_modules
npm install
expo r -c
```

### Platform-Specific Issues

#### iOS
- Ensure Xcode is properly configured
- Check iOS Simulator installation

#### Android
- Ensure Android Studio and SDK are installed
- Check Android emulator configuration

## Development

### Project Structure
```
app/
├── (screens)/          # Screen components
├── (tabs)/            # Tab navigation
└── _layout.js         # Root layout

components/            # Reusable components
services/             # Database services
├── databaseService.js # Main database interface
├── sqliteService.js   # SQLite implementation
├── firebaseService.js # Firebase implementation
└── migrationService.js # Migration utilities

firebase/             # Firebase configuration
```

### Key Files
- `services/databaseService.js`: Main database interface
- `services/sqliteService.js`: SQLite implementation
- `app/(screens)/migration.js`: Migration screen
- `app/_layout.js`: App initialization

## Support

For additional support:
- Check the console logs for error details
- Review the migration documentation
- Ensure all dependencies are properly installed

## License

This project is developed by Dilshan Pathum (pathumpanagoda@gmail.com).