//import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class FirebaseAuthService {
  //static final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> signIn(String email, String password) async {
    try {
      //await _auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future signUp(String email, String password) async {
    try {
      //await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future signOut() async {
    //await _auth.signOut();
  }
}
