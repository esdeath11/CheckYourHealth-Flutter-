import 'package:finalexam/AppHome.dart';
import 'package:finalexam/Model/users.dart';
import 'package:finalexam/Screen/Service/Authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Service/Login.dart';


class Wrapper extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    // TODO: implement build
    return Authenticate();
  }

}