import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCyNEf1VCusNB0z8zQF8-5uysnkpV3kIOg",
            authDomain: "myportfolio-a0f25.firebaseapp.com",
            projectId: "myportfolio-a0f25",
            storageBucket: "myportfolio-a0f25.appspot.com",
            messagingSenderId: "193801825987",
            appId: "1:193801825987:web:3cfbcf94ec98f3026c7c76",
            measurementId: "G-GMPWV497F4"));
  } else {
    await Firebase.initializeApp();
  }
}
