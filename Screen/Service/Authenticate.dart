import 'package:finalexam/Screen/Service/Login.dart';
import 'package:finalexam/Screen/Service/Register.dart';
import 'package:flutter/material.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = false;
  void toggleView(){
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {

    if(showSignIn){
      return Login(toggleView: toggleView,);
    }else{
      return Register(toggleView: toggleView);
    }

  }
}
