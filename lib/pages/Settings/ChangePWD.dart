import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/TextFieldWidget.dart';

import 'Ajustes.dart';

class Changepwd extends StatefulWidget{
  static const routeName = '/changepwd';

  State<StatefulWidget> createState() => _ChangepwdState();
}

// ignore: camel_case_types
class _ChangepwdState extends State<Changepwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.lightGreen,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Cambiar contraseña',
          style: TextStyle(
              color: Colors.black
          ),
        ),
        actions: <Widget>[

          MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, Settings.routeName);
              },
              child: Builder(
                builder: (context) =>
                    GestureDetector(
                      child: Icon(
                        Icons.save,
                        color: Colors.lightGreen,
                        size: 25,
                      ),
                    ),
              )
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          TextFieldWidget.text("Nombre Contraseña" , 1),
          TextFieldWidget.text("Repetir Contraseña" , 2),
        ],
      ),
    );

  }
}
