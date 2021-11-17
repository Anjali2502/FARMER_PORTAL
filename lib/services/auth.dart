import 'package:farmer_merchant/models/farmer_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebaseUser
  FUser? _userFromFirebaseUser(User user) {
    return user != null ? FUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<FUser?> get user {
    return _auth.authStateChanges().map((User? user) => _userFromFirebaseUser(user!));
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and pass
  Future signInWithEmailandPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }

    // register with email and pass

    // sign out

  }
}