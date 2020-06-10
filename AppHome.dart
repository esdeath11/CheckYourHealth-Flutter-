import 'package:finalexam/Controller/DetailController.dart';
import 'package:finalexam/Helper/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:finalexam/Helper/iconPath.dart';

import 'Screen/Service/Auth.dart';



class MyDashboard extends StatefulWidget{

  final Function changeThis;

  MyDashboard({this.changeThis});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myHomeDashboard();
  }
}

class _myHomeDashboard extends State<MyDashboard>{

  final AuthService _auth = AuthService();
  static int page;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            width: 400,
            height: 800,
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: Container(
                        width: 370,
                        height: 200,
                        color: Color.fromRGBO(74, 126, 250,1)
                    )
                ),
                Positioned(
                    left: 50,
                    child: ImagePath("Assets/img1.png")
                ),
                Positioned(
                    top: 160,
                    child: Container(
                      width: 360,
                      height: 700,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 10,
                              left: 20,
                              child: Text("Selamat Datang", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)
                          ),
                          Positioned(
                            top: 28,
                            left: 20,
                            child: Text(DetailController().anonName, style: TextStyle(fontSize: 15),),
                          ),
                          Positioned(
                            top: 70,
                              left: 20,
                              child: Text("Bagaimana keadaanmu hari ini?", style: TextStyle(fontSize: 15)
                          )
                          ),
                          Positioned(
                            width: 370,
                            top: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: ()async {

                                    },
                                    child:  Container(
                                        width: 100,
                                        height: 100,
                                        padding: EdgeInsets.only(left: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                offset: Offset(4.0, 4.0),
                                                blurRadius: 15.0,
                                                spreadRadius: 1.0
                                            ),
                                            BoxShadow(
                                                color: Colors.white,
                                                offset: Offset(-4.0, -4.0),
                                                blurRadius: 15.0,
                                                spreadRadius: 1.0
                                            ),
                                          ],
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.only(right: 7),
                                          child: Text("Sehat"),
                                        )
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(context, "/second");
                                      print('checked 2');
                                    },
                                    child:  Container(
                                        width: 100,
                                        height: 100,
                                        padding: EdgeInsets.only(left: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                offset: Offset(4.0, 4.0),
                                                blurRadius: 15.0,
                                                spreadRadius: 1.0
                                            ),
                                            BoxShadow(
                                                color: Colors.white,
                                                offset: Offset(-4.0, -4.0),
                                                blurRadius: 15.0,
                                                spreadRadius: 1.0
                                            ),
                                          ],
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.only(right: 7),
                                          alignment: Alignment.center,
                                          child: Text("Sakit"),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                          ),
                          Positioned(
                            left: 20,
                              top: 230,
                              child: Text("Tips Kesehatan", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),)
                          ),
                          Positioned(
                            top: 260,
                              width: 370,
                              height: 220,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    width: 280,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(4.0, 4.0),
                                              blurRadius: 15.0,
                                              spreadRadius: 1.0
                                          ),
                                          BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-4.0, -4.0),
                                              blurRadius: 15.0,
                                              spreadRadius: 1.0
                                          ),
                                        ]
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        IconPath("Assets/ico1.png"),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(top: 20),
                                              child: Text("Cegah Penularan Demam ", style: Theme.of(context).textTheme.body2,),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: 20),
                                              child: Text("Berdarah dengan Cara Berikut",style: Theme.of(context).textTheme.body2,),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 20),
                                    width: 280,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(4.0, 4.0),
                                              blurRadius: 15.0,
                                              spreadRadius: 1.0
                                          ),
                                          BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-4.0, -4.0),
                                              blurRadius: 15.0,
                                              spreadRadius: 1.0
                                          ),
                                        ]
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        IconPath("Assets/Layer_1.png"),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Text("Tingkatkan Imunitas Anda ", style: Theme.of(context).textTheme.body2,),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: 20),
                                              child: Text("dengan Makanan - Makanan Ini",style: Theme.of(context).textTheme.body2,),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                          ),
                          Positioned(
                            width: 360,
                              left: 0,
                              height: 75,
                              top: 575,
                              child: Container(
                                width: 385,
                                height: 100,
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
                    )
                )
              ],
            ),
          )
        ],
      )
    );
  }
}