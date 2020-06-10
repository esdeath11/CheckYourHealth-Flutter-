import 'package:finalexam/QuestionPage.dart';
import 'package:finalexam/Screen/Login.dart';
import 'package:finalexam/Screen/Register.dart';
import 'package:flutter/material.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  bool showpage=true;
  void toggleView(){
    setState(() => showSignIn = !showSignIn);
  }

  void changeThis(){
    showpage = !showpage;
  }

  @override
  Widget build(BuildContext context) {

    if(showSignIn){
      return Login(toggleView: toggleView,);
    }else if(!showSignIn){
      return Register(toggleView: toggleView);
    }else if(showpage){
      return QuestPage();
    }else if(!showpage){

    }

  }
}
