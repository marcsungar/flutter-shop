import 'dart:io';
import 'package:flutter/material.dart';
import 'file:///F:/flutter%20projects/flutter_shop/lib/pages/Settings/Ajustes.dart';




class Profile extends StatefulWidget{
  static const routeName = '/profile';

  State<StatefulWidget> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.lightGreen,
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Profile',
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
                      Icons.settings,
                      color: Colors.black45,
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
             Container(
               child: Text(
                 "Le corgi",
                 style: TextStyle(
                   fontSize: 20
                 ),
               ),
             ),

             menu(Icons.mail, "correo@ejemplo.com"),
             menu(Icons.phone, "682667150"),
           ],
         ),

    );
  }

  Widget menu(icono, texto){
    return Container(
      margin: EdgeInsets.only( left: 40, top: 30),
      child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only( right: 20),
              child: Icon(
                icono,
                color: Colors.lightGreen,
                size: 25,
              ),
            ),
            Text(
              texto,
              style: TextStyle(
                  fontSize: 18,
                color: Colors.black45
              ),
            ),
          ]
      ),
    );
  }

}
