import { initializeApp } from 'firebase/app';
import { getFirestore } from 'firebase/firestore';

// Firebase configuration for BudgetFlow app
// Note: These are placeholder values - replace with your actual Firebase project config
const firebaseConfig = {
  apiKey: "your-api-key-here",
  authDomain: "budget-flow-app.firebaseapp.com",
  projectId: "budget-flow-app",
  storageBucket: "budget-flow-app.firebasestorage.app",
  messagingSenderId: "your-messaging-sender-id",
  appId: "your-app-id-here"
};

// Initialize Firebase
export const app = initializeApp(firebaseConfig);
export const db = getFirestore(app); 