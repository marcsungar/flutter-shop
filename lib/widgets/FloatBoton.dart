import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/Settings/Profile.dart';

class FloatBoton{
  static Widget botones(context){

    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0.0,
          right: 55.0,
          child: FloatingActionButton(
            backgroundColor: Colors.green,
            heroTag: 'profile',
            onPressed: () {
              Navigator.pushNamed(context, Profile.routeName);
            },
            child: Icon(Icons.person_rounded),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: FloatingActionButton(
            heroTag: 'cart',
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.pushNamed(context, null);
            },
            child: Icon(Icons.add_shopping_cart),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
        ),
      ],
    );
  }
}
