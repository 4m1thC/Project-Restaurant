import 'package:flutter/material.dart';
import 'button_red.dart';

class OrdenBarFood extends StatelessWidget{

  OrdenBarFood();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Flexible(child: Column(
      children: <Widget>[
        ButtonRed("Adicionar Platillo"),
        ButtonRed("Adicionar Bebida"),
        ButtonRed("Adicionar Postre"),
      ],
    ));

    throw UnimplementedError();
  }

  

}