import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CardObject {
  String title;
  int id;
  int price;
  String description;
  int type;
  List<Image> images;
  List<Image> imageProduct;


  CardObject(
      {this.title,
        this.id,
        this.price,
        this.description,
        this.type,
        this.images,
        this.imageProduct,
      });

  factory CardObject.fromJson(Map<String, dynamic> json) {
    return CardObject(
        title: json['title'],
        id: int.parse(json['id']),
        images: [Image.network(json['image'])],
        imageProduct: [Image.network(json['image'],width: 500, fit: BoxFit.cover,)],
        description: json['description'],
        price: json['price'],
        type: json['type']);
  }

  static Future<List<CardObject>> cartas(int type, int id, String product) async {

    var pez = [
      "Sushi",
      "Lubina"
    ];

    final response =
    await http.get(
        'https://raw.githubusercontent.com/marcsungar/JSON_Files_Flutter/main/flutter.json');

    if (product != null && product.substring(product.length - 1, product.length) == "s") {
      if (product.substring(product.length - 2, product.length) == "es" ){
        product = product.substring(0, product.length - 2);
      }
      else{
        product = product.substring(0, product.length - 1);
      }
    }

    if (response.statusCode == 200) {
      var tagObjsJson = jsonDecode(response.body)['users'] as List;
      if (type == null && product == null) {
        return tagObjsJson
            .map((tagJson) => CardObject.fromJson(tagJson))
            .where((element) => element.id == id)
            .toList();
      }
      else if (id == null && type != null) {
        return tagObjsJson
            .map((tagJson) => CardObject.fromJson(tagJson))
            .where((element) => element.type == type)
            .toList();
      }
      else if (product != null) {
        if(product == "Pescado") {
          for (var i = 0; i < pez.length; i++) {
            return tagObjsJson
                .map((tagJson) => CardObject.fromJson(tagJson))
                .where((element) => element.title.contains(pez[i]) == true)
                .toList();
          }
        }
        else{
          return tagObjsJson
              .map((tagJson) => CardObject.fromJson(tagJson))
              .where((element) => element.title.contains(product) == true)
              .toList();
        }
      } else {
        throw Exception('Failed to load data');
      }
    }
  }
}