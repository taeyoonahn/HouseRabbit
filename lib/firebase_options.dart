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
    apiKey: 'AIzaSyB5A4d1NCCROwOZRDQGSC2YxP7dFYXi0yM',
    appId: '1:707139369999:web:aeb930b9b53bd496d0377a',
    messagingSenderId: '707139369999',
    projectId: 'houserabbit-9e338',
    authDomain: 'houserabbit-9e338.firebaseapp.com',
    storageBucket: 'houserabbit-9e338.appspot.com',
    measurementId: 'G-WLQ0K14G31',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBp8uiPG2wFREjI1T8DzJCuTEEoy58bQc',
    appId: '1:707139369999:android:f4dd578dbdcbc682d0377a',
    messagingSenderId: '707139369999',
    projectId: 'houserabbit-9e338',
    storageBucket: 'houserabbit-9e338.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClq-pkHofSOuj1bSIFYMBsQbjARRKEyKE',
    appId: '1:707139369999:ios:c42aa605885c6d9bd0377a',
    messagingSenderId: '707139369999',
    projectId: 'houserabbit-9e338',
    storageBucket: 'houserabbit-9e338.appspot.com',
    iosBundleId: 'houserabbit.com.houseRabbit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClq-pkHofSOuj1bSIFYMBsQbjARRKEyKE',
    appId: '1:707139369999:ios:bf82a0c6d9abbf1cd0377a',
    messagingSenderId: '707139369999',
    projectId: 'houserabbit-9e338',
    storageBucket: 'houserabbit-9e338.appspot.com',
    iosBundleId: 'houserabbit.com.houseRabbit.RunnerTests',
  );
}
