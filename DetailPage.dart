import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _detailPage();
  }

}

class _detailPage extends State<DetailPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
                width: 370,
                height: 300,
                child: Container(
                  color: Color.fromRGBO(74, 126, 250, 1),
                )
            )
          ],
        ),
      ),
    );
  }
}