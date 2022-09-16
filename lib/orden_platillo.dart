import 'package:flutter/material.dart';
import 'button_delete_order.dart';
import 'icon_button_red.dart';

class OrdenPlatillo extends StatelessWidget {
  String pathImage;
  String descriptionFood;
  String nameFood;
  int precio;
  int cantidad;

  OrdenPlatillo(
      this.pathImage, this.nameFood, this.descriptionFood, this.precio, this.cantidad);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    int total = this.precio*this.cantidad;

    final foodDescription = Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Text(
          descriptionFood,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w900,
          ),
        ));

    final foodName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        nameFood,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );

    final foodPrice = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      width: 280.0,
      child: Text(
        "Cantidad:$cantidad Precio total: $total Bs.",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 19.0,
        ),
      ),
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 5.0,
        left: 10.0,
      ),
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black45,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
    );

    final foodDetails = Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[foodName, foodDescription, foodPrice],
      ),
    );

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[photo, foodDetails, ButtonDeleteOrder()],
    );
  }
}
