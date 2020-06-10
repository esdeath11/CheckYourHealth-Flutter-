import 'package:finalexam/Helper/ImagePath.dart';
import 'package:finalexam/Helper/iconPath.dart';
import 'package:flutter/material.dart';

import 'Screen/Service/Auth.dart';


class QuestPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuestPage();
  }

}

class _QuestPage extends State<QuestPage>{
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(74, 126, 250, 1),
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
                              top: 30,
                              left: 20,
                              width: 200,
                              child: Container(
                                child: Text("Kurangi aktifitas, Kamu sedang sakit", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                              )),
                          Positioned(
                              width: 84,
                              height: 84,
                              top: 260,
                              left: 30,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                padding: EdgeInsets.only(bottom: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
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
                                      ),
                                    ]
                                ),
                                child: Text("Kepala"),

                              )),
                          Positioned(
                              width: 84,
                              height: 84,
                              top: 260,
                              left: 140,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                padding: EdgeInsets.only(bottom: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
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
                                      ),
                                    ]
                                ),
                                child: Text("Kulit"),

                              )),
                          Positioned(
                              width: 84,
                              height: 84,
                              top: 260,
                              left: 250,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, "third");
                                },
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  padding: EdgeInsets.only(bottom: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
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
                                        ),
                                      ]
                                  ),
                                  child: Text("Pencernaan"),

                                ),
                              )
                          ),
                          Positioned(
                              top: 205,
                              left: 30,
                              child: Text("Dimana area sakit mu?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
                          Positioned(
                              width: 84,
                              height: 84,
                              top: 100,
                              left: 140,
                              child: GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.only(right: 10, top: 25),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(245, 126, 113, 1),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: IconPath("Assets/mask.png"),
                                ),
                              )),
                          Positioned(
                              width: 84,
                              height: 84,
                              top: 240,
                              left: 30,
                              child: GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(37, 70, 91, 1),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: IconPath("Assets/headache.png"),
                                ),
                              )),
                          Positioned(
                              width: 84,
                              height: 84,
                              top: 240,
                              left: 140,
                              child: GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.only(right: 10, top: 5),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(0, 139, 149, 1),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: IconPath("Assets/bacteria.png"),
                                ),
                              )),
                          Positioned(
                              width: 84,
                              height: 84,
                              top: 240,
                              left: 250,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, "/third");
                                },
                                child: Container(
                                  padding: EdgeInsets.only(right: 10, top: 5),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(226, 196, 45, 1),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: IconPath("Assets/stomach.png"),
                                ),
                              )),
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
                                      onTap: () async{
                                        await _auth.signOut();
                                      },
                                      child: Container(

                                        child: IconPath("Assets/power.png"),
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
    );
  }
}