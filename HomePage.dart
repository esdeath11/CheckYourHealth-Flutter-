import 'package:finalexam/Helper/ImagePath.dart';
import 'package:flutter/material.dart';
import  'package:sphere_bottom_navigation_bar/sphere_bottom_navigation_bar.dart';


class Main extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Main();
  }

}

class _Main extends State<Main>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body:Container(
          color: Color.fromRGBO(74, 126, 250,0),
          child: Dashboard(),
        ),

      ),

    );
  }
}

class Dashboard extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Dashboard();
  }

}

class _Dashboard extends State<Dashboard>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color.fromRGBO(74, 126, 250,1),
        body: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  ImagePath("Assets/img1.png"),
                  Container(
                    width: 350,
                    height: 780,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: SphereBottomNavigationBar(
          defaultSelectedItem: 0,
          sheetBackgroundColor: Colors.white,
          sheetRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          onItemPressed: (index) => setState(() {
            print('Selected item is - $index');
          }),
          navigationItems: [
            BuildNavigationItem(
              tooltip: 'Home',
              itemColor: Color(0xFFFFD6B2),
              icon: Icon(Icons.home),
              selectedItemColor: Color(0xFFFFD6B2),
            ),
            BuildNavigationItem(
              tooltip: 'Chat',
              itemColor: Color(0xFFB2F4FF),
              icon: Icon(Icons.chat),
              selectedItemColor: Color(0xFFB2F4FF),
            ),
            BuildNavigationItem(
              tooltip: 'Peoples',
              itemColor: Color(0xFFCDB2FF),
              icon: Icon(Icons.people),
              selectedItemColor: Color(0xFFCDB2FF),
            ),
            BuildNavigationItem(
                tooltip: 'Settings',
                itemColor: Color(0xFFFFB2D9),
                icon: Icon(Icons.settings),
                selectedItemColor: Color(0xFFFFB2D9)),
          ],
        )
    );
  }
}
