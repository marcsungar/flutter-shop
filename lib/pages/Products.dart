import 'package:flutter/material.dart';
import 'package:flutter_shop/objects/CardObject.dart';
import 'package:flutter_shop/objects/IconsObject.dart';
import 'package:flutter_shop/widgets/BodyCard.dart';
import 'package:flutter_shop/widgets/FloatBoton.dart';

import 'Buscador.dart';

class Products extends StatefulWidget {
  static const routeName = '/products';

  @override
  State<StatefulWidget> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  Future<List<CardObject>> cartas;

  @override
  void initState() {
    super.initState();
    cartas = CardObject.cartas(1, null,null);
    int i = 0;
  }

  @override
  Widget build(BuildContext context) {

    var icons = [
      IconsObject('Ollas', 'assets/icons/cook.svg', context),
      IconsObject('Sartenes', 'assets/icons/pan.svg', context),
      IconsObject('Termos', 'assets/icons/thermo.svg', context),
      IconsObject('Arroceras', 'assets/icons/rice-cooker.svg', context),
      IconsObject('Frutas', 'assets/icons/cook.svg', context),
      IconsObject('Frutas', 'assets/icons/cook.svg', context),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Productos",
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
