#!/bin/bash

# BudgetFlow APK Build Script
# This script helps you build the APK easily

echo "🎯 BudgetFlow APK Builder"
echo "========================="
echo ""

# Check if EAS CLI is installed
if ! command -v eas &> /dev/null; then
    echo "📦 Installing EAS CLI..."
    npm install -g eas-cli
fi

echo "Choose build method:"
echo "1) EAS Build (Recommended - no Android SDK needed)"
echo "2) Local Build (requires Android SDK)"
echo ""
read -p "Enter choice (1 or 2): " choice

if [ "$choice" = "1" ]; then
    echo ""
    echo "🚀 Starting EAS Build..."
    echo "You'll need to login with your Expo account"
    echo ""
    
    # Check if logged in
    if ! eas whoami &> /dev/null; then
        echo "Please login to your Expo account:"
        eas login
    fi
    
    echo ""
    echo "Building APK with EAS..."
    eas build --platform android --profile preview
    
    echo ""
    echo "✅ Build submitted! Check your Expo dashboard for the download link"
    echo "   https://expo.dev/accounts/[your-username]/projects/budget-flow/builds"
    
elif [ "$choice" = "2" ]; then
    echo ""
    echo "🔧 Starting Local Build..."
    
    # Check for Android SDK
    if [ -z "$ANDROID_HOME" ]; then
        echo "❌ Error: ANDROID_HOME not set"
        echo ""
        echo "Please set ANDROID_HOME to your Android SDK location:"
        echo "export ANDROID_HOME=/path/to/android-sdk"
        echo ""
        echo "Or install Android SDK from: https://developer.android.com/studio"
        exit 1
    fi
    
    echo "Building APK locally..."
    cd android
    chmod +x gradlew
    ./gradlew assembleRelease
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ Build successful!"
        echo "APK location: android/app/build/outputs/apk/release/app-release.apk"
    else
        echo ""
        echo "❌ Build failed. Check the error messages above."
        exit 1
    fi
else
    echo "Invalid choice. Please run again and select 1 or 2."
    exit 1
fi

echo ""
echo "✨ Done!"
