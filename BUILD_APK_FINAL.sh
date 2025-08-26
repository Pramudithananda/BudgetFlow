#!/bin/bash

# BudgetFlow Final APK Builder - All Updates Included
# සියලු updates සමග අවසාන APK Builder

echo "🚀 BudgetFlow Final APK Builder v1.1.0"
echo "======================================"
echo "Building APK with ALL latest updates & features!"
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
NC='\033[0m'

# Show current features
echo -e "${BLUE}📱 Features Included in This APK:${NC}"
echo "✅ Complete Budget Tracking System v1.1.0"
echo "✅ Enhanced Test Data Setup (10 categories, 25+ expenses)"
echo "✅ Category Management with CRUD operations"
echo "✅ Funder Management & tracking"
echo "✅ Expense Management (all status types)"
echo "✅ Dashboard Analytics & PDF reports"
echo "✅ Dark/Light theme support"
echo "✅ SQLite database (offline capable)"
echo "✅ Sinhala & English interface"
echo "✅ Complete navigation system"
echo "✅ Real-time data updates"
echo ""

# Check EAS CLI
if ! command -v eas &> /dev/null; then
    echo -e "${YELLOW}📦 Installing EAS CLI...${NC}"
    npm install -g eas-cli
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ Failed to install EAS CLI${NC}"
        exit 1
    fi
fi

# Check login status
echo -e "${BLUE}🔐 Checking EAS authentication...${NC}"
if eas whoami &> /dev/null; then
    USER=$(eas whoami)
    echo -e "${GREEN}✅ Logged in as: ${USER}${NC}"
else
    echo -e "${YELLOW}⚠️  Not logged in to EAS${NC}"
    echo ""
    echo -e "${PURPLE}🎯 To build your APK, you need to:${NC}"
    echo "   1. Create FREE Expo account: https://expo.dev"
    echo "   2. Login: eas login"
    echo "   3. Run this script again"
    echo ""
    
    read -p "🤔 Do you want to login now? (y/n): " login_choice
    if [[ $login_choice == "y" || $login_choice == "Y" ]]; then
        echo -e "${BLUE}🔑 Starting login process...${NC}"
        eas login
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}✅ Login successful!${NC}"
        else
            echo -e "${RED}❌ Login failed${NC}"
            echo "Please run 'eas login' manually and try again"
            exit 1
        fi
    else
        echo -e "${YELLOW}👋 No problem! Run these commands when ready:${NC}"
        echo "   eas login"
        echo "   ./BUILD_APK_FINAL.sh"
        exit 0
    fi
fi

echo ""
echo -e "${BLUE}🏗️ Project Configuration Check...${NC}"

# Verify project files
FILES=("app.json" "package.json" "eas.json")
for file in "${FILES[@]}"; do
    if [ -f "$file" ]; then
        echo -e "${GREEN}✅ $file${NC}"
    else
        echo -e "${RED}❌ Missing $file${NC}"
        exit 1
    fi
done

# Show current version
VERSION=$(grep '"version"' app.json | cut -d'"' -f4)
echo -e "${GREEN}📱 App Version: $VERSION${NC}"

echo ""
echo -e "${PURPLE}🎯 Build Options:${NC}"
echo "1) 🚀 Production APK (recommended for sharing) - 10-15 minutes"
echo "2) ⚡ Preview APK (faster for testing) - 5-8 minutes"
echo "3) 📊 Check existing builds"
echo "4) 🔍 Project status"
echo ""

read -p "Select option (1-4): " build_choice

case $build_choice in
    1)
        PROFILE="production-apk"
        echo -e "${GREEN}🚀 Building Production APK...${NC}"
        BUILD_TYPE="Production"
        ;;
    2)
        PROFILE="preview"
        echo -e "${YELLOW}⚡ Building Preview APK...${NC}"
        BUILD_TYPE="Preview"
        ;;
    3)
        echo -e "${BLUE}📊 Recent Builds:${NC}"
        eas build:list --platform=android --limit=5
        exit 0
        ;;
    4)
        echo -e "${BLUE}📋 Project Status:${NC}"
        echo "Version: $VERSION"
        echo "Platform: Android"
        echo "Profiles available: production-apk, preview"
        eas whoami
        exit 0
        ;;
    *)
        echo -e "${YELLOW}Using default: Production APK${NC}"
        PROFILE="production-apk"
        BUILD_TYPE="Production"
        ;;
esac

echo ""
echo -e "${PURPLE}🔨 Starting $BUILD_TYPE APK Build...${NC}"
echo -e "${BLUE}📱 App: BudgetFlow v$VERSION${NC}"
echo -e "${BLUE}🏗️ Profile: $PROFILE${NC}"
echo -e "${BLUE}📊 Platform: Android${NC}"
echo ""
echo -e "${YELLOW}⏰ Estimated build time: 5-15 minutes${NC}"
echo -e "${YELLOW}☕ Please wait... Building your APK with all features!${NC}"
echo ""

# Start build
echo -e "${BLUE}🚀 Initiating build process...${NC}"
eas build --platform android --profile "$PROFILE"

if [ $? -eq 0 ]; then
    echo ""
    echo -e "${GREEN}🎉 BUILD SUCCESSFUL! 🎉${NC}"
    echo "=========================="
    echo ""
    
    # Get download link
    echo -e "${BLUE}📥 Retrieving your APK download link...${NC}"
    echo ""
    
    BUILD_INFO=$(eas build:list --platform=android --limit=1 2>/dev/null)
    echo "$BUILD_INFO"
    
    # Extract download URL
    DOWNLOAD_URL=$(echo "$BUILD_INFO" | grep -o 'https://expo\.dev/artifacts/eas/[^[:space:]]*\.apk' | head -1)
    
    if [ ! -z "$DOWNLOAD_URL" ]; then
        echo ""
        echo -e "${GREEN}🎉 SUCCESS! Your APK is ready!${NC}"
        echo ""
        echo -e "${PURPLE}📱 APK Download Link:${NC}"
        echo -e "${BLUE}$DOWNLOAD_URL${NC}"
        echo ""
        echo -e "${GREEN}✅ Copy this link to download your BudgetFlow APK!${NC}"
        echo ""
    fi
    
    echo -e "${PURPLE}📤 Ready to Share:${NC}"
    cat << EOF

🎉 BudgetFlow v$VERSION APK Ready!

📱 Download: $DOWNLOAD_URL

🆕 Latest Features:
✅ Complete budget tracking system
✅ Test data setup with 25+ sample expenses
✅ PDF report generation
✅ Category & funder management  
✅ Dark/Light theme support
✅ Offline capable - works without internet
✅ Sinhala & English interface

📋 Installation:
1️⃣ Click download link
2️⃣ Enable "Unknown Sources" in Android settings
3️⃣ Install the APK file
4️⃣ Open BudgetFlow app
5️⃣ Settings → Test Data Setup for instant demo

💡 Try the test data feature for a complete demo!
File size: ~20MB | Android 5.0+ compatible

EOF

    echo ""
    echo -e "${GREEN}🎯 Build Summary:${NC}"
    echo "   App: BudgetFlow v$VERSION"
    echo "   Type: $BUILD_TYPE APK"
    echo "   Platform: Android"
    echo "   Features: All included"
    echo "   Link validity: 30 days"
    echo ""
    echo -e "${BLUE}📱 Your APK is ready to install and share!${NC}"
    
else
    echo ""
    echo -e "${RED}❌ BUILD FAILED${NC}"
    echo "==============="
    echo ""
    echo -e "${YELLOW}🔍 Common solutions:${NC}"
    echo "   1. Check internet connection"
    echo "   2. Verify EAS login: eas whoami"
    echo "   3. Try with cache clear: eas build --platform android --profile $PROFILE --clear-cache"
    echo "   4. Check build logs: eas build:list --platform=android --limit=1"
    echo ""
    echo -e "${BLUE}📞 Need help?${NC}"
    echo "   • Documentation: https://docs.expo.dev/build/"
    echo "   • Community: https://chat.expo.dev/"
    echo ""
    exit 1
fi

echo ""
echo -e "${GREEN}🚀 Build process completed!${NC}"
echo -e "${BLUE}Thank you for using BudgetFlow APK Builder! 📱✨${NC}"