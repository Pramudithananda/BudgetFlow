# 📱 APK Download Link Setup Guide
# APK Download Link හදාගන්න ගයිඩ්

## 🎯 Goal / ඉලක්කය
Create a shareable download link for your BudgetFlow APK that anyone can use to install the app.

## ⚡ Quick Steps / ක්ෂණික පියවර

### 1. **Login to EAS** / EAS වලට Login වීම
```bash
eas login
```
- Enter your Expo account email/password
- Create account at https://expo.dev if needed (FREE!)

### 2. **Build APK** / APK Build කරන්න
```bash
# Option A: Production APK (recommended)
npm run build:android

# Option B: Quick preview APK
npm run build:android:preview
```

### 3. **Get Download Link** / Download Link ගන්න
```bash
# Check build status
npm run build:status

# Get download link
eas build:list --platform=android --limit=1
```

### 4. **Share the Link** / Link එක Share කරන්න
- Copy the download URL from the terminal output
- Share via WhatsApp, email, etc.
- Link works for 30 days

---

## 📋 Complete Process / සම්පූර්ණ ක්‍රමය

### Step 1: Expo Account Setup / Expo ගිණුම් සැකසීම

1. **Create Free Account:**
   - Go to: https://expo.dev
   - Click "Sign Up"
   - Use email/password or GitHub
   - **No credit card needed!**

2. **Login via Terminal:**
   ```bash
   eas login
   ```

### Step 2: Build Configuration / Build සැකසීම

Your project is already configured! ✅
- `eas.json` ✅ Ready
- `app.json` ✅ Ready  
- Build profiles ✅ Ready

### Step 3: Start Build / Build ආරම්භ කරන්න

```bash
# Full production build (recommended for sharing)
eas build --platform android --profile production-apk

# OR quick preview build (faster, for testing)
eas build --platform android --profile preview
```

**Build time:** 5-15 minutes ⏰

### Step 4: Monitor Build / Build Monitor කරන්න

```bash
# Check build progress
eas build:list --platform=android --limit=5

# Or visit dashboard
# https://expo.dev/accounts/[your-username]/projects/budget-flow/builds
```

### Step 5: Get Download Link / Download Link ගන්න

When build completes successfully:

```bash
# Get latest build with download link
eas build:list --platform=android --limit=1
```

Example output:
```
✔ Android • production-apk • finished • 2 minutes ago
  ID: abc123def-456g-789h-ijkl-mnop012qrstu
  Download: https://expo.dev/artifacts/eas/abc123...xyz789.apk
```

### Step 6: Share APK / APK Share කරන්න

**Option 1: Direct Link Sharing**
```
Hey! Download BudgetFlow app:
https://expo.dev/artifacts/eas/abc123...xyz789.apk

Installation:
1. Download APK
2. Enable "Unknown Sources" in Android settings
3. Install the APK
4. Open BudgetFlow app
```

**Option 2: QR Code**
- EAS dashboard provides QR codes
- Recipients scan to download
- Easy for quick distribution

---

## 🔧 Alternative Methods / විකල්ප ක්‍රම

### Method 1: Using Build Script / Build Script භාවිතය
```bash
# Run automated script
./scripts/build-apk.sh
```

### Method 2: EAS Dashboard / EAS Dashboard
1. Visit: https://expo.dev
2. Go to your project
3. Click "Builds"
4. Click "Create Build"
5. Select Android + APK
6. Start build

---

## 📊 Build Types Comparison / Build වර්ග සැසඳීම

| Profile | Build Time | Size | Best For |
|---------|------------|------|----------|
| `preview` | 5-8 mins | Larger | Quick testing |
| `production-apk` | 10-15 mins | Optimized | Final sharing |

---

## 🚀 Share Ready Links / Share Ready Links

Once you have the download link, you can share it like this:

### WhatsApp Message Template:
```
🎉 BudgetFlow App Ready!

📱 Download: [PASTE_DOWNLOAD_LINK_HERE]

📋 Installation:
1️⃣ Click link to download APK
2️⃣ Enable "Unknown Sources" in phone settings
3️⃣ Install the downloaded file
4️⃣ Open BudgetFlow app

✨ Features:
• Budget tracking
• Expense management  
• Category organization
• PDF reports
• Offline storage

Questions? Reply here! 😊
```

### Email Template:
```
Subject: BudgetFlow App - Download Link

Hi,

Your BudgetFlow app is ready! 

Download Link: [PASTE_DOWNLOAD_LINK_HERE]

Installation Instructions:
1. Download the APK file from the link above
2. On your Android phone, go to Settings > Security > Enable "Unknown Sources"
3. Open the downloaded APK file and install
4. Launch the BudgetFlow app

The app includes comprehensive budget tracking, expense management, and reporting features.

Best regards,
[Your Name]
```

---

## ⚠️ Important Notes / වැදගත් සටහන්

### Download Link Validity / Download Link වලංගුභාවය
- **Valid for 30 days** from build date
- After expiry, rebuild using same commands
- Free Expo account: 30 builds per month

### App Installation / App ස්ථාපනය
- Users need to enable "Unknown Sources"
- Normal security warning on Android
- App works like any other Android app

### Updates / යාවත්කාලීන
- For app updates, rebuild and share new link
- Users install new APK over old one
- Data is preserved during updates

---

## 🎯 Success Checklist / සාර්ථකත්ව පරීක්ෂණ

- [ ] Expo account created and logged in
- [ ] Build completed successfully  
- [ ] Download link obtained
- [ ] APK file accessible via link
- [ ] Installation tested on Android device
- [ ] App launches and works correctly
- [ ] Link shared with intended users

---

## 📞 Need Help? / උදව් ඕනෙද?

**Common Issues:**
1. **Build fails** → Check `APK_BUILD_GUIDE.md` for detailed troubleshooting
2. **Can't login** → Verify Expo account credentials
3. **Link expired** → Rebuild APK using same commands
4. **App won't install** → Enable "Unknown Sources" in Android settings

**Resources:**
- Full guide: `APK_BUILD_GUIDE.md`
- Expo docs: https://docs.expo.dev/build/introduction/
- Community: https://chat.expo.dev/

---

🎉 **Your APK download link will be ready in just a few minutes!** 🎉