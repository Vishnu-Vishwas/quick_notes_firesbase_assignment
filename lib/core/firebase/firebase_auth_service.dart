import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthService(this.firebaseAuth);

  Future<void> singUp(String userName, String email, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: userName,
        password: password,
      );
    } on FirebaseAuthException catch (error) {
      if (error.code == 'weak-password') {
        print("Please Enter a strong password");
      } else if (error.code == 'email-already-in-use') {
        print('Account Already Exists');
      }
    } catch (error) {
      print("Unexpected Error");
    }
  }

  // sign in
  Future<void> signIn(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  // update username
  // delete user
}
