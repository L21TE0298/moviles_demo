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
    apiKey: 'AIzaSyDe9XgUizamghRAfBFL30rAptefJAQ2tF8',
    appId: '1:101076935577:web:c6e9200f14c17921866908',
    messagingSenderId: '101076935577',
    projectId: 'moviles-abfbc',
    authDomain: 'moviles-abfbc.firebaseapp.com',
    storageBucket: 'moviles-abfbc.firebasestorage.app',
    measurementId: 'G-TRJJW66XL2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAPtPJHDwL79otnPj8HgFnDGQZ243FD-Bg',
    appId: '1:101076935577:android:85d8718345a98522866908',
    messagingSenderId: '101076935577',
    projectId: 'moviles-abfbc',
    storageBucket: 'moviles-abfbc.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCDzCQV7fGrEWckMfAOMp2mWfLXloKNwvk',
    appId: '1:101076935577:ios:04b8ee3532658ddd866908',
    messagingSenderId: '101076935577',
    projectId: 'moviles-abfbc',
    storageBucket: 'moviles-abfbc.firebasestorage.app',
    iosBundleId: 'com.example.movilesDemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCDzCQV7fGrEWckMfAOMp2mWfLXloKNwvk',
    appId: '1:101076935577:ios:04b8ee3532658ddd866908',
    messagingSenderId: '101076935577',
    projectId: 'moviles-abfbc',
    storageBucket: 'moviles-abfbc.firebasestorage.app',
    iosBundleId: 'com.example.movilesDemo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDe9XgUizamghRAfBFL30rAptefJAQ2tF8',
    appId: '1:101076935577:web:0f22bf6b2dd3340b866908',
    messagingSenderId: '101076935577',
    projectId: 'moviles-abfbc',
    authDomain: 'moviles-abfbc.firebaseapp.com',
    storageBucket: 'moviles-abfbc.firebasestorage.app',
    measurementId: 'G-SC811Z7JHN',
  );
}
