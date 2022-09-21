import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPageSecond extends StatelessWidget {
  static String id = 'login_pageSecond';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: cuerpo(),
      ),
    );
  }

  Widget cuerpo() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://i.ibb.co/CBKQm2p/fondo1.png"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              nombre(),
              SizedBox(
                height: 30.0,
              ),
              _userTextField(),
              SizedBox(
                height: 30.0,
              ),
              _passwordTextField(),
              SizedBox(
                height: 30.0,
              ),
              _bottonLogin(),
            ]),
      ),
    );
  }

  Widget nombre() {
    return Text(
      "Bienvenido al \n menu digital",
      style: TextStyle(
          color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'ejemplo@correo.com',
            labelText: 'correo electronico',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'contraseña',
            labelText: 'contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
          child: Text('Login'),
        ),
        onPressed: () {
          //vamos al menu y pagina de inicio
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPageSecond()),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
        ),
      );
    });
  }
}
