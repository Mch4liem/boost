// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAHjFN900BTNkm_zOWPmpuqcgXvPbAR9vM',
    appId: '1:109877744147:web:d2f3a2d3778eb2c80d65e6',
    messagingSenderId: '109877744147',
    projectId: 'boost-101a9',
    authDomain: 'boost-101a9.firebaseapp.com',
    storageBucket: 'boost-101a9.appspot.com',
    measurementId: 'G-3V3KVVFHDQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBiGLZsD_ig14A0bGate1EcO7NXpGlhF18',
    appId: '1:109877744147:android:0bfd8e4b299f0b500d65e6',
    messagingSenderId: '109877744147',
    projectId: 'boost-101a9',
    storageBucket: 'boost-101a9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPLQyQTXnflfKegNDAXXq0MwOaLbiSE4c',
    appId: '1:109877744147:ios:2937931d1230d8db0d65e6',
    messagingSenderId: '109877744147',
    projectId: 'boost-101a9',
    storageBucket: 'boost-101a9.appspot.com',
    iosBundleId: 'com.example.boost',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPLQyQTXnflfKegNDAXXq0MwOaLbiSE4c',
    appId: '1:109877744147:ios:2937931d1230d8db0d65e6',
    messagingSenderId: '109877744147',
    projectId: 'boost-101a9',
    storageBucket: 'boost-101a9.appspot.com',
    iosBundleId: 'com.example.boost',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAHjFN900BTNkm_zOWPmpuqcgXvPbAR9vM',
    appId: '1:109877744147:web:e4fc3ce42fd5f3800d65e6',
    messagingSenderId: '109877744147',
    projectId: 'boost-101a9',
    authDomain: 'boost-101a9.firebaseapp.com',
    storageBucket: 'boost-101a9.appspot.com',
    measurementId: 'G-70L3FXX7E4',
  );
}
