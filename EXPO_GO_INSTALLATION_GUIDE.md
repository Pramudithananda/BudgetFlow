# 📱 Expo Go සමග BudgetFlow App Run කරන්න
# How to Run BudgetFlow with Expo Go

## 🎯 Goal / ඉලක්කය
ZIP file සහ Expo Go app use කරලා ඔබේ phone එකේ BudgetFlow app run කරන්න

## ⚠️ Important Clarification / වැදගත් පැහැදිලි කිරීම

**Expo Go app එකෙන් traditional APK file එකක් create කරන්න බෑ.** ඒත් ඔබට app එක fully functional ලෙස run කරන්න පුළුවන්!

---

## 📱 **Method 1: Expo Go App (Recommended)**

### Step 1: Expo Go Install කරන්න
1. **Google Play Store** එක open කරන්න
2. **"Expo Go"** search කරන්න
3. **Install** කරන්න (FREE app)

### Step 2: ZIP File Download & Extract
1. **Download ZIP:** https://bashupload.com/Penb1/tuVNd.zip
2. **Extract** files to your phone storage
3. **Remember location** where you extracted

### Step 3: Expo Account Create කරන්න
1. **Expo Go app** open කරන්න
2. **"Sign up"** click කරන්න
3. **Email & password** enter කරන්න
4. **Account create** කරන්න (FREE)

### Step 4: Project Load කරන්න
1. Expo Go app එකේ **"+" icon** click කරන්න
2. **"Open from files"** select කරන්න
3. **Extracted folder** navigate කරන්න
4. **metadata.json** file select කරන්න
5. App load වෙයි!

### Step 5: App Test කරන්න
1. BudgetFlow app opens
2. **Settings → Test Data Setup** යන්න
3. **"Setup Complete Test Data"** click කරන්න
4. All features test කරන්න!

---

## 🌐 **Method 2: Web Browser (Alternative)**

### Step 1: Extract Files
1. ZIP file download කරන්න
2. Computer එකේ extract කරන්න
3. Web server setup කරන්න (Python/Node.js)

### Step 2: Serve Files
```bash
# Python method
python -m http.server 8000

# Node.js method  
npx http-server

# Access at: http://localhost:8000
```

### Step 3: Access on Phone
1. Computer IP address find කරන්න
2. Phone browser එකේ: `http://[COMPUTER-IP]:8000`
3. App loads as Progressive Web App
4. "Add to Home Screen" කරන්න app-like experience

---

## 🚨 **APK File ගන්න Real Method**

### Expo Go is NOT for creating APK files!
Expo Go is a **development tool** to test apps. For real APK:

### Real APK Build කරන්න:
```bash
# 1. Install EAS CLI
npm install -g eas-cli

# 2. Login to Expo
eas login

# 3. Build real APK
eas build --platform android --profile production-apk

# 4. Get download link (after 15 minutes)
eas build:list --platform=android --limit=1
```

**Result:** Real APK download link!
```
https://expo.dev/artifacts/eas/abc123def456.apk
```

---

## 📊 **Comparison / සැසඳීම**

| Method | APK File | Installation | Features |
|--------|----------|--------------|----------|
| **Expo Go** | ❌ No APK | Run in Expo Go | ✅ All features |
| **Web Browser** | ❌ No APK | Add to home screen | ✅ Most features |
| **EAS Build** | ✅ Real APK | Direct install | ✅ All features |

---

## 🎯 **What You Can Do with ZIP + Expo Go**

### ✅ **Fully Functional App:**
- Complete budget tracking
- Add/edit expenses & categories
- Test data setup
- PDF generation (limited)
- Dark/light themes
- All navigation
- SQLite functionality

### ❌ **Limitations:**
- No standalone APK file
- Requires Expo Go app
- Can't distribute as APK
- Dependent on Expo Go

---

## 📱 **Step-by-Step Phone Instructions**

### On Your Android Phone:

#### 1. **Install Expo Go**
   - Play Store → Search "Expo Go" → Install

#### 2. **Download ZIP**
   - Browser → https://bashupload.com/Penb1/tuVNd.zip
   - Download to Downloads folder

#### 3. **Extract ZIP**
   - File Manager → Downloads → Select ZIP
   - Extract to "BudgetFlow" folder

#### 4. **Open in Expo Go**
   - Expo Go app → Sign up/Login
   - "+" → "Open from files"
   - Navigate to BudgetFlow folder
   - Select metadata.json
   - App loads! 🎉

#### 5. **Test App**
   - Settings → Test Data Setup
   - Setup Complete Test Data
   - Explore all features!

---

## 🔄 **For Real APK Distribution**

### If you want to share APK files:
1. **Use computer with Node.js**
2. **Run EAS build commands**
3. **Get real APK download link**
4. **Share that link with others**

### Why EAS Build is needed:
- Expo Go = Development tool
- EAS Build = Production APK creator
- Real APK = Can be installed like any Android app

---

## 📞 **Troubleshooting**

### Issue 1: Expo Go won't load project
- **Solution:** Check file permissions, re-extract ZIP

### Issue 2: Features not working
- **Solution:** Some features need real APK environment

### Issue 3: Can't find metadata.json
- **Solution:** Look in extracted folder root

### Issue 4: App crashes
- **Solution:** Restart Expo Go, try again

---

## 🎉 **Summary**

### What ZIP + Expo Go gives you:
✅ **Fully working BudgetFlow app**
✅ **All features accessible**
✅ **Easy to test and demo**
✅ **No build time needed**

### What it doesn't give you:
❌ **Standalone APK file**
❌ **Independent installation**
❌ **Easy sharing to others**

### For APK file:
🚀 **Use EAS Build commands for real APK!**

---

**Try the Expo Go method first to test your app, then use EAS Build for real APK distribution!** 📱✨