import 'package:finalexam/Controller/DetailController.dart';
import 'package:finalexam/Helper/ImagePath.dart';
import 'package:finalexam/main.dart';
import 'package:flutter/material.dart';

import 'AppHome.dart';


class DetailPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _detailPage();
  }

}

class _detailPage extends State<DetailPage>{
  String get nama => DetailController().nama;

  String get kondisi => DetailController().kondisi;

  String get diagnosa => DetailController().diagnosa;

  String get saran1 => DetailController().saran1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(74, 126, 250,1),
      body: ListView(
        children: <Widget>[
          Container(
              width: 400,
              height: 800,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      height: 200,
                      width: 370,
                      child: ImagePath("Assets/detail.png")
                  ),
                  Positioned(
                    top: 162,
                    width: 360,
                    height: 700,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(45),topLeft: Radius.circular(45))
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 30,
                            left: 20,
                            child: Row(
                              children: <Widget>[
                                Text("Hi, ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                Text(nama, style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600))
                              ],
                            ),
                          ),
                          Positioned(
                              top: 50,
                              left: 20,
                              width: 210,
                              child: Container(
                                child: Text(kondisi),
                              )),
                          Positioned(
                              top: 110,
                              left: 20,
                              width: 210,
                              child: Container(
                                child: Text(diagnosa),
                              )),
                          Positioned(
                              top: 170,
                              left: 20,
                              child: Container(
                                child: Text("Cara Mengobati Penyakit"),
                              )),
                          Positioned(
                              top: 210,
                              left: 20,
                              width: 250,
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 7),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(66, 34, 75, 1),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Text(saran1, style: TextStyle(color: Colors.white), ),
                              )),
                          Positioned(
                              top: 280,
                              left: 20,
                              child: Text("Cara Pencegahan Penyakit")
                          ),
                          Positioned(
                              top: 320,
                              left: 20,
                              width: 250,
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 7),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(253, 133, 96, 1),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Text(saran1, style: TextStyle(color: Colors.white), ),
                              )
                          ),
                          Positioned(
                              top: 410,
                              left: 100,
                              width: 250,
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: (){
                                        print('riwayat');
                                      },
                                      child: Container(
                                        width: 90,
                                        height: 45,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(45),
                                            color: Color.fromRGBO(180, 180, 180, 1)
                                        ),
                                        child: Text("CEK RIWAYAT", style: TextStyle(color: Colors.white ,fontSize: 11)),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        print('selesai');
                                        setState(() {

                                        });
                                      },
                                      child: Container(
                                        width: 90,
                                        height: 45,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(45),
                                            color: Color.fromRGBO(74, 167, 187, 1)
                                        ),
                                        child: FlatButton(onPressed: (){
                                          Navigator.pushNamed(context, "/");
                                        }, child: Text("SELESAI", style: TextStyle(color: Colors.white ,fontSize: 11))),
                                      ),
                                    )


                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
          )

        ],
      ),
    );
  }
}