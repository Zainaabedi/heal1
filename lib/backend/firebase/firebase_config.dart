import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDdmnVzGTWFXhcUjWF1PoqT19M-yLnbkvQ",
            authDomain: "fknreport-7y0nl0.firebaseapp.com",
            projectId: "fknreport-7y0nl0",
            storageBucket: "fknreport-7y0nl0.firebasestorage.app",
            messagingSenderId: "365058555073",
            appId: "1:365058555073:web:1eb5cd0f236e8267636840",
            measurementId: "G-2NNPB4CPG8"));
  } else {
    await Firebase.initializeApp();
  }
}
