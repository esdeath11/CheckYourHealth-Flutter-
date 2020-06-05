import 'package:flutter/material.dart';

class ImagePath extends StatelessWidget{
  String _assetPath ;
  ImagePath(this._assetPath);

  @override
  Widget build(BuildContext context) {

    return Container(
      constraints: BoxConstraints.expand(
        height: 200,
        width: 300,
      ),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Color.fromRGBO(74, 126, 250,1),
      ),
      child: Image.asset(
        _assetPath,
        fit: BoxFit.fitHeight,
      ),
    );
  }

}