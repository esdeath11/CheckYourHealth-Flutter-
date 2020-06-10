import 'package:finalexam/Screen/Service/Register.dart';
import 'package:provider/provider.dart';
import 'package:finalexam/AppHome.dart';
import 'package:finalexam/Controller/Auth.dart';
import 'package:finalexam/Helper/ImagePath.dart';
import 'package:flutter/material.dart';
import 'DetailPage.dart';
import 'QuestionPage.dart';
import 'SecondQuestion.dart';
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
      '/home': (context) => AppHome(),
      '/quest' : (context) => QuestPage(),
      '/quest1': (context) => SecondQuestion(),
      '/detail': (context) => DetailPage(),
      '/register': (context) => Register(),

    },
  ));
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StreamProvider<User>.value(
        value: AuthService().user,
       child: MaterialApp(
         home: Wrapper(),
       ),
    );
  }

}


