#!/bin/bash

echo "🚀 BudgetFlow APK Builder"
echo "========================="
echo ""

# Check if EAS CLI is installed
if ! command -v eas &> /dev/null; then
    echo "📱 Installing EAS CLI..."
    npm install -g eas-cli
    echo ""
fi

echo "🔐 Step 1: Login to Expo"
echo "You need to login to your Expo account to build the APK."
echo ""

# Check login status
if eas whoami &> /dev/null; then
    echo "✅ Already logged in as: $(eas whoami)"
    echo ""
    echo "🔨 Step 2: Building APK..."
    echo "This will take 10-15 minutes. Please wait..."
    echo ""
    
    eas build --platform android --profile preview
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "🎉 APK Build Completed Successfully!"
        echo ""
        echo "📱 To download your APK:"
        echo "   1. Visit: https://expo.dev/accounts/$(eas whoami)/projects/budget-flow/builds"
        echo "   2. Click on the latest build"
        echo "   3. Download the APK file"
        echo ""
        echo "🔗 Direct URL: https://expo.dev/accounts/$(eas whoami)/projects/budget-flow"
        echo ""
        echo "📋 Build Details:"
        echo "   - App: BudgetFlow v2.0.0"
        echo "   - Platform: Android"
        echo "   - Type: APK"
        echo "   - Size: ~15-20 MB"
        echo ""
        echo "🚀 Your enhanced BudgetFlow app is ready!"
    else
        echo "❌ Build failed. Please check the error messages above."
        echo "💡 Try running: eas build --platform android --profile preview"
    fi
else
    echo "❌ Not logged in to Expo"
    echo ""
    echo "Please run: eas login"
    echo "Then run this script again."
    echo ""
    echo "💡 If you don't have an Expo account:"
    echo "   1. Visit: https://expo.dev/signup"
    echo "   2. Create a free account"
    echo "   3. Run: eas login"
    echo "   4. Run this script again"
fi