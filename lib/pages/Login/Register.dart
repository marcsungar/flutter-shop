import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/TextFieldWidget.dart';

import '../Home.dart';



class Register extends StatefulWidget{
  static const routeName = '/register';

  State<StatefulWidget> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool checkedValue = false;

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
            margin: EdgeInsets.only(top: 40, left: 30),
            alignment: Alignment.centerLeft,
            child: Text(
              "¡Te damos la bienvenida!",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight:  FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
          ),
          TextFieldWidget.text("Nombre y apellidos"  , 2),
          TextFieldWidget.text("Teléfono"  , 2),
          TextFieldWidget.text("Correo"  , 2),
          TextFieldWidget.text("Contraseña"  , 1),
          Container(
            height: 20,
              child: CheckboxListTile(
                title: Text(
                  "Aceptar términos y condiciones",
                  style: TextStyle(decoration: TextDecoration.underline, color: Colors.black45),
                ),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              )
          ),
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
                  'SIGN IN',
                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
          ),
        ],
      ),

    );
  }
}
