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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4ObN_L6WLCtXThctooYuUb_zMXfrOtnk',
    appId: '1:871584192996:android:a42e6cefd26af17fcd8ff1',
    messagingSenderId: '871584192996',
    projectId: 'zaki-9e4ba',
    databaseURL: 'https://zaki-9e4ba-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'zaki-9e4ba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAn5d8_E6iGjvpmv3zRCBfTIHrO-pFp5rI',
    appId: '1:871584192996:ios:c2d2aa0c50a0ed87cd8ff1',
    messagingSenderId: '871584192996',
    projectId: 'zaki-9e4ba',
    databaseURL: 'https://zaki-9e4ba-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'zaki-9e4ba.appspot.com',
    iosClientId: '871584192996-0l9ug9ld7ri6hnogfmuo7j9266u4qsdg.apps.googleusercontent.com',
    iosBundleId: 'com.example.iqtest',
  );
}
