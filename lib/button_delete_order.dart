import 'package:flutter/material.dart';

class ButtonDeleteOrder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final deleteButton = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 5.0
      ),

      height: 50.0,
      width: 50.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      child: Icon(
        Icons.delete,
        color: Colors.white,
      ),

    );

    return deleteButton;
  }

}