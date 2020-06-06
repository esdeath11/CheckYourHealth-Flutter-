import 'package:finalexam/AppHome.dart';
import 'package:finalexam/Helper/ImagePath.dart';
import 'package:flutter/material.dart';
import 'DetailPage.dart';



void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => Login(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => AppHome(),
    },
  ));
}


class Login extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login ();
  }

}

class _Login extends State<Login>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(

        body: ListView(
          children: <Widget>[
            Container(
              height: 800,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      left: -105,
                      bottom: 365,
                      width: 700,
                      height: 500,
                      child: Container(

                        child: ImagePath("Assets/img2.png"),
                  )),
                    Positioned(
                      width: 275,
                        height: 300,
                        left: 30,
                        top: 100,
                        child: ImagePath("Assets/img4.png")),
                  Positioned(
                    width: 235,
                      height: 50,
                      top: 300,
                      left: 58,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(195, 222, 252, 1),
                          borderRadius: BorderRadius.circular(45)
                        ),
                      )
                  ),
                  Positioned(
                      width: 235,
                      height: 50,
                      top: 360,
                      left: 58,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(195, 222, 252, 1),
                            borderRadius: BorderRadius.circular(45)
                        ),
                      )
                  ),
                  Positioned(
                      width: 300,
                      height: 50,
                      top: 330,
                      left: 30,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(-1.0, -1.0),
                                blurRadius: 2.0,
                                spreadRadius: 1.0
                            ),
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 1.0),
                                blurRadius: 2.0,
                                spreadRadius: 1.0
                            )
                          ],
                            color: Color.fromRGBO(195, 222, 252, 1),
                            borderRadius: BorderRadius.circular(45)
                        ),
                        child: Text("Stay Safe, Stay Healthy", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                      )
                  ),

                ],
              ),
            )
          ],
        )
      ),
    );
  }
}

