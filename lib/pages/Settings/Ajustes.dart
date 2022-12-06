import 'package:flutter/material.dart';
import 'package:flutter_shop/objects/SettingsObject.dart';
import 'package:flutter_shop/pages/Login/LoginPage.dart';
import 'package:flutter_shop/pages/Settings/ChangePWD.dart';
import 'package:flutter_shop/pages/Settings/EditProfile.dart';
import 'package:flutter_shop/widgets/SettingsWidget.dart';

import 'Informacion.dart';



class Settings extends StatefulWidget{
  static const routeName = '/settings';

  State<StatefulWidget> createState() => _SettingsState();
}

// ignore: camel_case_types
class _SettingsState extends State<Settings> {
  @override

  double space = 0;



  Widget build(BuildContext context) {

    var opciones = [
      SettingsObject(context,"Editar perfil", space = 240, (){
        Navigator.pushNamed(context, Editprofile.routeName);
      },),
      SettingsObject(context, "Cambiar Contraseña", space = 160, (){
        Navigator.pushNamed(context, Changepwd.routeName);
      },),
      SettingsObject(context, "Términos y condiciones", space = 130, null),
      SettingsObject(context, "Política de privacidad", space = 150, null),
      SettingsObject(context, "Información", space = 235, (){
        Navigator.pushNamed(context, Informacion.routeName);
      },)
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.lightGreen, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Ajustes',
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SettingsWidget.settingsList(opciones),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, LoginPage.routeName);
            },
            child: Container(
              margin: EdgeInsets.only( left: 35, top: 20),
              child: Text(
                "Cerrar sesión",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),

    );
  }

}
