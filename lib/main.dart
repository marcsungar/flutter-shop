import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/Products/Categories.dart';

import 'pages/Login/PWD.dart';
import 'pages/Products/BuyProduct.dart';
import 'pages/Login/LoginPage.dart';
import 'pages/Login/Register.dart';
import 'pages/Settings/Ajustes.dart';
import 'pages/Buscador.dart';
import 'pages/Settings/ChangePWD.dart';
import 'pages/Settings/EditProfile.dart';
import 'pages/Settings/Informacion.dart';
import 'pages/Settings/Profile.dart';
import 'pages/Products.dart';
import 'pages/Delivery.dart';
import 'pages/Home.dart';

void main() {
  runApp(MaterialApp(

      initialRoute: '/login',
      routes: {

        //Login
        LoginPage.routeName: (context) => LoginPage(),
        Register.routeName: (context) => Register(),
        ResetPWD.routeName: (context) => ResetPWD(),

        //Pages
        Home.routeName: (context) => Home(),
        Delivery.routeName: (context) => Delivery(),
        Products.routeName: (context) => Products(),
        Buscar.routeName: (context) => Buscar(),

        //Products
        BuyProduct.routeName: (context) => BuyProduct(),
        Categories.routeName: (context) => Categories(),

        // Settings
        Profile.routeName: (context) => Profile(),
        Settings.routeName: (context) => Settings(),
        Informacion.routeName: (context) => Informacion(),
        Changepwd.routeName: (context) => Changepwd(),
        Editprofile.routeName: (context) => Editprofile(),

      }
  ));
}
