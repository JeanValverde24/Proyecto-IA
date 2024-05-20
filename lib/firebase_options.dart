import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB825QOLJViS1YnDSs2bLtl1XO0XqZLVJY',
    appId: '1:44103145902:web:85961176b9010eaa3c103f',
    messagingSenderId: '44103145902',
    projectId: 'proyecto-unidad2',
    authDomain: 'proyecto-unidad2.firebaseapp.com',
    storageBucket: 'proyecto-unidad2.appspot.com',
    measurementId: 'G-Q0KL2MYRXP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB825QOLJViS1YnDSs2bLtl1XO0XqZLVJY',
    appId: '1:44103145902:android:f75254f0a586b52f3c103f',
    messagingSenderId: '44103145902',
    projectId: 'proyecto-unidad2',
    storageBucket: 'proyecto-unidad2.appspot.com',
  );
}
