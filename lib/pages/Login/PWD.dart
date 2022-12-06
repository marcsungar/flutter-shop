import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/Login/LoginPage.dart';
import 'package:flutter_shop/widgets/TextFieldWidget.dart';


class ResetPWD extends StatefulWidget{
  static const routeName = '/pwd';

  State<StatefulWidget> createState() => _ResetPWDPageState();
}

// ignore: camel_case_types
class _ResetPWDPageState extends State<ResetPWD> {
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
              margin: EdgeInsets.only(top: 60, left: 30),
              alignment: Alignment.centerLeft,
              child: Text(
                "Ayúdanos a recuper tu contraseña",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight:  FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 40, 30, 40),
              alignment: Alignment.centerLeft,
              child: Text(
                "Introduce tu correo y te enviaremos las instrucciones para poder recuperarla",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                ),
              ),
            ),
            TextFieldWidget.text("Correo" , 2),

            const SizedBox(height: 30),
            RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.routeName);
                },
                color: Colors.lightGreen,
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  child: const Text(
                    'ENVIAR',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                )
            ),

          ]
      ),

    );
  }
}
