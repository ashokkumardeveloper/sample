import 'package:cloud_functions/blocfolder/bloc/data_bloc.dart';
import 'package:cloud_functions/blocfolder/bloc/data_cubit.dart';
import 'package:cloud_functions/view/phoneauth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';
import 'view/homepage.dart';

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
    return BlocProvider(
      create: (context) => DataBloc(),
      child:
          MaterialApp(theme: ThemeData(useMaterial3: true), home: HomePage()),
    );
  }
}
