# 📱 BudgetFlow APK Build Guide

## 🚀 How to Build and Download Your APK

### Method 1: Using EAS Build (Recommended - Cloud Build)

#### Step 1: Install EAS CLI
```bash
npm install -g eas-cli
```

#### Step 2: Login to Expo
```bash
eas login
```
Enter your Expo account credentials when prompted.

#### Step 3: Build APK
```bash
eas build --platform android --profile preview
```

#### Step 4: Download APK
1. Visit: https://expo.dev/accounts/YOUR_USERNAME/projects/budget-flow/builds
2. Click on the latest build
3. Download the APK file

### Method 2: Local Build (Alternative)

#### Step 1: Install Dependencies
```bash
npm install
```

#### Step 2: Build APK Locally
```bash
npx expo run:android --variant release
```

### Method 3: Using Expo Go (Quick Testing)

#### Step 1: Start Development Server
```bash
npm start
```

#### Step 2: Scan QR Code
Use Expo Go app on your Android device to scan the QR code.

## 📋 Build Configuration

The app is configured with:
- **App Name**: BudgetFlow
- **Version**: 2.0.0
- **Package**: com.budgetflow.app
- **Build Type**: APK (Android)
- **Architecture**: New Architecture enabled

## 🔧 Build Scripts

### Quick Build Script
```bash
chmod +x build-apk.sh
./build-apk.sh
```

### Manual Build Commands
```bash
# Development build
eas build --platform android --profile development

# Preview build (APK)
eas build --platform android --profile preview

# Production build
eas build --platform android --profile production
```

## 📱 APK Features

Your BudgetFlow APK includes:
- ✅ Interactive charts and analytics
- ✅ Advanced search and filtering
- ✅ Smart notifications
- ✅ Dark/light theme support
- ✅ Real-time data updates
- ✅ Comprehensive expense management
- ✅ Professional reporting
- ✅ Offline-first functionality

## 🚨 Troubleshooting

### Common Issues:

1. **Build Fails**
   - Check internet connection
   - Ensure all dependencies are installed
   - Verify Expo account credentials

2. **APK Won't Install**
   - Enable "Install from Unknown Sources" in Android settings
   - Check Android version compatibility (Android 6.0+)

3. **App Crashes**
   - Clear app data and cache
   - Reinstall the APK

## 📞 Support

If you encounter issues:
1. Check the error logs in the build output
2. Visit: https://expo.dev/help
3. Create an issue on GitHub

## 🎉 Success!

Once your APK is built and downloaded:
1. Transfer to your Android device
2. Install the APK
3. Enjoy your enhanced BudgetFlow app!

---

**Build Status**: Ready for APK generation
**Last Updated**: August 26, 2025
**Version**: 2.0.0