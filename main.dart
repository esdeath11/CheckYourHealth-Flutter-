
import 'package:finalexam/DetailPage.dart';
import 'package:finalexam/QuestionPage.dart';
import 'package:finalexam/Screen/Register.dart';
import 'package:finalexam/SecondQuestion.dart';
import 'package:provider/provider.dart';
import 'package:finalexam/AppHome.dart';
import 'package:finalexam/Screen/Service/Auth.dart';
import 'package:finalexam/Helper/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:finalexam/Model/users.dart';

import 'Screen/Wrapper.dart';



void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => MyApp(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => QuestPage(),
      '/third': (context) => SecondQuestion(),
      '/forth':(context)=>DetailPage(),
      '/fifth':(context)=>MyDashboard(),
    },
  ));
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StreamProvider<User>.value(
        value: AuthService().user,
       child: Wrapper(),
       );
  }

}


