import 'package:finalexam/Helper/ImagePath.dart';
import 'package:finalexam/Helper/iconPath.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SecondQuestion extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SecondQuest();
  }

}

class _SecondQuest extends State<SecondQuestion>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(canvasColor: Color.fromRGBO(74, 126, 250, 1)),
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              height: 726,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: -25,
                    width: 400,
                    height: 400,
                    child: ImagePath("Assets/img3.png"),),
                  Positioned(
                      top: 250,
                      width: 370,
                      height: 650,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))
                        ),
                        child: Stack(
                          children: <Widget>[
                            
                            Positioned(
                                width: 220,
                                left: 20,
                                top: 30,
                                child: Text("Istirahatlah yang Cukup... Pencernaanmu sedang sakit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                            Positioned(
                              top: 100,
                                left: 130,
                                child: Container(
                                  width: 84,
                                  height: 84,
                                  padding: EdgeInsets.only(right: 10, top: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromRGBO(226, 196, 45, 1)
                                  ),
                                  child: ImagePath("Assets/stomach.png"),
                                )
                            ),

                            Positioned(
                              left: 20,
                                top: 190,
                                width: 220,
                                child: Text("Apakah anda mererasakan mual?")
                            ),

                            Positioned(
                              left: 30,
                              top: 220,
                              width: 200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    GestureDetector(
                                      child:Container(
                                        alignment: Alignment.center,
                                        width: 68 ,
                                        height: 68,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(74, 167, 187, 1),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Text("ya", style: TextStyle(color: Colors.white),),
                                      ),
                                    ),
                                    GestureDetector(
                                      child:Container(
                                        alignment: Alignment.center,
                                        width: 68 ,
                                        height: 68,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(245, 126, 113, 1),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Text("tidak", style: TextStyle(color: Colors.white),),
                                      ),
                                    )

                                  ],
                                )
                            ),
                            Positioned(
                                width: 360,
                                left: 0,
                                height: 75,
                                top: 400,
                                child: Container(
                                  width: 385,
                                  height: 100,
                                  padding: EdgeInsets.only(top: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(4.0, 4.0),
                                            blurRadius: 15.0,
                                            spreadRadius: 0.4
                                        ),
                                        BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(-4.0, -4.0),
                                            blurRadius: 15.0,
                                            spreadRadius: 0.4
                                        ),
                                      ]
                                  ),
                                  
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: (){
                                          print('botbar home');
                                        },
                                        child: Container(

                                          child: IconPath("Assets/home.png"),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          print('botbar history');
                                        },
                                        child: Container(

                                          child: IconPath("Assets/history.png"),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          print('botbar list');
                                        },
                                        child: Container(

                                          child: IconPath("Assets/list-text.png"),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          print('botbar settings');
                                        },
                                        child: Container(

                                          child: IconPath("Assets/settings.png"),
                                        ),
                                      )

                                    ],
                                  ),
                                )
                            )
                          ],
                        ),
                      ))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}