import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  //create user
  static Future<SignInSignUpResult> createUser ({String email, String pass}) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: pass);
      return SignInSignUpResult (user: result.user);
    } catch (e) {
      return SignInSignUpResult (message: e.toString());
    }
  }

  //sign in user
  static Future<SignInSignUpResult> signInWithEmail ({String email, String pass}) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: pass);
      return SignInSignUpResult (user: result.user);
    } catch (e) {
      return SignInSignUpResult (message: e.toString());
    }
  }

  //log out user
  static void signOut() {
    _auth.signOut();
  }

}

class SignInSignUpResult {
  final FirebaseUser user;
  final String message;

  SignInSignUpResult ({this.user, this.message});
}