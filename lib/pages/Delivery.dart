import 'package:flutter/material.dart';
import 'package:flutter_shop/objects/CardObject.dart';
import 'package:flutter_shop/objects/IconsObject.dart';
import 'package:flutter_shop/widgets/BodyCard.dart';
import 'package:flutter_shop/widgets/FloatBoton.dart';

import 'Buscador.dart';

class Delivery extends StatefulWidget {
  static const routeName = '/delivery';

  @override
  State<StatefulWidget> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {

  Future<List<CardObject>> cartas;

  @override
  void initState() {
    super.initState();
    cartas = CardObject.cartas(2, null,null);
    int i = 0;
  }

  @override
  Widget build(BuildContext context) {

    var icons = [
      IconsObject('Pasta', 'assets/icons/spaghetti.svg', context),
      IconsObject('Carne', 'assets/icons/steak.svg', context),
      IconsObject('Pescado', 'assets/icons/fish.svg', context),
      IconsObject('Verduras', 'assets/icons/carrot.svg', context),
      IconsObject('Frutas', 'assets/icons/apple (1).svg', context),
      IconsObject('Frutas', 'assets/icons/apple (1).svg', context),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Delivery",
            style: TextStyle(
            color: Colors.black
        ),),
        iconTheme: IconThemeData(
          color: Colors.lightGreen, //change your color here
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.search),
            onPressed: () =>
                Navigator.pushNamed(context, Buscar.routeName),
          ),
          IconButton(icon: Icon(Icons.history), onPressed: null)
        ],
      ),
      body: BodyCard.BodyCardbody(icons, cartas),
      floatingActionButton: FloatBoton.botones(context),
    );
  }
}
