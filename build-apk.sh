#!/bin/bash

# BudgetFlow APK Build Script
# මේ script එක APK build කිරීම automate කරයි

echo "🚀 BudgetFlow APK Build Script"
echo "================================"
echo ""

# Check if Android SDK is available
if [ -z "$ANDROID_HOME" ]; then
    echo "⚠️  ANDROID_HOME environment variable set කර නැත"
    echo ""
    echo "කරුණාකර පහත commands භාවිතයෙන් ANDROID_HOME set කරන්න:"
    echo ""
    echo "    export ANDROID_HOME=/path/to/your/android/sdk"
    echo "    export PATH=\$PATH:\$ANDROID_HOME/platform-tools"
    echo ""
    echo "නැතහොත් local.properties file එකක් create කරන්න:"
    echo ""
    echo "    echo 'sdk.dir=/path/to/your/android/sdk' > android/local.properties"
    echo ""
    read -p "local.properties file එකක් create කරන්නද? (y/n): " create_local_props
    
    if [ "$create_local_props" == "y" ]; then
        read -p "Android SDK path එක enter කරන්න: " sdk_path
        echo "sdk.dir=$sdk_path" > android/local.properties
        echo "✅ local.properties file එක create කළා"
    else
        echo "❌ Build කිරීම වසා දමා ඇත"
        exit 1
    fi
fi

echo "📦 Dependencies check කරමින්..."
if [ ! -d "node_modules" ]; then
    echo "📥 Dependencies install කරමින්..."
    npm install
else
    echo "✅ Dependencies already installed"
fi

echo ""
echo "🏗️  Native project generate කරමින්..."
if [ ! -d "android" ]; then
    npx expo prebuild --platform android --clean
else
    echo "✅ Android project already exists"
fi

echo ""
echo "🔨 APK build කරමින්..."
echo "මෙය කිහිපයක් විනාඩි ගත විය හැක..."
echo ""

cd android

# Clean previous builds
./gradlew clean

# Build release APK
./gradlew assembleRelease

# Check if build was successful
if [ $? -eq 0 ]; then
    echo ""
    echo "✅ ============================================"
    echo "✅  APK Build සාර්ථකයි!"
    echo "✅ ============================================"
    echo ""
    echo "📱 APK file location:"
    echo "    $(pwd)/app/build/outputs/apk/release/app-release.apk"
    echo ""
    
    # Get APK size
    apk_size=$(du -h app/build/outputs/apk/release/app-release.apk | cut -f1)
    echo "📊 APK size: $apk_size"
    echo ""
    echo "🎉 ඔබගේ APK file එක install කිරීමට සූදානම්!"
    echo ""
    echo "📲 Install කරන්නේ කෙසේද:"
    echo "    1. APK file එක ඔබගේ Android phone එකට copy කරන්න"
    echo "    2. File එක tap කර install කරන්න"
    echo "    3. 'Install from unknown sources' enable කරන්න (අවශ්‍ය නම්)"
    echo ""
else
    echo ""
    echo "❌ ============================================"
    echo "❌  Build failed!"
    echo "❌ ============================================"
    echo ""
    echo "Build logs check කරන්න සහ නැවත උත්සාහ කරන්න."
    echo ""
    exit 1
fi
