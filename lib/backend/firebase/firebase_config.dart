import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCbeG0erECnUOTdYh9KyCqXHH88WoRS6aY",
            authDomain: "cognitivly.firebaseapp.com",
            projectId: "cognitivly",
            storageBucket: "cognitivly.appspot.com",
            messagingSenderId: "943688602514",
            appId: "1:943688602514:web:5728b3516ce440b9ab674b",
            measurementId: "G-8VJYX7ZY36"));
  } else {
    await Firebase.initializeApp();
  }
}
