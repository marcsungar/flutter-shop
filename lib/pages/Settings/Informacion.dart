import 'package:flutter/material.dart';


class Informacion extends StatefulWidget{
  static const routeName = '/info';

  State<StatefulWidget> createState() => _informacionState();
}

// ignore: camel_case_types
class _informacionState extends State<Informacion> {
  @override

  double space = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.lightGreen, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Información',
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
      body: Column(
          children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50 ),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            child: Text(
                "L",
                style: TextStyle(
                  fontSize: 50
                ),
            ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),

          alignment: Alignment.center,

          child: Text(
            "Versión 1.0",
            style: TextStyle(
                fontSize: 15,
                color: Colors.black54
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Text(
            "Lorem ipsum dolor sit amet consectetur adipiscing elit nisl fringilla quis, enim scelerisque porttitor in sem taciti netus integer vulputate, tempor libero etiam dictum aenean leo facilisi proin ornare. Turpis nibh nisl parturient malesuada praesent maecenas diam, porta sem sagittis tincidunt vulputate lectus aptent, dignissim mollis lobortis ut odio tempor. Turpis quisque porttitor senectus fusce malesuada, bibendum nulla imperdiet mi parturient quam, orci porta justo phasellus.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black54
            ),

          ),
        ),
      ]
    ),

    );
  }
}