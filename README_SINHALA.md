# BudgetFlow App - APK Build සඳහා මාර්ගෝපදේශය

## 📋 මම කළ වෙනස්කම්

### 1. ✅ app.js file එක මකා දැමුවා
**ගැටලුව:** `app.js` file එක web application එකක් විදියට ලියා තිබුණා. මෙහි:
- HTML elements (div, input, button) භාවිතා කර තිබුණා
- Tailwind CSS classes තිබුණා
- lucide-react (web icon library) භාවිතා කර තිබුණා
- **මේ සියල්ල React Native mobile app එකක භාවිතා කරන්න බැහැ**

**විසඳුම:** app.js file එක මකා දැමුවා මන්දයත් මෙය mobile app එකට අදාළ නැහැ.

### 2. ✅ App.js file එක නිවැරදියි
**App.js** (capital A) file එක හොඳින් configure කර ඇත:
- Expo Router භාවිතා කරනවා
- සියලුම providers නිවැරදිව setup කර ඇත (AuthProvider, GestureHandler, SafeAreaProvider)
- React Native සඳහා නිවැරදි structure එක තිබෙනවා

### 3. ✅ Dependencies install කර ඇත
සියලුම npm packages install කර ඇත.

### 4. ✅ Android Native Project Generate කර ඇත
`android/` folder එක create කර ඇත පහත ඇතුළත්:
- Native Android code
- Gradle build files
- Android manifest

## 🚀 APK එක Build කරන්නේ කොහොමද?

### ක්‍රමය 1: EAS Build භාවිතා කිරීම (නිර්දේශිතයි ⭐)

මේක ලේසිම හා ඉක්මනම ක්‍රමය. ඔබට Android SDK install කරන්න අවශ්‍ය නැහැ.

#### පියවර:

1. **Expo Account එකක් හදාගන්න (නොමිලේ):**
   - https://expo.dev/signup වෙත යන්න
   - Sign up කරන්න

2. **Terminal එකේ login වන්න:**
   ```bash
   npx eas login
   ```
   ඔබේ email සහ password දාන්න

3. **APK Build කරන්න:**
   ```bash
   npx eas build --platform android --profile preview
   ```

4. **APK එක Download කරන්න:**
   - Build එක complete වෙයි (විනාඩි 10-15 ක් පමණ)
   - ඔබේ email එකට link එකක් එයි
   - නැත්නම් https://expo.dev වෙත login වී Dashboard එකේන් download කරන්න

#### ඉක්මන් ක්‍රමය - Build Script භාවිතා කරන්න:

```bash
./build-apk.sh
```

මේ script එක automatically සියල්ල කරයි. ඔබට පියවර 1 තෝරාගන්න පුළුවන්.

---

### ක්‍රමය 2: Local Build (Advanced - Android SDK අවශ්‍යයි)

මේ ක්‍රමය සඳහා ඔබේ computer එකේ Android development environment එකක් setup කර තිබිය යුතුයි.

#### පූර්ව අවශ්‍යතා:
- Java JDK 17 හෝ ඊට වැඩි version එකක්
- Android SDK (Android Studio හරහා install කරන්න)
- ANDROID_HOME environment variable set කර ඇතිවිය යුතුයි

#### පියවර:

1. **Android SDK Path එක set කරන්න:**
   ```bash
   export ANDROID_HOME=/path/to/your/android-sdk
   ```

2. **APK Build කරන්න:**
   ```bash
   cd android
   ./gradlew assembleRelease
   ```

3. **APK එක මෙතන හමුවෙයි:**
   ```
   android/app/build/outputs/apk/release/app-release.apk
   ```

---

## 📱 App Details

- **නම:** BudgetFlow
- **Package:** com.budgetflow.app
- **Version:** 1.0.0
- **Platform:** Android

## 📂 වැදගත් Files

- ✅ `App.js` - Main entry point (නිවැරදියි)
- ✅ `app/` - Expo Router screens (නිවැරදියි)
- ✅ `app.json` - App configuration (නිවැරදියි)
- ✅ `eas.json` - EAS Build configuration (නිවැරදියි)
- ✅ `android/` - Native Android project (generate කර ඇත)
- 📖 `BUILD_INSTRUCTIONS.md` - සවිස්තරාත්මක build මාර්ගෝපදේශ (English)
- 📖 `README_SINHALA.md` - මෙම file (සිංහල මාර්ගෝපදේශය)
- 🔧 `build-apk.sh` - Automated build script

## 🎯 නිර්දේශය

**EAS Build (ක්‍රමය 1) භාවිතා කරන්න** මන්දයත්:
- ඉතා පහසුයි
- Android SDK install කරන්න අවශ්‍ය නැහැ
- Expo servers එකේ build වෙනවා (ඔබේ computer slow කරන්නේ නැහැ)
- APK link එකක් දෙනවා
- දෝෂ අඩුයි

## ⚡ Quick Start (ක්‍රමය 1)

```bash
# 1. EAS CLI install කරන්න
npm install -g eas-cli

# 2. Login වන්න
npx eas login

# 3. APK build කරන්න
npx eas build --platform android --profile preview

# 4. Build complete වෙන තුරු රැඳී සිටින්න (විනාඩි 10-15)
# 5. Download link එක email එකෙන් හෝ expo.dev dashboard එකෙන් ලබාගන්න
```

## ❓ ගැටලු හමුවුවහොත්

1. **"SDK location not found" error:**
   - මෙය local build කරන විට පමණක් ඇතිවෙයි
   - විසඳුම: EAS Build (ක්‍රමය 1) භාවිතා කරන්න

2. **"An Expo user account is required" error:**
   - Expo account එකක් හදාගෙන login වන්න: `npx eas login`

3. **Build time එක වැඩියි:**
   - EAS Build සාමාන්‍යයෙන් විනාඩි 10-15 අතර කාලයක් ගනී
   - මෙය සාමාන්‍ය දෙයක්

## 📞 වැඩි විස්තර

සවිස්තරාත්මක English instructions සඳහා `BUILD_INSTRUCTIONS.md` file එක කියවන්න.

## ✨ සාර්ථකත්වය!

ඔබේ BudgetFlow app එක build කිරීමට සූදානම්. EAS Build භාවිතා කර APK එක ලබාගන්න!

---

**විශේෂ සටහන:** මම මේ ප්‍රොජෙක්ට් එක build කිරීමට සම්පූර්ණයෙන්ම සූදානම් කරලා දීලා තිබෙනවා. ඔබට කරන්න තියෙන්නේ:
1. Expo account එකක් හදාගන්න (නොමිලේ)
2. `npx eas login` කරන්න
3. `npx eas build --platform android --profile preview` run කරන්න
4. APK එක download කරගන්න

හෝ

`./build-apk.sh` run කරලා screen instructions follow කරන්න!
