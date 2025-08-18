# BudgetFlow - Budget Management App

A React Native/Expo budget management application with local SQLite database for tracking expenses, categories, and funder management.

## Features

- 📊 **Budget Tracking**: Monitor total budget, received funds, and spending
- 📁 **Category Management**: Organize expenses by categories
- 💰 **Expense Management**: Add, edit, and track expenses with status updates
- 👥 **Funder Management**: Track funding sources and contributors
- 🔄 **Real-time Updates**: Live updates with local SQLite database
- 🌙 **Dark/Light Theme**: Customizable theme support
- 📱 **Cross-platform**: Works on iOS, Android, and Web
- 💾 **Local Storage**: All data stored locally using SQLite

## Tech Stack

- **Frontend**: React Native with Expo
- **Navigation**: Expo Router
- **Database**: SQLite (expo-sqlite)
- **State Management**: React Context API
- **UI Components**: Custom themed components
- **Icons**: Expo Vector Icons

## Prerequisites

- Node.js (v16 or higher)
- npm or yarn
- Expo CLI

## Installation

1. **Clone or extract the project**
   ```bash
   cd budget-flow-testing-backup
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Database Setup**
   - The SQLite database will be automatically created on first app launch
   - No additional configuration required
   - All data is stored locally on the device

## Running the App

### Development
```bash
npm start
```

### Platform Specific
```bash
# iOS
npm run ios

# Android
npm run android

# Web
npm run web
```

## Project Structure

```
budget-flow-testing-backup/
├── app/                    # Expo Router screens
│   ├── (screens)/         # Modal and detail screens
│   └── (tabs)/           # Main tab navigation
├── components/            # Reusable UI components
├── context/              # React Context providers
├── services/             # SQLite database service
├── assets/               # Images and icons
└── package.json          # Dependencies and scripts
```

## Database Schema

The app uses SQLite with the following tables:

### Categories Table
- `id` (INTEGER PRIMARY KEY)
- `name` (TEXT NOT NULL)
- `description` (TEXT)
- `color` (TEXT)
- `createdAt` (TEXT)
- `updatedAt` (TEXT)

### Expenses Table
- `id` (INTEGER PRIMARY KEY)
- `amount` (REAL NOT NULL)
- `description` (TEXT)
- `categoryId` (INTEGER, FOREIGN KEY)
- `status` (TEXT DEFAULT 'Outstanding')
- `funderId` (INTEGER, FOREIGN KEY)
- `createdAt` (TEXT)
- `updatedAt` (TEXT)

### Funders Table
- `id` (INTEGER PRIMARY KEY)
- `name` (TEXT NOT NULL)
- `contact` (TEXT)
- `amount` (REAL DEFAULT 0)
- `createdAt` (TEXT)
- `updatedAt` (TEXT)

### Helpers Table
- `id` (INTEGER PRIMARY KEY)
- `name` (TEXT NOT NULL)
- `contact` (TEXT)
- `role` (TEXT)
- `createdAt` (TEXT)
- `updatedAt` (TEXT)

### Budget Summary Table
- `id` (INTEGER PRIMARY KEY)
- `totalBudget` (REAL DEFAULT 0)
- `receivedFund` (REAL DEFAULT 0)
- `peopleOverFund` (REAL DEFAULT 0)
- `remainingFund` (REAL DEFAULT 0)
- `updatedAt` (TEXT)

## Status Types

Expenses can have the following statuses:
- **Outstanding**: Not yet received
- **Pending**: In process
- **Received**: Funds available
- **Spent**: Funds used

## Data Management

### Local Storage
- All data is stored locally using SQLite
- No internet connection required
- Data persists between app sessions
- Automatic database initialization on first launch

### Data Export
The app includes utility functions for:
- Exporting all data as JSON
- Clearing the database
- Database backup and restore

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is private and proprietary.

## Support

For support or questions, please contact the development team.