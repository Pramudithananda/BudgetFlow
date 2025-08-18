import { initializeApp } from 'firebase/app';
import { getFirestore } from 'firebase/firestore';
import Constants from 'expo-constants';

// Your Firebase configuration
const firebaseConfig = {
  apiKey: Constants.expoConfig?.extra?.firebaseApiKey || "AIzaSyC_Nuw1MOkNnvJlKtwpbebqV2U-Au2vnW4",
  authDomain: Constants.expoConfig?.extra?.firebaseAuthDomain || "event-app-91310.firebaseapp.com",
  projectId: Constants.expoConfig?.extra?.firebaseProjectId || "event-app-91310",
  storageBucket: Constants.expoConfig?.extra?.firebaseStorageBucket || "event-app-91310.firebasestorage.app",
  messagingSenderId: Constants.expoConfig?.extra?.firebaseMessagingSenderId || "1025959339738",
  appId: Constants.expoConfig?.extra?.firebaseAppId || "1:1025959339738:web:f2aafcfc3ed0cd6542a7e3"
};

// Initialize Firebase
export const app = initializeApp(firebaseConfig);
export const db = getFirestore(app); 