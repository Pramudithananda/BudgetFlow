# 💰 BudgetFlow - Enhanced Financial Management App

> A modern, feature-rich budget management application with advanced analytics, real-time notifications, and comprehensive financial tracking.

[![Made with React Native](https://img.shields.io/badge/Made%20with-React%20Native-61DAFB.svg)](https://reactnative.dev/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/Version-2.0.0-blue.svg)](https://github.com/yourusername/budgetflow)

## 📱 Screenshots

<div align="center">
  <img src="https://github.com/Pramudithananda/BudgetFlow/blob/main_budget/Screenshot_2025-08-18-13-29-16-802_com.budgetflow.app.jpg" alt="Dashboard" width="250" style="margin: 10px;">
  <img src="https://github.com/Pramudithananda/BudgetFlow/blob/main_budget/Screenshot_2025-08-18-13-29-23-268_com.budgetflow.app.jpg" alt="Categories" width="250" style="margin: 10px;">
  <img src="https://github.com/Pramudithananda/BudgetFlow/blob/main_budget/Screenshot_2025-08-18-13-30-14-440_com.budgetflow.app.jpg" alt="BudgetFlow Overview" width="250" style="margin: 10px;">
</div>

## ✨ Enhanced Features

### 🎯 Core Features
- **Real-time Budget Tracking** - Monitor your total budget and spending in real-time
- **Expense Categories** - Organize expenses into customizable categories
- **Status Management** - Track Outstanding, Pending, Available, and Spent amounts
- **Progress Visualization** - Visual progress bars and status indicators
- **Advanced Report Generation** - Download detailed financial reports in PDF format

### 🆕 New Features (v2.0.0)
- **📊 Interactive Charts** - Pie charts, bar charts, and line charts for data visualization
- **🔍 Advanced Search & Filtering** - Search expenses and filter by multiple criteria
- **🔔 Smart Notifications** - Budget warnings and financial alerts
- **📱 Enhanced UI/UX** - Modern design with dark/light theme support
- **📈 Analytics Dashboard** - Comprehensive financial insights and trends
- **⚡ Quick Actions** - Fast access to common tasks
- **📋 Comprehensive Expenses View** - Dedicated expenses screen with advanced features

### 📊 Dashboard Overview
- **Total Budget Display** - Rs. 193,300 with visual progress indicator
- **Received vs Remaining** - Clear breakdown of received (Rs. 110,800) and remaining (Rs. 82,500) amounts
- **Expense Status Cards** - Quick view of all financial statuses:
  - 🔴 Outstanding: Rs. 32,500
  - 🟡 Pending: Rs. 50,000
  - 🔵 Available: Rs. 85,000
  - 🟢 Spent: Rs. 25,800

### 📂 Category Management
- **Custom Categories** - Create and manage expense categories
- **Expense Tracking** - Track number of expenses per category
- **Amount Overview** - View total amount spent in each category
- **Categories Available**:
  - Cat 2: Rs. 65,000 (1 expense)
  - Cat3: Rs. 0 (0 expenses)
  - Test: Rs. 128,300 (4 expenses)

### 🔍 Advanced Search & Filtering
- **Real-time Search** - Search expenses by title, category, or funder
- **Multi-criteria Filters** - Filter by status, category, funder, and amount range
- **Sorting Options** - Sort by date, amount, or status
- **Quick Filters** - One-tap filtering for common criteria

### 📊 Enhanced Analytics
- **Interactive Charts** - Visual representation of financial data
- **Category Breakdown** - Pie charts showing expense distribution
- **Funder Analysis** - Bar charts for funding source analysis
- **Trend Analysis** - Line charts for spending patterns over time
- **Real-time Updates** - Charts update automatically with data changes

### 🔔 Smart Notifications
- **Budget Warnings** - Alerts when outstanding expenses approach budget limits
- **Pending Amount Alerts** - Notifications for high pending amounts
- **Fund Receipt Warnings** - Alerts for low fund receipts
- **Dismissible Notifications** - User can dismiss or interact with alerts

## 🚀 Getting Started

### Prerequisites
- Node.js (v14 or higher)
- React Native CLI
- Android Studio (for Android development)
- Xcode (for iOS development)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/budgetflow.git
   cd budgetflow
   ```

2. **Install dependencies**
   ```bash
   npm install
   # or
   yarn install
   ```

3. **Install iOS dependencies** (iOS only)
   ```bash
   cd ios && pod install && cd ..
   ```

4. **Run the application**
   
   For Android:
   ```bash
   npx react-native run-android
   ```
   
   For iOS:
   ```bash
   npx react-native run-ios
   ```

## 🏗️ Enhanced Architecture

### Project Structure
```
budgetflow/
├── app/
│   ├── (tabs)/              # Tab-based navigation screens
│   │   ├── index.js         # Enhanced home screen
│   │   ├── dashboard.js     # Advanced analytics dashboard
│   │   ├── category.js      # Category management
│   │   ├── funders.js       # Funder management
│   │   ├── all-expenses.js  # Comprehensive expenses view
│   │   └── settings.js      # App configuration
│   └── _layout.js           # App layout configuration
├── components/               # Enhanced UI components
│   ├── Chart.js             # Interactive chart components
│   ├── SearchBar.js         # Advanced search functionality
│   ├── FilterModal.js       # Multi-criteria filtering
│   ├── NotificationCard.js  # Smart notification system
│   ├── BudgetSummary.js     # Budget overview component
│   ├── Button.js            # Enhanced button component
│   ├── Card.js              # Card container component
│   ├── CategoryItem.js      # Category display component
│   ├── ExpenseItem.js       # Expense display component
│   └── Themed.js            # Theme support
├── context/                  # React Context providers
├── services/                 # Data services
│   └── sqliteService.js     # SQLite database operations
└── assets/                   # Images, fonts, etc.
```

### Tech Stack
- **Frontend**: React Native + Expo
- **Navigation**: Expo Router with tab navigation
- **State Management**: React Context
- **Database**: SQLite (local storage)
- **Charts**: React Native Chart Kit
- **UI Components**: Custom themed components
- **Icons**: React Native Vector Icons
- **Theme**: Dark/Light mode support

## 🎨 Enhanced Design System

### Color Palette
- **Primary Green**: `#64a12d` - Main app color
- **Success Green**: `#4CAF50` - Positive indicators
- **Warning Orange**: `#FF9800` - Pending status
- **Error Red**: `#F44336` - Outstanding amounts
- **Info Blue**: `#2196F3` - Available funds
- **Background**: `#F5F5F5` - App background
- **Dark Theme**: `#333` - Dark mode background

### Typography
- **Headers**: Bold, large fonts for main titles
- **Body Text**: Regular weight for content
- **Numbers**: Emphasized styling for monetary values
- **Labels**: Medium weight for secondary information

### Components
- **Cards**: Elevated containers with shadows
- **Buttons**: Interactive elements with hover states
- **Charts**: Interactive data visualizations
- **Notifications**: Alert system with different types
- **Search**: Advanced search with real-time results

## 📱 Enhanced App Navigation

The app features a bottom tab navigation with 6 main sections:

1. **🏠 BudgetFlow** - Enhanced home screen with quick actions
2. **📊 Categories** - Expense category management
3. **👥 Funders** - Funding source management
4. **📋 Expenses** - Comprehensive expenses view with search & filters
5. **📈 Dashboard** - Advanced analytics and reports
6. **⚙️ Settings** - App configuration and preferences

## 💡 Enhanced Usage

### Quick Actions
1. **Add Expense** - Quick expense entry from home screen
2. **New Category** - Create expense categories on the fly
3. **Add Funder** - Register new funding sources
4. **View Reports** - Access analytics dashboard

### Advanced Search & Filtering
1. **Search Expenses** - Use the search bar to find specific expenses
2. **Apply Filters** - Use the filter button for advanced filtering
3. **Sort Results** - Sort expenses by date, amount, or status
4. **Save Filters** - Apply and save filter combinations

### Analytics & Charts
1. **Category Charts** - View expense distribution by category
2. **Funder Analysis** - Analyze funding source contributions
3. **Trend Analysis** - Track spending patterns over time
4. **Interactive Elements** - Tap on chart elements for details

### Smart Notifications
1. **Budget Alerts** - Get warned about budget limits
2. **Pending Notifications** - Stay informed about pending amounts
3. **Fund Warnings** - Monitor fund receipt status
4. **Actionable Alerts** - Tap notifications for quick actions

## 🔧 Development Features

### Real-time Updates
- **Live Data Sync** - All screens update in real-time
- **Optimistic Updates** - Immediate UI feedback
- **Background Sync** - Data synchronization in background

### Performance Optimizations
- **Lazy Loading** - Load data as needed
- **Efficient Queries** - Optimized database operations
- **Memory Management** - Proper cleanup of listeners

### Error Handling
- **Graceful Degradation** - App continues working with errors
- **User Feedback** - Clear error messages and suggestions
- **Retry Mechanisms** - Automatic retry for failed operations

## 🤝 Contributing

We welcome contributions to BudgetFlow! Here's how you can help:

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Commit your changes**
   ```bash
   git commit -m 'Add some amazing feature'
   ```
4. **Push to the branch**
   ```bash
   git push origin feature/amazing-feature
   ```
5. **Open a Pull Request**

### Development Guidelines
- Follow React Native best practices
- Write clean, documented code
- Test your changes thoroughly
- Update documentation as needed
- Maintain theme consistency
- Ensure accessibility compliance

## 🐛 Bug Reports & Feature Requests

Found a bug or have a feature request? Please create an issue on our [GitHub Issues](https://github.com/pramudithananda/budgetflow/issues) page.

**Bug Report Template:**
- Device/Platform information
- Steps to reproduce
- Expected behavior
- Actual behavior
- Screenshots (if applicable)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Ranjith Karunarathne**
- GitHub: [@Pramudithananda](https://github.com/Pramudithanand)
- Email: ranjithpalugolla@gmail.com
- LinkedIn: [RANJITH](https://www.linkedin.com/in/ranjith-karunarathne-941a01367?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app)

## 🙏 Acknowledgments

- React Native community for excellent documentation
- Material Design for UI inspiration
- Contributors and testers who helped improve the app
- Chart.js and related libraries for data visualization

## 📊 Statistics

![GitHub stars](https://img.shields.io/github/stars/yourusername/budgetflow?style=social)
![GitHub forks](https://img.shields.io/github/forks/yourusername/budgetflow?style=social)
![GitHub issues](https://img.shields.io/github/issues/yourusername/budgetflow)
![GitHub pull requests](https://img.shields.io/github/issues-pr/yourusername/budgetflow)

## 🔄 Changelog

### v2.0.0 (Latest)
- ✨ Added interactive charts and analytics
- 🔍 Implemented advanced search and filtering
- 🔔 Added smart notification system
- 📱 Enhanced UI/UX with modern design
- ⚡ Added quick actions for common tasks
- 📊 Improved dashboard with real-time data
- 🎨 Added dark/light theme support

### v1.0.0
- 🎯 Basic budget management features
- 📂 Category and funder management
- 📊 Basic reporting functionality
- 📱 Mobile-first design

---

<div align="center">
  <strong>Made with ❤️ for better financial management</strong>
  <br>
  <sub>BudgetFlow v2.0.0 - Take control of your finances with advanced features</sub>
</div>
