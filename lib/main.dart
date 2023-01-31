import 'package:cloud_functions/blocks/crudbloc_cubit.dart';
import 'package:cloud_functions/blocks/crudbloc_state.dart';
import 'package:cloud_functions/view/home.dart';
import 'package:cloud_functions/view/phoneauth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (context) => DataCubit(),
      child: MaterialApp(
          theme: ThemeData(useMaterial3: true),
          home: BlocBuilder<DataCubit, DataState>(
            builder: (context, state) {
              return HomeScreen();
            },
          )),
    );
  }
}
