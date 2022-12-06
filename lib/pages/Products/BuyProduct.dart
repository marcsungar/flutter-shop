import 'package:flutter/material.dart';
import 'package:flutter_shop/objects/CardObject.dart';
import 'package:flutter_shop/widgets/BuyProductWidget.dart';

class BuyProduct extends StatefulWidget {
  static const routeName = '/buyproduct';

  @override
  State<StatefulWidget> createState() => _BuyProductState();
}

class _BuyProductState extends State<BuyProduct> {


  @override
  Widget build(BuildContext context) {

    final CardObject item = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
          color: Colors.black, //change your color here
          ),
        ),
      body:Column(
        children: [
          BuyProductWidget.BodyProduct(CardObject.cartas(null,item.id,null)),
          RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, null, arguments: item);
              },
              color: Colors.lightGreen,
              child: Container(
                alignment: Alignment.center,
                width: 200,
                child: const Text(
                  'Añadir al Carrito',
                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
          ),
        ],
      )


    );
  }
}
