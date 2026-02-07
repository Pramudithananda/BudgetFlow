#!/bin/bash

echo "🚀 Installing BudgetFlow Enhanced App..."
echo "======================================"

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    echo "   Visit: https://nodejs.org/"
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 14 ]; then
    echo "❌ Node.js version 14 or higher is required. Current version: $(node -v)"
    echo "   Please update Node.js to continue."
    exit 1
fi

echo "✅ Node.js version: $(node -v)"

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install npm first."
    exit 1
fi

echo "✅ npm version: $(npm -v)"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

if [ $? -eq 0 ]; then
    echo "✅ Dependencies installed successfully!"
else
    echo "❌ Failed to install dependencies. Please check the error messages above."
    exit 1
fi

# Install additional chart dependencies
echo "📊 Installing chart dependencies..."
npm install react-native-chart-kit react-native-svg

if [ $? -eq 0 ]; then
    echo "✅ Chart dependencies installed successfully!"
else
    echo "❌ Failed to install chart dependencies. Please check the error messages above."
    exit 1
fi

# Check if Expo CLI is installed
if ! command -v expo &> /dev/null; then
    echo "📱 Installing Expo CLI..."
    npm install -g @expo/cli
    if [ $? -eq 0 ]; then
        echo "✅ Expo CLI installed successfully!"
    else
        echo "❌ Failed to install Expo CLI. Please check the error messages above."
        exit 1
    fi
else
    echo "✅ Expo CLI is already installed: $(expo --version)"
fi

echo ""
echo "🎉 BudgetFlow Enhanced App installation completed!"
echo ""
echo "📱 To run the app:"
echo "   npm start"
echo ""
echo "📱 For Android:"
echo "   npm run android"
echo ""
echo "📱 For iOS:"
echo "   npm run ios"
echo ""
echo "🌐 For Web:"
echo "   npm run web"
echo ""
echo "📚 For more information, check the README.md file"
echo ""
echo "🚀 Happy coding with BudgetFlow!"