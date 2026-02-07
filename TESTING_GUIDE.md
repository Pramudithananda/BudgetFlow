# 🧪 BudgetFlow App Testing Guide
# BudgetFlow ඇප් එකේ ටෙස්ට් කිරීමේ ගයිඩ්

## 🚀 Quick Start / ක්ෂණික ආරම්භය

### Step 1: Setup Test Data / පියවර 1: ටෙස්ට් ඩේටා සකසන්න

1. **Open the App** / ඇප් එක විවෘත කරන්න
2. **Go to Settings Tab** / Settings tab එකට යන්න (⚙️)
3. **Click "Test Data Setup"** / "Test Data Setup" එක click කරන්න
4. **Click "🚀 Setup Complete Test Data"** / "🚀 Setup Complete Test Data" button එක click කරන්න
5. **Confirm the setup** / Setup එක confirm කරන්න

### What Gets Created / මොනවා සෑදෙනවද:
- **10 Categories** / 10 ප්‍රවර්ග
- **8 Funders** / 8 මුදල් සපයන්නන්
- **25+ Expenses** / 25+ වියදම්
- **5 Helpers** / 5 සහායකයින්
- **Realistic Budget Data** / සැබෑ budget දත්ත

---

## 📋 Feature Testing Checklist / විශේෂාංග පරීක්ෂා කිරීමේ ලැයිස්තුව

### 🏠 Home Screen / මුල් පිටුව
**Test:**
- [ ] View budget summary / Budget සාරාංශය බලන්න
- [ ] Check status cards (Outstanding, Pending, Received, Spent) / Status cards බලන්න
- [ ] View recent expenses / මෑත කාලීන වියදම් බලන්න
- [ ] Pull to refresh / Refresh කරන්න (pull down)
- [ ] Navigate to other screens / වෙනත් screens වලට යන්න

**Expected Results / අපේක්ෂිත ප්‍රතිඵල:**
- Total budget displayed / මුළු budget එක පෙන්වීම
- Status amounts correctly calculated / Status amounts නිරවද්‍ය ගණනය
- Recent expenses list / මෑත වියදම් ලැයිස්තුව

### 📂 Categories Screen / ප්‍රවර්ග පිටුව
**Test:**
- [ ] View all categories / සියලු categories බලන්න
- [ ] Check category totals / Category totals බලන්න
- [ ] Add new category / අලුත් category එකක් add කරන්න
- [ ] Edit existing category / පවතින category එකක් edit කරන්න
- [ ] Delete category / Category එකක් delete කරන්න
- [ ] Click on category to view details / Category එකක් click කරන්න details බලන්න

**Expected Results:**
- Categories with expense counts / Expense counts සහිත categories
- CRUD operations work / CRUD operations වැඩ කරනවා
- Navigation to category details / Category details වලට navigation

### 👥 Funders Screen / මුදල් සපයන්නන් පිටුව
**Test:**
- [ ] View all funders / සියලු funders බලන්න
- [ ] Add new funder / අලුත් funder එකක් add කරන්න
- [ ] Edit funder details / Funder details edit කරන්න
- [ ] Delete funder / Funder එකක් delete කරන්න
- [ ] View funder contribution summary / Funder contribution summary බලන්න

**Expected Results:**
- Funder list with totals / Totals සහිත funder ලැයිස්තුව
- Full CRUD functionality / සම්පූර්ණ CRUD functionality

### 📊 Dashboard Screen / Dashboard පිටුව
**Test:**
- [ ] View comprehensive analytics / සම්පූර්ණ analytics බලන්න
- [ ] Check status breakdown charts / Status breakdown charts බලන්න
- [ ] View category analysis / Category analysis බලන්න
- [ ] Check funder breakdown / Funder breakdown බලන්න
- [ ] Generate PDF report / PDF report එකක් generate කරන්න
- [ ] Share/download report / Report එක share/download කරන්න

**Expected Results:**
- Detailed financial analytics / සවිස්තරාත්මක මූල්‍ය analytics
- PDF generation works / PDF generation වැඩ කරනවා
- Charts display correctly / Charts නිරවද්‍ය ලෙස display වීම

### 💰 Expense Management / වියදම් කළමනාකරණය
**Test Adding New Expense / නව වියදමක් එකතු කිරීම පරීක්ෂා කරන්න:**
- [ ] Navigate to "Add Expense" / "Add Expense" වලට යන්න
- [ ] Fill all required fields / අවශ්‍ය සියලු ක්ෂේත්‍ර පුරවන්න
- [ ] Select category / Category එකක් select කරන්න
- [ ] Select funder / Funder එකක් select කරන්න
- [ ] Choose status / Status එකක් choose කරන්න
- [ ] Save expense / Expense එක save කරන්න

**Test Editing Expense / වියදම edit කිරීම පරීක්ෂා කරන්න:**
- [ ] Click on existing expense / පවතින expense එකක් click කරන්න
- [ ] Modify details / Details modify කරන්න
- [ ] Change status / Status change කරන්න
- [ ] Update expense / Expense එක update කරන්න

**Test Deleting Expense / වියදම delete කිරීම පරීක්ෂා කරන්න:**
- [ ] Select expense to delete / Delete කරන්න expense එකක් select කරන්න
- [ ] Confirm deletion / Deletion එක confirm කරන්න
- [ ] Verify removal from lists / Lists වලින් removal verify කරන්න

### ⚙️ Settings Screen / සැකසීම් පිටුව
**Test:**
- [ ] Toggle dark/light theme / Dark/light theme toggle කරන්න
- [ ] Check theme changes / Theme changes බලන්න
- [ ] Access test data setup / Test data setup වලට access කරන්න
- [ ] View about page / About page එක බලන්න
- [ ] Test help functionality / Help functionality test කරන්න

---

## 🔄 Advanced Testing Scenarios / උසස් පරීක්ෂණ අවස්ථා

### 1. Real-time Updates / Real-time Updates
**Test Steps:**
- [ ] Open app in multiple tabs (if web) / ඇප් එක tabs කිහිපයක විවෘත කරන්න
- [ ] Add expense in one tab / එක tab එකක expense එකක් add කරන්න
- [ ] Check if other tabs update / වෙනත් tabs update වෙනවාද බලන්න
- [ ] Verify data consistency / Data consistency verify කරන්න

### 2. Data Validation / දත්ත වලංගුකරණය
**Test Steps:**
- [ ] Try adding expense with empty fields / Empty fields සමග expense add කරන්න try කරන්න
- [ ] Test with invalid amounts / Invalid amounts සමග test කරන්න
- [ ] Try very large numbers / විශාල සංඛ්‍යා try කරන්න
- [ ] Test special characters / Special characters test කරන්න

### 3. Performance Testing / කාර්යක්ෂමතා පරීක්ෂණය
**Test Steps:**
- [ ] Add many expenses quickly / ඉක්මනින් expenses ගොඩක් add කරන්න
- [ ] Test scrolling large lists / විශාල lists scroll කරන්න test කරන්න
- [ ] Check app responsiveness / App responsiveness check කරන්න
- [ ] Monitor memory usage / Memory usage monitor කරන්න

### 4. Error Handling / දෝෂ හැසිරවීම
**Test Steps:**
- [ ] Test with network disconnected / Network disconnect කරල test කරන්න
- [ ] Try invalid operations / Invalid operations try කරන්න
- [ ] Test edge cases / Edge cases test කරන්න
- [ ] Verify error messages / Error messages verify කරන්න

---

## 📊 Test Data Breakdown / ටෙස්ට් දත්ත බෙදීම

### Categories Created / සාදන ලද ප්‍රවර්ග:
1. **ආහාර සහ පාන** (Food & Drinks)
2. **ප්‍රවාහන** (Transportation)
3. **විනෝදාස්වාදය** (Entertainment)
4. **අධ්‍යාපනය** (Education)
5. **සෞඛ්‍ය සේවා** (Healthcare)
6. **ගෘහ කටයුතු** (Household)
7. **කාර්යාල වියදම්** (Office Expenses)
8. **ජවනිකා සහ ඇඳුම්** (Clothing)
9. **ගිණුම් සහ බිල්පත්** (Bills & Utilities)
10. **ක්‍රීඩා සහ යෝග්‍යතා** (Sports & Fitness)

### Funders Created / සාදන ලද මුදල් සපයන්නන්:
1. **කෙසර මහත්තයා** (Kesara Sir)
2. **සමාගම මුල්‍ය අරමුදල** (Company Fund)
3. **පවුලේ අරමුදල** (Family Fund)
4. **මිතුරන්ගේ සහාය** (Friends Support)
5. **පුද්ගලික ඉතිරිකිරීම්** (Personal Savings)
6. **ව්‍යාපාරික ආදායම** (Business Income)
7. **අමතර ආදායම** (Extra Income)
8. **ණය සහාය** (Loan Support)

### Expense Status Types / වියදම් තත්ව වර්ග:
- **Outstanding** - කළ යුතු (to be paid)
- **Pending** - අපේක්ෂිත (awaiting approval)
- **Received** - ලැබී ඇත (money received)
- **Spent** - වියදම් කළ (money spent)

---

## 🐛 Common Issues & Solutions / සාමාන්‍ය ගැටළු සහ විසඳුම්

### Issue 1: Data Not Loading
**Problem:** Data doesn't show up after setup
**Solution:** 
- Pull to refresh on main screen
- Restart the app
- Re-run test data setup

### Issue 2: Numbers Not Calculating
**Problem:** Budget totals seem wrong
**Solution:**
- Check if all expenses have valid amounts
- Verify status assignments
- Run data verification from test setup

### Issue 3: Navigation Not Working
**Problem:** Can't navigate between screens
**Solution:**
- Check if using correct navigation paths
- Restart app if needed
- Verify router setup

---

## ✅ Success Criteria / සාර්ථකත්වයේ නිර්ණායක

### Must Pass / අනිවාර්යයෙන් සම්මත වීමට ඇති:
- [ ] All CRUD operations work / සියලුම CRUD operations වැඩ කරනවා
- [ ] Budget calculations are accurate / Budget ගණනය කිරීම් නිරවද්‍ය
- [ ] Navigation flows smoothly / Navigation සුමටව ගමන් කරනවා
- [ ] Data persists after app restart / App restart කළ පසු data පවතින්නවා
- [ ] PDF generation works / PDF generation වැඩ කරනවා

### Should Pass / සම්මත විය යුතු:
- [ ] Real-time updates work / Real-time updates වැඩ කරනවා
- [ ] Theme switching works / Theme switching වැඩ කරනවා
- [ ] Error handling is graceful / Error handling graceful ලෙස
- [ ] Performance is acceptable / Performance පිළිගත හැකි

### Nice to Have / තිබීම හොඳ:
- [ ] Smooth animations / සුමට animations
- [ ] Fast loading times / වේගවත් loading times
- [ ] Intuitive user experience / අවබෝධාත්මක user experience

---

## 📞 Support / සහාය

If you encounter any issues during testing / ටෙස්ට් කිරීමේදී ගැටළු ඇතිවුවහොත්:

1. **Check the console logs** / Console logs බලන්න
2. **Verify test data setup** / Test data setup verify කරන්න
3. **Restart the application** / Application restart කරන්න
4. **Report issues with details** / ගැටළු විස්තර සමග report කරන්න

---

## 🎯 Next Steps / ඊළඟ පියවර

After completing all tests / සියලුම tests complete කළ පසු:

1. **Identify areas for improvement** / Improvement කරන්න පුළුවන් ප්‍රදේශ identify කරන්න
2. **Plan new features** / අලුත් features plan කරන්න
3. **Consider user feedback** / User feedback සලකා බලන්න
4. **Document findings** / Findings document කරන්න

---

**Happy Testing! / සතුටින් ටෙස්ට් කරන්න! 🚀**