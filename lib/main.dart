import 'package:cloud_functions/view/home.dart';
import 'package:cloud_functions/view/phoneauth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: auth.currentUser?.uid != null ? HomeScreen() : PhoneAuth());
  }
}
