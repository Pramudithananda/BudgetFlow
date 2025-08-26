#!/bin/bash

# BudgetFlow APK Builder Script
# This script will help you get your APK download link quickly

echo "🚀 BudgetFlow APK Builder v1.1.0"
echo "=================================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if EAS CLI is installed
if ! command -v eas &> /dev/null; then
    echo -e "${YELLOW}📦 Installing EAS CLI...${NC}"
    npm install -g eas-cli
fi

# Check login status
echo -e "${BLUE}🔐 Checking EAS login status...${NC}"
if eas whoami &> /dev/null; then
    echo -e "${GREEN}✅ Already logged in to EAS${NC}"
    USER=$(eas whoami)
    echo -e "   Logged in as: ${USER}"
else
    echo -e "${YELLOW}⚠️  Not logged in to EAS${NC}"
    echo ""
    echo "🎯 To get your APK download link, you need to:"
    echo "   1. Login to EAS: eas login"
    echo "   2. Run this script again"
    echo ""
    echo "💡 Don't have an Expo account? Create FREE at: https://expo.dev"
    echo ""
    
    read -p "Do you want to login now? (y/n): " login_choice
    if [[ $login_choice == "y" || $login_choice == "Y" ]]; then
        eas login
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}✅ Login successful!${NC}"
        else
            echo -e "${RED}❌ Login failed. Please try manually: eas login${NC}"
            exit 1
        fi
    else
        echo "Please run 'eas login' and then run this script again."
        exit 1
    fi
fi

echo ""
echo -e "${BLUE}🔨 Starting APK build process...${NC}"
echo "   Profile: production-apk"
echo "   Platform: Android"
echo "   Version: 1.1.0"
echo ""

# Ask user for build type
echo "Select build type:"
echo "1) Production APK (recommended for sharing) - 10-15 minutes"
echo "2) Preview APK (faster for testing) - 5-8 minutes"
read -p "Enter choice (1 or 2): " build_choice

if [[ $build_choice == "1" ]]; then
    PROFILE="production-apk"
    echo -e "${GREEN}📱 Building production APK...${NC}"
elif [[ $build_choice == "2" ]]; then
    PROFILE="preview"
    echo -e "${GREEN}📱 Building preview APK...${NC}"
else
    echo -e "${YELLOW}Using default: production APK${NC}"
    PROFILE="production-apk"
fi

echo ""
echo -e "${YELLOW}⏰ Build will take 5-15 minutes. Please wait...${NC}"
echo ""

# Start the build
eas build --platform android --profile $PROFILE

# Check if build was successful
if [ $? -eq 0 ]; then
    echo ""
    echo -e "${GREEN}🎉 BUILD SUCCESSFUL! 🎉${NC}"
    echo "========================="
    echo ""
    
    # Get the download link
    echo -e "${BLUE}📥 Getting download link...${NC}"
    echo ""
    
    eas build:list --platform=android --limit=1
    
    echo ""
    echo -e "${GREEN}✅ Your APK download link is shown above!${NC}"
    echo ""
    echo "📤 Share this link with anyone to download BudgetFlow v1.1.0"
    echo ""
    echo "📋 Features in this APK:"
    echo "   • Complete budget tracking"
    echo "   • Expense management with categories"
    echo "   • Test data setup (Settings → Test Data Setup)"
    echo "   • PDF report generation"
    echo "   • Dark/Light themes"
    echo "   • Offline capable"
    echo "   • Sinhala & English support"
    echo ""
    echo "🔗 Link validity: 30 days"
    echo "📱 File size: ~15-25 MB"
    echo "🤖 Compatible: Android 5.0+"
    echo ""
    echo -e "${BLUE}📋 Installation Instructions for Users:${NC}"
    echo "   1. Click the download link"
    echo "   2. Enable 'Unknown Sources' in Android settings"
    echo "   3. Install the downloaded APK"
    echo "   4. Open BudgetFlow app"
    echo "   5. Go to Settings → Test Data Setup for demo"
    
else
    echo ""
    echo -e "${RED}❌ BUILD FAILED${NC}"
    echo "==============="
    echo ""
    echo "🔍 Common solutions:"
    echo "   1. Check internet connection"
    echo "   2. Verify EAS login: eas whoami"
    echo "   3. Try with cache clear: eas build --platform android --profile $PROFILE --clear-cache"
    echo "   4. Check build logs: eas build:list --platform=android --limit=1"
    echo ""
    echo "📞 Need help? Check the detailed guides:"
    echo "   • README_APK.md - Quick start guide"
    echo "   • APK_BUILD_GUIDE.md - Detailed troubleshooting"
fi

echo ""
echo "🚀 Script completed!"