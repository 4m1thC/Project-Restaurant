import 'package:flutter/material.dart';
import 'package:project_restaurant/button_red.dart';
import 'package:project_restaurant/src/pages/login_pages_second.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              _bottonLogin(),
              SizedBox(
                height: 15.0,
              ),
              _botoninvitado(),
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

  Widget _botoninvitado() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Text('Entrar como  invitado'),
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
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
          child: Text('Iniciar sesion'),
        ),
        onPressed: () {
          //vamos a la pantalla de inicio sesion(login_pageSecond)
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

//PARA CUANDO QUIERES INICIAR SESION
class InicioSecion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
