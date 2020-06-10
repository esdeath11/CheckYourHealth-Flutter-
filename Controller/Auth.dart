import 'package:finalexam/Model/users.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFireBaseUser(FirebaseUser user){
    return user !=null ? User(uid: user.uid):null;
  }

  Stream<User> get user{
    return _auth.onAuthStateChanged.map(_userFromFireBaseUser);
  }

  Future signInAnon() async{
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }


  Future registerWithEmailPassword(String email, String password) async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFireBaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }


  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}