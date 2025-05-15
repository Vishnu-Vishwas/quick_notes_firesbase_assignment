import 'package:firebase_core/firebase_core.dart';
import 'package:quick_notes/firebase_options.dart';

class FirebaseInitializer {
  // firebase instance
  static Future<void> firebaseInit() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
