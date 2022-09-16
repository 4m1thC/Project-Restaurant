import 'package:flutter/material.dart';

class TitleOrden extends StatelessWidget {

  TitleOrden();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final orden_icon = Container(
      margin: const EdgeInsets.only(
        top: 230.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.task,
        color: Colors.redAccent,
      ),
    );

    final title_client = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
              top: 230.0,
              left: 80.0,
              right: 20.0
          ),
          child: Text(
            "PEDIDO DEL CLIENTE",
            style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            orden_icon,
          ],
        ),
      ],
    );

    return title_client;
  }

}