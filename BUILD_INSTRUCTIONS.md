# BudgetFlow APK Build කිරීමේ උපදෙස්

## කළ වෙනස්කම්

### 1. app.js File එක Delete කළා ✅
- **ගැටළුව**: `app.js` file එක web React component එකක් වූ අතර React Native project එකකට නොගැලපුණි
- **විසඳුම**: File එක මකා දැමුවා
- **හේතුව**: 
  - Web-style `className` භාවිතා කළා (React Native හි `style` අවශ්‍යයි)
  - HTML elements (`div`, `button`) භාවිතා කළා (React Native components භාවිතා කළ යුතුයි)
  - `lucide-react` icons භාවිතා කළා (React Native සඳහා නොගැලපේ)

### 2. App.js Configuration Verify කළා ✅
- Entry point නිවැරදිව configure කර ඇත
- expo-router සහ React Native සඳහා සාර්ථකව set up කර ඇත
- Dependencies නිවැරදිව ස්ථාපනය කර ඇත

### 3. Android Native Project Generate කළා ✅
- `expo prebuild` භාවිතයෙන් native Android project එක generate කළා
- `/workspace/android/` directory එකේ සියලු අවශ්‍ය files තිබේ

## APK Build කිරීමේ ක්‍රම

### ක්‍රමය 1: EAS Build භාවිතයෙන් (නිර්දේශිත)

```bash
# 1. EAS CLI install කරන්න (already installed)
npm install -g eas-cli

# 2. Expo account එකට login වෙන්න
eas login

# 3. APK build කරන්න
eas build --platform android --profile preview

# Build complete වුනාම APK download link එකක් ලැබේ
```

### ක්‍රමය 2: Local Build (Android Studio සමඟ)

**පූර්ව අවශ්‍යතා:**
- Android Studio installed කර තිබිය යුතුයි
- Android SDK configured කර තිබිය යුතුයි
- Java Development Kit (JDK) installed කර තිබිය යුතුයි

**Steps:**

```bash
# 1. Android directory එකට යන්න
cd /workspace/android

# 2. Release APK build කරන්න
./gradlew assembleRelease

# 3. APK file එක හමුවේ:
# /workspace/android/app/build/outputs/apk/release/app-release.apk
```

### ක්‍රමය 3: Expo Development Build

```bash
# Development build එකක් සාදන්න
npx expo run:android

# මෙය Android emulator එකක හෝ connected device එකක run වේ
```

## Android SDK Setup කිරීම (ක්‍රමය 2 සඳහා)

### Option A: Android Studio භාවිතයෙන්
1. Android Studio download කරන්න: https://developer.android.com/studio
2. Install කර SDK Manager open කරන්න
3. Android SDK Platform 34 install කරන්න
4. Android SDK Build-Tools 34.0.0 install කරන්න

### Option B: Command Line Tools භාවිතයෙන්
```bash
# Android SDK Command Line Tools download කරන්න
wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip

# Extract කරන්න
unzip commandlinetools-linux-9477386_latest.zip -d ~/android-sdk

# ANDROID_HOME set කරන්න
export ANDROID_HOME=~/android-sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# SDK packages install කරන්න
sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"
```

## Build කිරීමේදී ඇතිවිය හැකි ගැටළු සහ විසඳුම්

### 1. SDK location not found
**ගැටළුව**: Android SDK හමු නොවේ

**විසඳුම**:
```bash
# Option 1: ANDROID_HOME environment variable set කරන්න
export ANDROID_HOME=/path/to/your/android/sdk

# Option 2: local.properties file එකක් create කරන්න
echo "sdk.dir=/path/to/your/android/sdk" > /workspace/android/local.properties
```

### 2. Memory issues during build
**විසඳුම**:
```bash
# gradle.properties file එකේ memory increase කරන්න
echo "org.gradle.jvmargs=-Xmx4g -XX:MaxMetaspaceSize=1g" >> /workspace/android/gradle.properties
```

### 3. Build failed - dependencies issue
**විසඳුම**:
```bash
# Dependencies නැවත install කරන්න
cd /workspace
rm -rf node_modules package-lock.json
npm install

# Android clean build එකක් run කරන්න
cd android
./gradlew clean
./gradlew assembleRelease
```

## APK Signing (Production සඳහා)

Production APK එකක් release කිරීමට නම් sign කළ යුතුයි:

```bash
# 1. Keystore එකක් generate කරන්න
keytool -genkeypair -v -storetype PKCS12 -keystore budgetflow.keystore -alias budgetflow -keyalg RSA -keysize 2048 -validity 10000

# 2. android/gradle.properties file එකේ add කරන්න:
BUDGETFLOW_UPLOAD_STORE_FILE=budgetflow.keystore
BUDGETFLOW_UPLOAD_KEY_ALIAS=budgetflow
BUDGETFLOW_UPLOAD_STORE_PASSWORD=your_password
BUDGETFLOW_UPLOAD_KEY_PASSWORD=your_password

# 3. Build කරන්න
cd android
./gradlew assembleRelease
```

## Quick Build Script

පහසුව සඳහා මම build script එකක් create කළා:

```bash
# Script එක executable කරන්න
chmod +x /workspace/build-apk.sh

# Run කරන්න
./build-apk.sh
```

## Final APK Location

Build සාර්ථකව complete වුනාම APK file එක මේ location එකේ හමුවේ:

```
/workspace/android/app/build/outputs/apk/release/app-release.apk
```

## වැදගත් සටහන්

1. ✅ **app.js web file එක delete කර ඇත** - මේක build errors වළක්වයි
2. ✅ **Dependencies install කර ඇත** - Project build කිරීමට සූදානම්
3. ✅ **Native Android project generate කර ඇත** - `/workspace/android/` directory එකේ
4. ⚠️ **Android SDK අවශ්‍යයි** - Local build කිරීමට Android SDK setup කළ යුතුයි
5. ✅ **EAS Build භාවිතා කළ හැක** - Login කර build command එක run කරන්න

## පහසුම ක්‍රමය (නිර්දේශිත)

```bash
# 1. EAS login කරන්න
eas login

# 2. Build කරන්න (cloud හරහා - Android SDK setup කිරීම අවශ්‍ය නැත)
eas build --platform android --profile preview

# 3. Build complete වුනාම download link එකක් ලැබේ
```

EAS Build භාවිතා කිරීම වඩාත් පහසුයි මන්ද:
- Android SDK setup කිරීම අවශ්‍ය නැත
- Cloud හරහා build වේ
- Automatic signing
- QR code එකක් හරහා install කළ හැක
