import 'package:flutter/material.dart';
import 'orden_platillo.dart';

class OrdenPlatilloList extends StatelessWidget {
  List<String> platos = [
    "Cocacola",
    "Helado de Vainilla",
    "Pizza Napolitana",
    "Spaguetti",
  ];

  List<String> imagenes = [
    "assets/img/cocacola.jpg",
    "assets/img/helado_vainilla.jpg",
    "assets/img/pizza_napolitana.jpg",
    "assets/img/spaguetti.jpg",
  ];

  List<String> descripciones = [
    "Cocacola con sorbete o en vaso",
    "Helado personal con sabor a vainilla",
    "Pizza mediana de 9 piezas",
    "Spaguetti tradicional, con salsa boloneza",
  ];

  List<int> precios = [6, 7, 60, 33,
  ];

  List<int> cantidades = [3, 1, 2, 1];



  OrdenPlatilloList();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          OrdenPlatillo(imagenes[0], platos[0], descripciones[0], precios[0], cantidades[0]),
          OrdenPlatillo(imagenes[1], platos[1], descripciones[1], precios[1], cantidades[0]),
          OrdenPlatillo(imagenes[2], platos[2], descripciones[2], precios[2], cantidades[0]),
          OrdenPlatillo(imagenes[3], platos[3], descripciones[3], precios[3], cantidades[0]),
          OrdenPlatillo(imagenes[3], platos[3], descripciones[3], precios[3], cantidades[0]),
          OrdenPlatillo(imagenes[3], platos[3], descripciones[3], precios[3], cantidades[0]),
          OrdenPlatillo(imagenes[3], platos[3], descripciones[3], precios[3], cantidades[0]),
        ]
    );
    throw UnimplementedError();
  }
}
