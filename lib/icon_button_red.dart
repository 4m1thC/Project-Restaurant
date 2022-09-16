import 'package:flutter/material.dart';

class IconButtonRed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final iconButton = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 5.0
      ),

      height: 50.0,
      width: 50.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.local_drink,
        color: Colors.white,
      ),

    );

    return iconButton;
  }

}