#!/bin/bash

echo "🚀 Building BudgetFlow APK..."
echo "=============================="

# Check if EAS CLI is installed
if ! command -v eas &> /dev/null; then
    echo "📱 Installing EAS CLI..."
    npm install -g @expo/eas-cli
    if [ $? -eq 0 ]; then
        echo "✅ EAS CLI installed successfully!"
    else
        echo "❌ Failed to install EAS CLI. Please check the error messages above."
        exit 1
    fi
else
    echo "✅ EAS CLI is already installed: $(eas --version)"
fi

# Check if user is logged in to Expo
echo "🔐 Checking Expo login status..."
if ! eas whoami &> /dev/null; then
    echo "❌ Please log in to Expo first:"
    echo "   eas login"
    exit 1
fi

echo "✅ Logged in to Expo as: $(eas whoami)"

# Build the APK
echo "🔨 Building APK using EAS Build..."
echo "This may take 10-15 minutes..."

eas build --platform android --profile preview

if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 APK build completed successfully!"
    echo ""
    echo "📱 To download your APK:"
    echo "   1. Visit: https://expo.dev/accounts/$(eas whoami)/projects/budget-flow/builds"
    echo "   2. Click on the latest build"
    echo "   3. Download the APK file"
    echo ""
    echo "🔗 Direct build URL: https://expo.dev/accounts/$(eas whoami)/projects/budget-flow"
    echo ""
    echo "📋 Build Details:"
    echo "   - App Name: BudgetFlow"
    echo "   - Version: 2.0.0"
    echo "   - Platform: Android"
    echo "   - Build Type: APK"
    echo ""
    echo "🚀 Your enhanced BudgetFlow app is ready!"
else
    echo "❌ APK build failed. Please check the error messages above."
    exit 1
fi