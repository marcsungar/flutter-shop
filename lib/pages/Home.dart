import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/Delivery.dart';
import 'package:flutter_shop/pages/Products.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Logo",
          style: TextStyle(color: Colors.black, fontWeight:  FontWeight.bold)),
          centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, Delivery.routeName);
                  },
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/home.jpg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Gourmet Delivery',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                                child: Text(
                                  'Te llevamos a casa los mejores platos Gourmet de Alta Gastronomía cocinados al Vacío Sous-Vide a baja temperatura por nuestros chefs',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Flexible(
                child: InkWell(
                  onTap: (){
                     Navigator.pushNamed(context, Products.routeName);
                  },
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/home2.jpg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Equipos para cocinar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                                child: Text(
                                  'Para cocinar al Vacío Sous-Vide a Baja Temperatura y Robots diseñados para hacer fácil y práctica la buena cocina',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
  
}
