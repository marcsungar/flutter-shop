import 'package:flutter/material.dart';
import 'package:flutter_shop/objects/CardObject.dart';
import 'package:flutter_shop/widgets/BodyCard.dart';

class Categories extends StatefulWidget {
  static const routeName = '/cotegories';

  @override
  State<StatefulWidget> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {


  Future<List<CardObject>> categorias;

  @override
  Widget build(BuildContext context) {

    final String title =  ModalRoute.of(context).settings.arguments;

    categorias = CardObject.cartas(null, null, title);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.lightGreen, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
      body: BodyCard.BodyCardbody(null, categorias),
    );
  }
  
}
