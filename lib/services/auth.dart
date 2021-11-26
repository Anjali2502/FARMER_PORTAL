import 'package:farmer_merchant/models/farmer_user.dart';
import 'package:farmer_merchant/models/farmer_user.dart';
import 'package:farmer_merchant/services/User_Database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebaseUser
  FUser? _userFromFirebaseUser(User user) {
    return user != null ? FUser(uid: user.uid,email: user.email) : null;
  }

  // auth change user stream
  Stream<FUser?> get user {
    return _auth.authStateChanges().map((User? user) =>
        _userFromFirebaseUser(user!));
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

  Future signOut() async {
    try {
      return await _auth.signOut();
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
  }
  Future registerWithEandP(String email,String password,String usertype,String username) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      if(usertype=="Farmer"){
      await DatabaseService(uid:user!.uid,email: user!.email).updateFarmerData(email,usertype,username);}
      else
        {
          await DatabaseService(uid:user!.uid,email: user!.email).updateMerchantData(email, usertype, username);
        }
      return _userFromFirebaseUser(user!);
    } catch(e){
      print(e.toString());
      return null;
    }



  }
}