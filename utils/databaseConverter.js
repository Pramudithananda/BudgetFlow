// SQLite database conversion logic
const SQLite = require('react-native-sqlite-storage');

const databaseConverter = {
  init: async () => {
    const db = await SQLite.openDatabase({
      name: 'budgetflow.db',
      location: 'default'
    });
    return db;
  },
  
  migrateData: async (oldData) => {
    const db = await databaseConverter.init();
    
    try {
      await db.transaction(async (tx) => {
        // Create tables
        await tx.executeSql(
          'CREATE TABLE IF NOT EXISTS transactions (id INTEGER PRIMARY KEY AUTOINCREMENT, amount REAL, category TEXT, date TEXT, note TEXT)'
        );
        
        // Migrate old data
        oldData.forEach(async (item) => {
          await tx.executeSql(
            'INSERT INTO transactions (amount, category, date, note) VALUES (?, ?, ?, ?)',
            [item.amount, item.category, item.date, item.note]
          );
        });
      });
      
      return true;
    } catch (error) {
      console.error('Migration error:', error);
      return false;
    }
  }
};

module.exports = databaseConverter;