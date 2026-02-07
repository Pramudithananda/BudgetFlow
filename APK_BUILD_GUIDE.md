# 📱 BudgetFlow APK Build Guide
# BudgetFlow APK හදන්න සහ Share කරන්න

## 🚀 Quick Start / ක්ෂණික ආරම්භය

### Method 1: Automated Script / ස්වයංක්‍රීය Script

```bash
# Run the automated build script
./scripts/build-apk.sh
```

### Method 2: Manual Commands / Manual Commands

```bash
# 1. Install EAS CLI (if not already installed)
npm install -g eas-cli

# 2. Login to your Expo account
eas login

# 3. Build the APK
eas build --platform android --profile production-apk
```

---

## 📋 Prerequisites / පූර්ව අවශ්‍යතා

### 1. Expo Account / Expo ගිණුම
- Create account at: https://expo.dev
- Free account allows 30 builds per month
- No credit card required for basic usage

### 2. EAS CLI Installation / EAS CLI ස්ථාපනය
```bash
npm install -g eas-cli
```

### 3. Project Setup / ව්‍යාපෘති සැකසීම
- ✅ EAS project ID configured in app.json
- ✅ Android package name set
- ✅ Build profiles configured in eas.json

---

## 🔧 Build Configuration / Build සැකසීම

### Current EAS Configuration / වර්තමාන EAS සැකසීම

**File: `eas.json`**
```json
{
  "cli": {
    "version": ">= 5.9.1"
  },
  "build": {
    "preview": {
      "distribution": "internal",
      "android": {
        "buildType": "apk"
      }
    },
    "production-apk": {
      "distribution": "store",
      "android": {
        "buildType": "apk"
      }
    }
  }
}
```

### Build Profiles / Build Profiles

1. **`preview`** - Internal testing APK
   - Faster build time
   - Internal distribution
   - Good for testing

2. **`production-apk`** - Production APK
   - Optimized for release
   - Store-ready
   - Recommended for sharing

---

## 📱 Building APK / APK හැදීම

### Step-by-Step Process / පියවරෙන් පියවර ක්‍රමය

#### 1. **Login to EAS / EAS වලට Login වීම**
```bash
eas login
```
- Enter your Expo account email and password
- ඔබේ Expo ගිණුමේ email සහ password ඇතුළත් කරන්න

#### 2. **Start Build Process / Build ක්‍රමය ආරම්භ කරන්න**

**For Testing APK:**
```bash
eas build --platform android --profile preview
```

**For Production APK:**
```bash
eas build --platform android --profile production-apk
```

#### 3. **Monitor Build Progress / Build ප්‍රගතිය නිරීක්ෂණය**
- Build process takes 5-15 minutes
- Build ක්‍රමය විනාඩි 5-15ක් ගනී
- Check progress at: https://expo.dev/accounts/[your-username]/projects/budget-flow/builds

#### 4. **Download APK / APK Download කරන්න**
- Build completes successfully
- Download link will be provided
- APK file will be available for 30 days

---

## 🔗 Getting Download Link / Download Link ගන්න

### Method 1: From Build Output / Build Output එකෙන්
After successful build, the download URL will be displayed in terminal.

### Method 2: EAS Dashboard / EAS Dashboard එකෙන්
1. Visit: https://expo.dev/accounts/[your-username]/projects/budget-flow/builds
2. Click on latest build
3. Download APK file
4. Copy download link to share

### Method 3: Command Line / Command Line එකෙන්
```bash
# Get latest build info
eas build:list --platform=android --limit=1

# Get specific build details
eas build:view [BUILD_ID]
```

---

## 📤 Sharing APK / APK Share කරන්න

### Option 1: Direct Download Link / සෘජු Download Link
- Copy the download URL from EAS dashboard
- Share the link via WhatsApp, email, etc.
- Link remains valid for 30 days

### Option 2: QR Code Sharing / QR Code Sharing
- EAS provides QR codes for easy sharing
- Recipients can scan to download APK
- Great for quick distribution

### Option 3: File Sharing Services / File Sharing Services
Upload APK to:
- Google Drive
- Dropbox
- WeTransfer
- MediaFire

---

## 📊 Build Status & Monitoring / Build Status සහ Monitoring

### Check Build Status / Build Status බලන්න
```bash
# List all builds
eas build:list

# Check specific build
eas build:view [BUILD_ID]

# Monitor current build
eas build:list --platform=android --status=in-progress
```

### Build Artifacts / Build Artifacts
- **APK File**: Android application package
- **Build Logs**: Detailed build information
- **Metadata**: App version, build time, etc.

---

## 🚨 Troubleshooting / ගැටළු විසඳීම

### Common Issues / සාමාන්‍ය ගැටළු

#### 1. **"Not logged in to EAS"**
**Solution:**
```bash
eas login
```

#### 2. **"Build failed due to configuration error"**
**Solution:**
- Check `app.json` for correct package name
- Verify `eas.json` build profiles
- Ensure all required fields are filled

#### 3. **"Quota exceeded"**
**Solution:**
- Free accounts have 30 builds/month limit
- Wait for quota reset or upgrade account
- Use `preview` profile for testing (faster builds)

#### 4. **"Android package name conflict"**
**Solution:**
```json
// In app.json
"android": {
  "package": "com.budgetflow.app.unique"
}
```

#### 5. **"Build artifacts expired"**
**Solution:**
- APK downloads expire after 30 days
- Rebuild using same command
- Consider uploading to permanent storage

---

## 💡 Best Practices / හොඳම පරිචයන්

### 1. **Version Management / Version කළමනාකරණය**
```json
// Update version in app.json before building
{
  "expo": {
    "version": "1.0.1",
    "android": {
      "versionCode": 2
    }
  }
}
```

### 2. **Build Optimization / Build Optimization**
- Use `preview` profile for testing
- Use `production-apk` for final release
- Clear cache if build issues: `--clear-cache`

### 3. **Security / ආරක්ෂාව**
- Never share Expo credentials
- Use secure file sharing for APKs
- Consider app signing for production

### 4. **Distribution / බෙදාහැරීම**
- Test APK on multiple devices before sharing
- Provide installation instructions
- Include app features description

---

## 📋 Installation Instructions / ස්ථාපන උපදේශ

### For End Users / අවසාන පරිශීලකයින් සඳහා

#### Android Installation / Android ස්ථාපනය
1. **Download APK** / APK Download කරන්න
2. **Enable Unknown Sources** / Unknown Sources enable කරන්න
   - Settings > Security > Unknown Sources
3. **Install APK** / APK Install කරන්න
   - Tap downloaded APK file
   - Follow installation prompts
4. **Open BudgetFlow** / BudgetFlow විවෘත කරන්න

#### Security Warning / ආරක්ෂණ අනතුරු ඇඟවීම
- Android may show security warning
- This is normal for non-Play Store apps
- Click "Install Anyway" to continue

---

## 🔄 Continuous Updates / අඛණ්ඩ යාවත්කාලීන

### Updating the App / App එක Update කරන්න

1. **Update code and version**
2. **Rebuild APK**
```bash
eas build --platform android --profile production-apk
```
3. **Distribute new APK**
4. **Users manually install update**

### Automated Distribution / ස්වයංක්‍රීය බෙදාහැරීම
Consider using:
- EAS Update for over-the-air updates
- Firebase App Distribution
- Internal app stores

---

## 📞 Support / සහාය

### Getting Help / උදව් ලබා ගැනීම

**EAS Documentation:**
- https://docs.expo.dev/build/introduction/

**Community Support:**
- Expo Discord: https://chat.expo.dev/
- Stack Overflow: Tag `expo` `eas-build`

**Build Issues:**
- Check EAS dashboard for detailed logs
- Review build configuration
- Contact Expo support if needed

---

## 🎯 Quick Commands Reference / ක්ෂණික Commands Reference

```bash
# Essential Commands
eas login                                    # Login to Expo
eas whoami                                   # Check login status
eas build --platform android --profile preview     # Test build
eas build --platform android --profile production-apk  # Production build
eas build:list                              # List all builds
eas build:view [BUILD_ID]                   # View build details

# Useful Options
--clear-cache                               # Clear build cache
--local                                     # Build locally (requires setup)
--wait                                      # Wait for build completion
--json                                      # Output in JSON format
```

---

**Happy Building! / සතුටින් Build කරන්න! 🚀**

Your BudgetFlow APK will be ready to share with anyone who wants to test or use the app!