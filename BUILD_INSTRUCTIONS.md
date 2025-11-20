# APK Build Instructions

## Option 1: Build with EAS (Recommended - Cloud Build)

EAS Build builds your app in the cloud, so you don't need Android SDK installed locally.

### Steps:

1. **Login to EAS:**
   ```bash
   npx eas-cli login
   ```

2. **Build APK:**
   ```bash
   npx eas-cli build --platform android --profile preview
   ```

   This will build an APK file that you can download from the EAS dashboard.

## Option 2: Build Locally (Requires Android SDK)

If you have Android SDK installed:

1. **Set Android SDK location:**
   ```bash
   export ANDROID_HOME=/path/to/android/sdk
   # Or create android/local.properties with:
   # sdk.dir=/path/to/android/sdk
   ```

2. **Build APK:**
   ```bash
   cd android
   ./gradlew assembleRelease
   ```

   The APK will be at: `android/app/build/outputs/apk/release/app-release.apk`

## Option 3: Use Expo Development Build

```bash
npx expo run:android --variant release
```

---

## Current Status

✅ Code cleanup completed:
- Removed unused `app.js` (web component)
- Fixed `App.js` to use expo-router correctly
- All providers (Auth, Theme, GestureHandler, SafeArea) properly configured in `app/_layout.js`
- Native Android project generated with `expo prebuild`

The app is ready to build. Choose one of the options above based on your setup.
