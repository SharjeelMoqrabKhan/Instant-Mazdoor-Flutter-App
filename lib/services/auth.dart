import 'package:easehome/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //crating intance of firebase auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //creating user object bassed on Firebase
  User _userFromFirebseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebseUser);
  }

  //sign in anoo
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign email and passowrd
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }

  //register email and passwrod
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
      email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  //singout
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //rest password
  @override
Future resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
}
}
