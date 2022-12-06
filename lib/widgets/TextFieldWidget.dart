import 'package:flutter/material.dart';

class TextFieldWidget{

  static Widget text(String title, int type){
    return Container(
        height: 60,
        margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Column(
            children: [
              if (type == 2)
                TextField(
                  decoration: InputDecoration(
                    labelText: title,
                    hintStyle: TextStyle(
                        fontSize: 15
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                )
              else
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: title,
                    hintStyle: TextStyle(
                        fontSize: 15
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                )
            ],
          ),
    );
  }
}