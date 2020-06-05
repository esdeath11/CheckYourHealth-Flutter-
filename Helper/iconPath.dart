import 'package:flutter/material.dart';


class IconPath extends StatelessWidget{

  String _iconPath;
  IconPath(this._iconPath);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 10),
      constraints: BoxConstraints.expand(
        height: 50,
        width: 50,
      ),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
      ),
      child: Image.asset(
        _iconPath,
        fit: BoxFit.cover,
      ),
    );
  }

}