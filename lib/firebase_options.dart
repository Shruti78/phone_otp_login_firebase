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
    apiKey: 'AIzaSyA2rpnvneo3s5sfA3dls6piZwLVCp2Lqus',
    appId: '1:396645218552:web:82a43a6011dc1daa27a30d',
    messagingSenderId: '396645218552',
    projectId: 'phone-firebase-47898',
    authDomain: 'phone-firebase-47898.firebaseapp.com',
    storageBucket: 'phone-firebase-47898.appspot.com',
    measurementId: 'G-E1H9MT24XY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCeASxMUbdJpEN_OWMW5z4Fe4Gc3RchmO4',
    appId: '1:396645218552:android:43367ab914777b8427a30d',
    messagingSenderId: '396645218552',
    projectId: 'phone-firebase-47898',
    storageBucket: 'phone-firebase-47898.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAbUz5WBoSbrXiy1k383QVU_XOgq66C3EA',
    appId: '1:396645218552:ios:55575732e458af9827a30d',
    messagingSenderId: '396645218552',
    projectId: 'phone-firebase-47898',
    storageBucket: 'phone-firebase-47898.appspot.com',
    androidClientId: '396645218552-kr2ap5kd56j1g2k38kt94u13g35fhosr.apps.googleusercontent.com',
    iosClientId: '396645218552-1iv81dkug5akqoun4lkk1tijjvd67olq.apps.googleusercontent.com',
    iosBundleId: 'com.example.citsWorldwode',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAbUz5WBoSbrXiy1k383QVU_XOgq66C3EA',
    appId: '1:396645218552:ios:55575732e458af9827a30d',
    messagingSenderId: '396645218552',
    projectId: 'phone-firebase-47898',
    storageBucket: 'phone-firebase-47898.appspot.com',
    androidClientId: '396645218552-kr2ap5kd56j1g2k38kt94u13g35fhosr.apps.googleusercontent.com',
    iosClientId: '396645218552-1iv81dkug5akqoun4lkk1tijjvd67olq.apps.googleusercontent.com',
    iosBundleId: 'com.example.citsWorldwode',
  );
}
