import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static const unsupportedPlatformMessage = 'To setup this platform:\n'
      '- Run the FlutterFire CLI for the new platform and a target enviornment project\n'
      '- Copy the `FirebaseOptions` from the generated file to this file, and delete the generated file\n'
      '- Move the values from the `FirebaseOptions` object into corresponding app_secrets_<ENV>.json file for the target environment\n'
      '- Repeat for each target environment';

  static FirebaseOptions get forCurrentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
            'DefaultFirebaseOptions have not been configured for ios. $unsupportedPlatformMessage');
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos. $unsupportedPlatformMessage',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows. $unsupportedPlatformMessage',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux. $unsupportedPlatformMessage',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: String.fromEnvironment('firebaseWebApiKey'),
    appId: String.fromEnvironment('firebaseWebAppId'),
    messagingSenderId: String.fromEnvironment('firebaseMessagingSenderId'),
    projectId: String.fromEnvironment('firebaseProjectId'),
    authDomain: String.fromEnvironment('firebaseAuthDomain'),
    storageBucket: String.fromEnvironment('firebaseStorageBucket'),
    measurementId: String.fromEnvironment('firebaseWebMeasurementId'),
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: String.fromEnvironment('firebaseAndroidApiKey'),
    appId: String.fromEnvironment('firebaseAndroidAppId'),
    messagingSenderId: String.fromEnvironment('firebaseMessagingSenderId'),
    projectId: String.fromEnvironment('firebaseProjectId'),
    storageBucket: String.fromEnvironment('firebaseStorageBucket'),
  );
}
