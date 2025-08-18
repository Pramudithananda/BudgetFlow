# BudgetFlow - Budget Management App

A React Native/Expo budget management application with real-time Firebase integration for tracking expenses, categories, and funder management.

## Features

- 📊 **Budget Tracking**: Monitor total budget, received funds, and spending
- 📁 **Category Management**: Organize expenses by categories
- 💰 **Expense Management**: Add, edit, and track expenses with status updates
- 👥 **Funder Management**: Track funding sources and contributors
- 🔄 **Real-time Sync**: Live updates with Firebase Firestore
- 🌙 **Dark/Light Theme**: Customizable theme support
- 📱 **Cross-platform**: Works on iOS, Android, and Web

## Tech Stack

- **Frontend**: React Native with Expo
- **Navigation**: Expo Router
- **Backend**: Firebase Firestore
- **State Management**: React Context API
- **UI Components**: Custom themed components
- **Icons**: Expo Vector Icons

## Prerequisites

- Node.js (v16 or higher)
- npm or yarn
- Expo CLI
- Firebase project setup

## Installation

1. **Clone or extract the project**
   ```bash
   cd budget-flow-testing-backup
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Configure Firebase**
   - Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
   - Enable Firestore Database
   - Copy your Firebase configuration
   - Update the Firebase config in `app.json` or use environment variables

4. **Environment Setup (Optional)**
   ```bash
   cp .env.example .env
   # Edit .env with your Firebase credentials
   ```

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
├── firebase/             # Firebase configuration
├── services/             # Firebase service functions
├── assets/               # Images and icons
└── package.json          # Dependencies and scripts
```

## Firebase Collections

The app uses the following Firestore collections:

- **categories**: Budget categories (name, description, color)
- **expenses**: Individual expenses (amount, categoryId, status, description)
- **funders**: Funding sources (name, contact, amount)

## Status Types

Expenses can have the following statuses:
- **Outstanding**: Not yet received
- **Pending**: In process
- **Received**: Funds available
- **Spent**: Funds used

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