import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBUU-byN1wcjY82d_qDXIYI9T9Nsi2G9cI",
            authDomain: "emsfitnessgate.firebaseapp.com",
            projectId: "emsfitnessgate",
            storageBucket: "emsfitnessgate.appspot.com",
            messagingSenderId: "1085887017448",
            appId: "1:1085887017448:web:f01a58431d05a4bde3345d"));
  } else {
    await Firebase.initializeApp();
  }
}
