import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAIZ_KHGp5mPY6HXf-RYumELAsb88oLaRM",
            authDomain: "bavarian-autoshop.firebaseapp.com",
            projectId: "bavarian-autoshop",
            storageBucket: "bavarian-autoshop.appspot.com",
            messagingSenderId: "618814665384",
            appId: "1:618814665384:web:455a582b0400a97ff9089d",
            measurementId: "G-HCBGSJJMP1"));
  } else {
    await Firebase.initializeApp();
  }
}
