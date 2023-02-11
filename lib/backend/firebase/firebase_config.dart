import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA_VE-bOn9WGtUbcG9nYjlnnwUPKl4a1Kw",
            authDomain: "topgrid-95259.firebaseapp.com",
            projectId: "topgrid-95259",
            storageBucket: "topgrid-95259.appspot.com",
            messagingSenderId: "930292132871",
            appId: "1:930292132871:web:261c30733268f4d7e44ea2",
            measurementId: "G-2J0ZZH5R1P"));
  } else {
    await Firebase.initializeApp();
  }
}
