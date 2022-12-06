import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_shop/pages/Login/PWD.dart';
import 'package:flutter_shop/widgets/TextFieldWidget.dart';

import '../Home.dart';
import 'Register.dart';


class LoginPage extends StatefulWidget{
  static const routeName = '/login';

  State<StatefulWidget> createState() => _LoginPageState();
}

// ignore: camel_case_types
class _LoginPageState extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
          children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            child: Text(
                "L",
                style: TextStyle(
                  fontSize: 50
                ),
            ),
        ),
        Container(
          margin: EdgeInsets.only(top: 50, left: 30),
          alignment: Alignment.centerLeft,
          child: Text(
            "¡Hola de nuevo!",
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight:  FontWeight.bold
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(15)),
        TextFieldWidget.text("Correo" , 2),
        TextFieldWidget.text("Contraseña" , 1),
        Padding(padding: EdgeInsets.all(15)),
        rowtext( "He olvidado mi contraseña ",  "Recuperar", () {
          Navigator.pushNamed(context, ResetPWD.routeName);
        },),
        const SizedBox(height: 30),
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, Home.routeName);
          },
          color: Colors.lightGreen,
          child: Container(
            alignment: Alignment.center,
            width: 200,
            child: const Text(
                'LOG IN',
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
            ),
          )
        ),

        Container(
          padding: EdgeInsets.only(left: 40, top: 20),
          child:  rowtext( "¿No tienes cuenta? ",  "¡Registrate!", () {
            Navigator.pushNamed(context, Register.routeName);
          },),
        )

      ]
    ),

    );
  }

  Widget rowtext(text, boldtxt ,go){

    return Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 70)),
          Container(
            child:  Text(
              text,
              style: TextStyle(color: Colors.black45),
            ),
          ),
          InkWell(
            onTap: go,
            child:  Container(
              child:  Text(
                boldtxt,
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
    );
  }
}
