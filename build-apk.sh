#!/bin/bash

# APK Build Script for BudgetFlow App

set -e

echo "🚀 Building BudgetFlow APK..."

# Check if EAS CLI is available
if command -v eas &> /dev/null || command -v npx &> /dev/null; then
    echo "📦 Using EAS Build (Cloud)..."
    
    # Check if logged in
    if npx eas-cli whoami &> /dev/null; then
        echo "✅ EAS login detected"
        echo "🔨 Starting EAS build..."
        npx eas-cli build --platform android --profile preview
        echo "✅ Build started! Check your EAS dashboard for the APK."
    else
        echo "❌ Not logged in to EAS"
        echo "Please run: npx eas-cli login"
        echo "Then run this script again."
        exit 1
    fi
elif [ -n "$ANDROID_HOME" ] || [ -f "android/local.properties" ]; then
    echo "📦 Using Local Gradle Build..."
    cd android
    ./gradlew assembleRelease
    echo "✅ APK built successfully!"
    echo "📍 Location: android/app/build/outputs/apk/release/app-release.apk"
else
    echo "❌ No build method available"
    echo ""
    echo "Please either:"
    echo "1. Login to EAS: npx eas-cli login"
    echo "2. Set up Android SDK and set ANDROID_HOME"
    echo ""
    echo "See BUILD_INSTRUCTIONS.md for details"
    exit 1
fi
