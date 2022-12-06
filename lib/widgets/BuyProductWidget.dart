import 'package:flutter/material.dart';
import 'package:flutter_shop/objects/CardObject.dart';

class BuyProductWidget{

  static Widget InfoProduct(CardObject card, context) {
    return Column(
      children: [
        Container(child: card.imageProduct[0],),
        Container(
          margin: EdgeInsets.only(top: 15, left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            card.title,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15, left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            card.price.toString() + '€',
            style: TextStyle(
              fontSize: 25,
              color: Colors.lightGreen,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15, left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Description",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            card.description,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black45
            ),
          ),
        ),
      ],
    );
  }

  static Widget BodyProduct(Future<List<CardObject>> cardObjects){

    return Column(
          children: [
            FutureBuilder<List<CardObject>>(
              future: cardObjects,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                      children: snapshot.data.map((item) {
                        return InfoProduct(item, context);
                      }).toList());
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return CircularProgressIndicator();
              },
            ),
          ],
    );
  }

}
