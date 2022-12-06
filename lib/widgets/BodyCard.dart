import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_shop/objects/CardObject.dart';
import 'package:flutter_shop/objects/IconsObject.dart';
import 'package:flutter_shop/pages/Products/BuyProduct.dart';
import 'package:flutter_shop/pages/Products/Categories.dart';

class BodyCard{

  static Widget icons(String title, String image , BuildContext context){

    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,Categories.routeName, arguments: title);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            IconButton(
                icon: SvgPicture.asset(
                  image,
                  color: Colors.black45,
                ),
                onPressed: (){
                  Navigator.pushNamed(context,Categories.routeName, arguments: title);
                }),
            Text(
              title,
              style: TextStyle(color: Colors.black45),
            )
          ],
        ),
      ),
    );
  }

  static Widget Items(CardObject card, context) {

    return InkWell(
      onTap: () =>
          Navigator.pushNamed(context,BuyProduct.routeName, arguments: card),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(child: card.images[0]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  card.price.toString() + '€',
                  style: TextStyle(color: Color(0xFF33cc33)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Center(
                    child: Text(
                      card.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54),
                    )),
              ),
            ],
          )),
    );
  }

  static Widget BodyCardbody(List<IconsObject> menu, Future<List<CardObject>> cardObjects){

    var menuh;
    double altura = 0;

    menuh = [
      Padding(padding: EdgeInsets.all(0))
    ];

    if(menu != null){
      altura = 80;
        menuh = menu
          .map((e) => icons(e.tilte, e.image, e.context)).toList();
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: altura,
              child: ListView(
                  scrollDirection: Axis.horizontal, children: menuh),
            ),
            FutureBuilder<List<CardObject>>(
              future: cardObjects,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return GridView.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      children: snapshot.data.map((item) {
                        return Items(item, context);
                      }).toList());
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                // By default, show a loading spinner.
                return CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }

}
