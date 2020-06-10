import 'dart:math';

import 'package:finalexam/AppHome.dart';
import 'package:finalexam/QuestionPage.dart';
import 'package:flutter/material.dart';


class ChangeQuest extends StatefulWidget {
  @override
  _ChangeQuestState createState() => _ChangeQuestState();
}

class _ChangeQuestState extends State<ChangeQuest> {

  bool changePage = false;



  @override
  Widget build(BuildContext context) {
    if(changePage){
      return QuestPage();
    }
    else{
      return MyDashboard();
    }
  }
}

