import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:quick_notes/core/firebase/firebase_auth_service.dart';

class Injector {
  static GetIt injector = GetIt.instance;

  static Future<void> init() async {
    // firebase auth instance
    injector.registerSingleton<FirebaseAuthService>(
      FirebaseAuthService(FirebaseAuth.instance),
    );
  }
}
