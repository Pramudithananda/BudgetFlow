# BudgetFlow - APK Build Instructions

## සිංහල / Sinhala

### මම කළ වෙනස්කම්:
✅ **app.js file එක මකා දැමුවා** - මෙය web-based React component එකක් වූ නිසා React Native app එක සමඟ නොගැලපුණා
✅ **App.js file එක නිවැරදියි** - Expo Router භාවිතා කරමින් නිවැරදිව configure කර ඇත
✅ **Dependencies install කර ඇත**
✅ **Native Android project generate කර ඇත**

### APK එක build කිරීමට ක්‍රම 3 ක් තිබේ:

---

## ක්‍රමය 1: EAS Build (නිර්දේශිතයි - ඉක්මනින්ම හා පහසුයි)

**පියවර:**

1. Expo account එකක් create කරන්න (නොමිලේ): https://expo.dev/signup

2. Terminal එකේ login වන්න:
```bash
npx eas login
```

3. APK build කරන්න:
```bash
npx eas build --platform android --profile preview
```

4. Build එක complete වුණාම (විනාඩි 10-15), APK download link එකක් email / dashboard එකේ ලැබෙනවා

**වාසි:**
- Android SDK install කිරීමේ අවශ්‍යතාවක් නැහැ
- Expo servers එකේ build වෙනවා
- APK link එකක් දෙනවා download කරන්න

---

## ක්‍රමය 2: EAS Build with Token (CI/CD සඳහා)

ඔබට Expo account තියෙනවා නම්:

1. Access token එකක් generate කරන්න: https://expo.dev/accounts/[your-username]/settings/access-tokens

2. Token එක set කරන්න:
```bash
export EXPO_TOKEN=your_token_here
```

3. Build කරන්න:
```bash
npx eas build --platform android --profile preview --non-interactive
```

---

## ක්‍රමය 3: Local Build (Android SDK අවශ්‍යයි)

**පූර්ව අවශ්‍යතා:**
- Java JDK 17+ installed
- Android SDK installed
- ANDROID_HOME environment variable set

**පියවර:**

1. Android SDK path එක set කරන්න:
```bash
export ANDROID_HOME=/path/to/android-sdk
```

2. APK build කරන්න:
```bash
cd android
./gradlew assembleRelease
```

3. APK එක මෙතන හමුවෙයි:
```
android/app/build/outputs/apk/release/app-release.apk
```

---

## English Translation

### Changes I Made:
✅ **Deleted app.js file** - It was a web-based React component incompatible with React Native
✅ **App.js is correct** - Properly configured using Expo Router
✅ **Dependencies installed**
✅ **Native Android project generated**

### 3 Ways to Build APK:

---

## Method 1: EAS Build (Recommended - Fastest & Easiest)

**Steps:**

1. Create an Expo account (free): https://expo.dev/signup

2. Login in terminal:
```bash
npx eas login
```

3. Build APK:
```bash
npx eas build --platform android --profile preview
```

4. When build completes (10-15 mins), you'll get APK download link via email/dashboard

**Advantages:**
- No need to install Android SDK
- Builds on Expo servers
- Provides APK download link

---

## Method 2: EAS Build with Token (for CI/CD)

If you have an Expo account:

1. Generate access token: https://expo.dev/accounts/[your-username]/settings/access-tokens

2. Set token:
```bash
export EXPO_TOKEN=your_token_here
```

3. Build:
```bash
npx eas build --platform android --profile preview --non-interactive
```

---

## Method 3: Local Build (Requires Android SDK)

**Prerequisites:**
- Java JDK 17+ installed
- Android SDK installed
- ANDROID_HOME environment variable set

**Steps:**

1. Set Android SDK path:
```bash
export ANDROID_HOME=/path/to/android-sdk
```

2. Build APK:
```bash
cd android
./gradlew assembleRelease
```

3. APK will be at:
```
android/app/build/outputs/apk/release/app-release.apk
```

---

## Project Information

- **App Name:** BudgetFlow
- **Package:** com.budgetflow.app
- **Version:** 1.0.0
- **Expo SDK:** ~52.0.47

## Configuration Files

- ✅ `app.json` - Properly configured
- ✅ `eas.json` - EAS Build profiles ready
- ✅ `package.json` - All dependencies listed
- ✅ `android/` - Native project generated

## Quick Start (Method 1 - Recommended)

```bash
# Install EAS CLI
npm install -g eas-cli

# Login
npx eas login

# Build APK
npx eas build --platform android --profile preview

# Follow the prompts and wait for build to complete
```

Your APK will be ready to download from the Expo dashboard!
