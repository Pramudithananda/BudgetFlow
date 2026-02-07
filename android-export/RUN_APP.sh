#!/bin/bash

# BudgetFlow v1.1.0 Quick Runner
echo "🚀 Starting BudgetFlow v1.1.0..."
echo "=============================="

# Check if we're in the right directory
if [ ! -f "../package.json" ]; then
    echo "📁 Moving to project root..."
    cd ..
fi

# Install dependencies if needed
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

echo ""
echo "🎯 Choose how to run BudgetFlow:"
echo "1) 📱 Start with Expo Go (scan QR code)"
echo "2) 🌐 Run in web browser"
echo "3) 📊 Show project info"
echo ""

read -p "Select option (1-3): " choice

case $choice in
    1)
        echo "📱 Starting Expo development server..."
        echo "   → Install Expo Go from Play Store"
        echo "   → Scan the QR code that appears"
        echo "   → Your app will load instantly!"
        echo ""
        npx expo start
        ;;
    2)
        echo "🌐 Starting web version..."
        npx expo start --web
        ;;
    3)
        echo "📊 BudgetFlow v1.1.0 Project Info:"
        echo "   → Complete budget tracking app"
        echo "   → All latest features included"
        echo "   → SQLite database with test data"
        echo "   → Dark/light themes"
        echo "   → Sinhala/English interface"
        echo "   → PDF report generation"
        echo "   → Offline capable"
        echo ""
        echo "Features:"
        echo "   ✅ Expense management"
        echo "   ✅ Category organization"  
        echo "   ✅ Funder tracking"
        echo "   ✅ Budget analytics"
        echo "   ✅ Test data setup"
        echo "   ✅ PDF exports"
        echo ""
        ;;
    *)
        echo "📱 Starting default mode (Expo Go)..."
        npx expo start
        ;;
esac