import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  GradientBack();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String title = "Tania's Restaurant";

    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFFB80316),
              Color(0xFF43010B),
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
        ),
      ),

      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      alignment: Alignment(-0.9, -0.6),
    );

    throw UnimplementedError();
  }
}
