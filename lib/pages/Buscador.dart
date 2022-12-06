import 'package:flutter/material.dart';

class Buscar extends StatefulWidget{
  static const routeName = '/buscar';

  State<StatefulWidget> createState() => _BuscarState();
}

// ignore: camel_case_types
class _BuscarState extends State<Buscar> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.lightGreen, //change your color here
          ),
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Container(
                height: 60,
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                  ),
                )
            ),
          ],
        )
        ),
      body: Center(
        child: Image.asset('assets/images/back_buscador.png'),
      )
    );
  }
}