import * as SQLite from 'expo-sqlite';

// Sample data setup script for BudgetFlow testing
const setupSampleData = async () => {
  try {
    const db = await SQLite.openDatabaseAsync('budgetflow.db');
    
    console.log('🚀 Setting up sample data for testing...');
    
    // Clear existing data (optional - for fresh testing)
    await db.execAsync(`
      DELETE FROM expenses;
      DELETE FROM categories;
      DELETE FROM funders;
      DELETE FROM helpers;
      UPDATE budget SET total_budget = 0, received_fund = 0, people_over_fund = 0, remaining_fund = 0;
    `);
    
    // 1. Create sample categories
    console.log('📂 Creating sample categories...');
    const categories = [
      'ආහාර සහ පාන (Food & Drinks)',
      'ප්‍රවාහන (Transportation)', 
      'විනෝදාස්වාදය (Entertainment)',
      'අධ්‍යාපනය (Education)',
      'සෞඛ්‍ය සේවා (Healthcare)',
      'ගෘහ කටයුතු (Household)',
      'කාර්යාල වියදම් (Office Expenses)',
      'ජවනිකා සහ ඇඳුම් (Clothing)',
      'ගිණුම් සහ බිල්පත් (Bills & Utilities)',
      'ක්‍රීඩා සහ යෝග්‍යතා (Sports & Fitness)'
    ];
    
    for (const categoryName of categories) {
      await db.runAsync(
        'INSERT INTO categories (name, created_at, updated_at) VALUES (?, datetime("now"), datetime("now"))',
        [categoryName]
      );
    }
    
    // 2. Create sample funders
    console.log('👥 Creating sample funders...');
    const funders = [
      'කෙසර මහත්තයා (Kesara Sir)',
      'සමාගම මුල්‍ය අරමුදල (Company Fund)',
      'පවුලේ අරමුදල (Family Fund)',
      'මිතුරන්ගේ සහාය (Friends Support)',
      'පුද්ගලික ඉතිරිකිරීම් (Personal Savings)',
      'ව්‍යාපාරික ආදායම (Business Income)',
      'අමතර ආදායම (Extra Income)',
      'ණය සහාය (Loan Support)'
    ];
    
    for (const funderName of funders) {
      await db.runAsync(
        'INSERT INTO funders (name, created_at, updated_at) VALUES (?, datetime("now"), datetime("now"))',
        [funderName]
      );
    }
    
    // Get created category and funder IDs
    const categoriesResult = await db.getAllAsync('SELECT id, name FROM categories');
    const fundersResult = await db.getAllAsync('SELECT id, name FROM funders');
    
    // 3. Create comprehensive sample expenses
    console.log('💰 Creating sample expenses...');
    const expenses = [
      // Food & Drinks expenses
      {
        title: 'සති අන්ත අපේ කඩේ ගිය වියදම',
        amount: 15000,
        status: 'Received',
        category: 'ආහාර සහ පාන (Food & Drinks)',
        funder: 'පුද්ගලික ඉතිරිකිරීම් (Personal Savings)',
        assignedTo: 'මම'
      },
      {
        title: 'ඔෆිස් එකේ lunch වියදම',
        amount: 8500,
        status: 'Spent',
        category: 'ආහාර සහ පාන (Food & Drinks)',
        funder: 'සමාගම මුල්‍ය අරමුදල (Company Fund)',
        assignedTo: 'කණ්ඩායම'
      },
      {
        title: 'අලුත් අවුරුද්දට කේක් ඇණවුම',
        amount: 25000,
        status: 'Outstanding',
        category: 'ආහාර සහ පාන (Food & Drinks)',
        funder: 'පවුලේ අරමුදල (Family Fund)',
        assignedTo: 'අම්මා'
      },
      
      // Transportation expenses
      {
        title: 'මාසික බස් පාස් එක',
        amount: 12000,
        status: 'Received',
        category: 'ප්‍රවාහන (Transportation)',
        funder: 'පුද්ගලික ඉතිරිකිරීම් (Personal Savings)',
        assignedTo: 'මම'
      },
      {
        title: 'ත්‍රී වීලර් කුලී',
        amount: 3500,
        status: 'Spent',
        category: 'ප්‍රවාහන (Transportation)',
        funder: 'අමතර ආදායම (Extra Income)',
        assignedTo: 'මම'
      },
      {
        title: 'වෑන් එකේ fuel වියදම',
        amount: 18000,
        status: 'Pending',
        category: 'ප්‍රවාහන (Transportation)',
        funder: 'ව්‍යාපාරික ආදායම (Business Income)',
        assignedTo: 'ඩ්‍රයිවර්'
      },
      
      // Entertainment expenses
      {
        title: 'cinema tickets පවුලේ එක්ක',
        amount: 6000,
        status: 'Spent',
        category: 'විනෝදාස්වාදය (Entertainment)',
        funder: 'පවුලේ අරමුදල (Family Fund)',
        assignedTo: 'පවුල'
      },
      {
        title: 'Netflix subscription මාසික',
        amount: 2500,
        status: 'Outstanding',
        category: 'විනෝදාස්වාදය (Entertainment)',
        funder: 'පුද්ගලික ඉතිරිකිරීම් (Personal Savings)',
        assignedTo: 'මම'
      },
      {
        title: 'ඔෆිස් එකේ party organizing',
        amount: 45000,
        status: 'Pending',
        category: 'විනෝදාස්වාදය (Entertainment)',
        funder: 'සමාගම මුල්‍ය අරමුදල (Company Fund)',
        assignedTo: 'සමිති සාමාජිකයින්'
      },
      
      // Education expenses
      {
        title: 'programming course fee',
        amount: 85000,
        status: 'Received',
        category: 'අධ්‍යාපනය (Education)',
        funder: 'කෙසර මහත්තයා (Kesara Sir)',
        assignedTo: 'මම'
      },
      {
        title: 'books සහ stationery',
        amount: 12000,
        status: 'Spent',
        category: 'අධ්‍යාපනය (Education)',
        funder: 'පුද්ගලික ඉතිරිකිරීම් (Personal Savings)',
        assignedTo: 'මම'
      },
      {
        title: 'laptop upgrade කරන්න',
        amount: 150000,
        status: 'Outstanding',
        category: 'අධ්‍යාපනය (Education)',
        funder: 'ණය සහාය (Loan Support)',
        assignedTo: 'මම'
      },
      
      // Healthcare expenses
      {
        title: 'මාසික checkup වියදම',
        amount: 8000,
        status: 'Spent',
        category: 'සෞඛ්‍ය සේවා (Healthcare)',
        funder: 'පවුලේ අරමුදල (Family Fund)',
        assignedTo: 'පවුල'
      },
      {
        title: 'දත් වෛද්‍ය ගිය වියදම',
        amount: 15000,
        status: 'Received',
        category: 'සෞඛ්‍ය සේවා (Healthcare)',
        funder: 'පුද්ගලික ඉතිරිකිරීම් (Personal Savings)',
        assignedTo: 'මම'
      },
      {
        title: 'විටමින් සහ supplements',
        amount: 6500,
        status: 'Pending',
        category: 'සෞඛ්‍ය සේවා (Healthcare)',
        funder: 'පුද්ගලික ඉතිරිකිරීම් (Personal Savings)',
        assignedTo: 'මම'
      },
      
      // Household expenses
      {
        title: 'ගෙදර cleaning supplies',
        amount: 4500,
        status: 'Spent',
        category: 'ගෘහ කටයුතු (Household)',
        funder: 'පවුලේ අරමුදල (Family Fund)',
        assignedTo: 'අම්මා'
      },
      {
        title: 'electricity bill මාසික',
        amount: 12000,
        status: 'Outstanding',
        category: 'ගෘහ කටයුතු (Household)',
        funder: 'පවුලේ අරමුදල (Family Fund)',
        assignedTo: 'තාත්තා'
      },
      {
        title: 'kitchen equipment අලුත් ගන්න',
        amount: 35000,
        status: 'Pending',
        category: 'ගෘහ කටයුතු (Household)',
        funder: 'ව්‍යාපාරික ආදායම (Business Income)',
        assignedTo: 'පවුල'
      },
      
      // Office expenses
      {
        title: 'stationery සහ printing',
        amount: 8500,
        status: 'Received',
        category: 'කාර්යාල වියදම් (Office Expenses)',
        funder: 'සමාගම මුල්‍ය අරමුදල (Company Fund)',
        assignedTo: 'කාර්යාලය'
      },
      {
        title: 'internet bill ඔෆිස් එකට',
        amount: 15000,
        status: 'Spent',
        category: 'කාර්යාල වියදම් (Office Expenses)',
        funder: 'සමාගම මුල්‍ය අරමුදල (Company Fund)',
        assignedTo: 'IT team'
      },
      
      // Clothing expenses
      {
        title: 'ඔෆිස් wear අලුත් ගන්න',
        amount: 25000,
        status: 'Outstanding',
        category: 'ජවනිකා සහ ඇඳුම් (Clothing)',
        funder: 'පුද්ගලික ඉතිරිකිරීම් (Personal Savings)',
        assignedTo: 'මම'
      },
      {
        title: 'sports shoes ගන්න',
        amount: 18000,
        status: 'Pending',
        category: 'ජවනිකා සහ ඇඳුම් (Clothing)',
        funder: 'අමතර ආදායම (Extra Income)',
        assignedTo: 'මම'
      },
      
      // Bills & Utilities
      {
        title: 'mobile bill මාසික',
        amount: 3500,
        status: 'Spent',
        category: 'ගිණුම් සහ බිල්පත් (Bills & Utilities)',
        funder: 'පුද්ගලික ඉතිරිකිරීම් (Personal Savings)',
        assignedTo: 'මම'
      },
      {
        title: 'water bill මාසික',
        amount: 2800,
        status: 'Outstanding',
        category: 'ගිණුම් සහ බිල්පත් (Bills & Utilities)',
        funder: 'පවුලේ අරමුදල (Family Fund)',
        assignedTo: 'තාත්තා'
      },
      
      // Sports & Fitness
      {
        title: 'gym membership මාසික',
        amount: 8000,
        status: 'Received',
        category: 'ක්‍රීඩා සහ යෝග්‍යතා (Sports & Fitness)',
        funder: 'පුද්ගලික ඉතිරිකිරීම් (Personal Savings)',
        assignedTo: 'මම'
      },
      {
        title: 'swimming pool entry',
        amount: 1500,
        status: 'Spent',
        category: 'ක්‍රීඩා සහ යෝග්‍යතා (Sports & Fitness)',
        funder: 'මිතුරන්ගේ සහාය (Friends Support)',
        assignedTo: 'මම'
      }
    ];
    
    // Insert expenses
    for (const expense of expenses) {
      const category = categoriesResult.find(c => c.name === expense.category);
      const funder = fundersResult.find(f => f.name === expense.funder);
      
      if (category && funder) {
        await db.runAsync(
          `INSERT INTO expenses (title, amount, status, category_id, funder_id, assigned_to, created_at, updated_at) 
           VALUES (?, ?, ?, ?, ?, ?, datetime("now"), datetime("now"))`,
          [expense.title, expense.amount, expense.status, category.id, funder.id, expense.assignedTo]
        );
      }
    }
    
    // 4. Create some helpers
    console.log('👷 Creating sample helpers...');
    const helpers = [
      'සමන්ත (Samantha)',
      'කසුන් (Kasun)', 
      'තරිදු (Tharidu)',
      'නිමල් (Nimal)',
      'සුනිල් (Sunil)'
    ];
    
    for (const helperName of helpers) {
      await db.runAsync(
        'INSERT INTO helpers (name, created_at) VALUES (?, datetime("now"))',
        [helperName]
      );
    }
    
    // 5. Update budget summary
    console.log('📊 Updating budget summary...');
    const allExpenses = await db.getAllAsync('SELECT amount, status FROM expenses');
    const totalBudget = allExpenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);
    const receivedFund = allExpenses
      .filter(exp => exp.status === 'Received')
      .reduce((sum, exp) => sum + (exp.amount || 0), 0);
    const remainingFund = totalBudget - receivedFund;
    
    await db.runAsync(
      'UPDATE budget SET total_budget = ?, received_fund = ?, remaining_fund = ?, updated_at = datetime("now") WHERE id = 1',
      [totalBudget, receivedFund, remainingFund]
    );
    
    console.log('✅ Sample data setup completed successfully!');
    console.log(`📋 Created:`);
    console.log(`   - ${categories.length} categories`);
    console.log(`   - ${funders.length} funders`);
    console.log(`   - ${expenses.length} expenses`);
    console.log(`   - ${helpers.length} helpers`);
    console.log(`   - Budget total: Rs. ${totalBudget.toLocaleString()}`);
    console.log(`   - Received: Rs. ${receivedFund.toLocaleString()}`);
    console.log(`   - Remaining: Rs. ${remainingFund.toLocaleString()}`);
    
    return {
      success: true,
      data: {
        categories: categories.length,
        funders: funders.length,
        expenses: expenses.length,
        helpers: helpers.length,
        totalBudget,
        receivedFund,
        remainingFund
      }
    };
    
  } catch (error) {
    console.error('❌ Error setting up sample data:', error);
    return {
      success: false,
      error: error.message
    };
  }
};

// Test data verification function
const verifySampleData = async () => {
  try {
    const db = await SQLite.openDatabaseAsync('budgetflow.db');
    
    console.log('🔍 Verifying sample data...');
    
    const categories = await db.getAllAsync('SELECT COUNT(*) as count FROM categories');
    const expenses = await db.getAllAsync('SELECT COUNT(*) as count FROM expenses');
    const funders = await db.getAllAsync('SELECT COUNT(*) as count FROM funders');
    const helpers = await db.getAllAsync('SELECT COUNT(*) as count FROM helpers');
    
    const statusBreakdown = await db.getAllAsync(`
      SELECT status, COUNT(*) as count, SUM(amount) as total 
      FROM expenses 
      GROUP BY status
    `);
    
    const categoryBreakdown = await db.getAllAsync(`
      SELECT c.name, COUNT(e.id) as expense_count, SUM(e.amount) as total_amount
      FROM categories c
      LEFT JOIN expenses e ON c.id = e.category_id
      GROUP BY c.id, c.name
      ORDER BY total_amount DESC
    `);
    
    console.log('📊 Data Verification Results:');
    console.log(`   Categories: ${categories[0].count}`);
    console.log(`   Expenses: ${expenses[0].count}`);
    console.log(`   Funders: ${funders[0].count}`);
    console.log(`   Helpers: ${helpers[0].count}`);
    
    console.log('\n📈 Status Breakdown:');
    statusBreakdown.forEach(status => {
      console.log(`   ${status.status}: ${status.count} expenses, Rs. ${status.total?.toLocaleString() || 0}`);
    });
    
    console.log('\n📂 Top Categories by Amount:');
    categoryBreakdown.slice(0, 5).forEach(cat => {
      console.log(`   ${cat.name}: ${cat.expense_count} expenses, Rs. ${cat.total_amount?.toLocaleString() || 0}`);
    });
    
    return {
      success: true,
      summary: {
        categories: categories[0].count,
        expenses: expenses[0].count,
        funders: funders[0].count,
        helpers: helpers[0].count,
        statusBreakdown,
        categoryBreakdown
      }
    };
    
  } catch (error) {
    console.error('❌ Error verifying data:', error);
    return {
      success: false,
      error: error.message
    };
  }
};

export { setupSampleData, verifySampleData };