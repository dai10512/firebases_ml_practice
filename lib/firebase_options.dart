
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCZPYPSvkZhjBE3q3Rx1Q85JtIzi6xPtJw',
    appId: '1:1083372275086:web:a8bc50d4fa4f8a84d290df',
    messagingSenderId: '1083372275086',
    projectId: 'ml-practice-4ea72',
    authDomain: 'ml-practice-4ea72.firebaseapp.com',
    storageBucket: 'ml-practice-4ea72.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyALSd4ROzlvANJz3Q1l-cmw--ZsszR86I4',
    appId: '1:1083372275086:android:99ff626a213da6a3d290df',
    messagingSenderId: '1083372275086',
    projectId: 'ml-practice-4ea72',
    storageBucket: 'ml-practice-4ea72.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDiWvEi6gpw2a9tYexx22ojNaN_rY131nQ',
    appId: '1:1083372275086:ios:3af3af31f1ac8d7cd290df',
    messagingSenderId: '1083372275086',
    projectId: 'ml-practice-4ea72',
    storageBucket: 'ml-practice-4ea72.appspot.com',
    iosClientId: '1083372275086-ssq82pvjn4n26nsutqi1vatas935qpj6.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseMlPractice',
  );
}
