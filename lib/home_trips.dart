import 'package:flutter/material.dart';
import 'header_app_bar.dart';
import 'orden_platillo_list.dart';
import 'title_orden.dart';
import 'orden_bar_food.dart';

class HomeTrips extends StatelessWidget{

  String descriptionDummy =
      "Lorem Ipsum ess simplemente el texto de relleno dse las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas , las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            TitleOrden(),
            OrdenBarFood(),
            OrdenPlatilloList(),
          ],
        ),
        HeaderAppBar(),



      ],
    );
  }

}