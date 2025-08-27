#!/bin/bash

# BudgetFlow APK Build Script
# This script builds an APK file for the BudgetFlow app

echo "🚀 Starting BudgetFlow APK Build Process..."
echo "================================================"

# Check if EAS CLI is installed
if ! command -v eas &> /dev/null; then
    echo "❌ EAS CLI not found. Installing..."
    npm install -g eas-cli
fi

# Check if user is logged in to EAS
echo "🔐 Checking EAS authentication..."
if ! eas whoami &> /dev/null; then
    echo "⚠️  Not logged in to EAS. Please run 'eas login' first."
    echo "📝 Instructions:"
    echo "   1. Run: eas login"
    echo "   2. Enter your Expo account credentials"
    echo "   3. Run this script again"
    exit 1
fi

echo "✅ EAS authentication verified"

# Build the APK
echo "🔨 Building APK for Android..."
echo "📱 This will create a production-ready APK file"
echo "⏰ Build process may take 5-15 minutes..."

# Start the build process
eas build --platform android --profile production-apk --clear-cache

if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 BUILD SUCCESSFUL! 🎉"
    echo "========================"
    echo ""
    echo "📱 Your BudgetFlow APK has been built successfully!"
    echo ""
    echo "📋 Next steps:"
    echo "   1. Check your EAS dashboard: https://expo.dev/accounts/[your-username]/projects/budget-flow/builds"
    echo "   2. Download the APK from the build page"
    echo "   3. Share the download link with others"
    echo ""
    echo "🔗 You can also get the direct download link by running:"
    echo "   eas build:list --platform=android --limit=1"
    echo ""
else
    echo ""
    echo "❌ BUILD FAILED"
    echo "==============="
    echo ""
    echo "🔍 Common solutions:"
    echo "   1. Make sure you're logged in: eas login"
    echo "   2. Check your internet connection"
    echo "   3. Verify app.json configuration"
    echo "   4. Check EAS dashboard for detailed error logs"
    echo ""
    exit 1
fi