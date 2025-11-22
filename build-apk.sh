#!/bin/bash

# BudgetFlow APK Build Script
echo "🚀 Starting BudgetFlow APK build process..."

# Set environment variables
export ANDROID_HOME=/usr/lib/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Clean previous builds
echo "🧹 Cleaning previous builds..."
cd /workspace
rm -rf android/build
rm -rf android/app/build

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Prebuild Android project
echo "🔨 Prebuilding Android project..."
npx expo prebuild --platform android --clean

# Accept Android SDK licenses (if possible)
echo "📋 Accepting Android SDK licenses..."
if command -v sdkmanager &> /dev/null; then
    yes | sdkmanager --licenses
else
    echo "⚠️  sdkmanager not found, skipping license acceptance"
fi

# Build APK
echo "🔨 Building APK..."
cd android
./gradlew assembleRelease

# Check if APK was created
if [ -f "app/build/outputs/apk/release/app-release.apk" ]; then
    echo "✅ APK build successful!"
    echo "📱 APK location: android/app/build/outputs/apk/release/app-release.apk"
    
    # Copy APK to workspace root
    cp app/build/outputs/apk/release/app-release.apk /workspace/BudgetFlow-v1.0.0.apk
    echo "📁 APK copied to: /workspace/BudgetFlow-v1.0.0.apk"
    
    # Show APK info
    ls -lh /workspace/BudgetFlow-v1.0.0.apk
else
    echo "❌ APK build failed!"
    echo "📋 Build logs available in android/build directory"
fi

echo "🏁 Build process completed!"