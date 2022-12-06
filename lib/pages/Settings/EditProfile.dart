import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/TextFieldWidget.dart';

import 'Ajustes.dart';



class Editprofile extends StatefulWidget{
  static const routeName = '/editprofile';

  State<StatefulWidget> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.lightGreen,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Editar Perfil',
          style: TextStyle(
              color: Colors.black
          ),
        ),
        actions: <Widget> [

          MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, Settings.routeName);
              },
              child: Builder(
                builder: (context) => GestureDetector(
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
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Container(
                width: 150,
                height: 100,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 1,
                      ),
                    ],
                    image: new DecorationImage(
                        image: new NetworkImage(
                          'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2019/02/19131712/NomNomNow_Pembroke_Welsh_Corgis-500x400.jpeg',
                        )
                    )
                )
            ),
          ),
          InkWell(
            child: Text(
              "Cambiar imagen de Perfil",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.lightGreen
              ),
            ),
          ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
        ),
          TextFieldWidget.text("Nombre y apellidos"  , 2),
          TextFieldWidget.text("Correo"  , 2),
          TextFieldWidget.text("Teléfono"  , 2),

        ],
      ),

    );
  }
}
