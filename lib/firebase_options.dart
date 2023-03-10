// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDK_WBlX95sqjgmFvwxeWARZXRPpMN1KQ8',
    appId: '1:921948514411:web:c67c26a1504eabefe0a92e',
    messagingSenderId: '921948514411',
    projectId: 'firebse-85a00',
    authDomain: 'firebse-85a00.firebaseapp.com',
    storageBucket: 'firebse-85a00.appspot.com',
    measurementId: 'G-7J24CSS02Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACwvihV_s-3UlOs13_CzAqLDPagh1agWQ',
    appId: '1:921948514411:android:8a6a23a816a760dae0a92e',
    messagingSenderId: '921948514411',
    projectId: 'firebse-85a00',
    storageBucket: 'firebse-85a00.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAku86CpyptGH5k4CF1m9y8j5FNeDPkTJE',
    appId: '1:921948514411:ios:6526b31d6d3bf261e0a92e',
    messagingSenderId: '921948514411',
    projectId: 'firebse-85a00',
    storageBucket: 'firebse-85a00.appspot.com',
    androidClientId: '921948514411-9f31sk62aa22lbg1je3n0nimd73retv3.apps.googleusercontent.com',
    iosClientId: '921948514411-f6r2pr8b5bqc7a3rtp93fo36i83v3m4f.apps.googleusercontent.com',
    iosBundleId: 'com.example.cloudFunctions',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAku86CpyptGH5k4CF1m9y8j5FNeDPkTJE',
    appId: '1:921948514411:ios:6526b31d6d3bf261e0a92e',
    messagingSenderId: '921948514411',
    projectId: 'firebse-85a00',
    storageBucket: 'firebse-85a00.appspot.com',
    androidClientId: '921948514411-9f31sk62aa22lbg1je3n0nimd73retv3.apps.googleusercontent.com',
    iosClientId: '921948514411-f6r2pr8b5bqc7a3rtp93fo36i83v3m4f.apps.googleusercontent.com',
    iosBundleId: 'com.example.cloudFunctions',
  );
}
