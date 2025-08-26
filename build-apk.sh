#!/bin/bash

echo "🚀 Building BudgetFlow APK..."

# Check if EAS CLI is installed
if ! command -v eas &> /dev/null; then
    echo "📦 Installing EAS CLI..."
    npm install -g eas-cli
fi

# Check if logged in
if ! eas whoami &> /dev/null; then
    echo "🔐 Please login to EAS:"
    eas login
fi

# Build APK
echo "🔨 Building APK (this may take 10-15 minutes)..."
eas build --platform android --profile apk --non-interactive

echo "✅ Build started! Check your email for download link."
echo "📱 Or run: eas build:list"