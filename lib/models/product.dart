import 'package:fashion_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductModel {
  int id;
  String image, name, categori, desc;
  double price, rate;
  int reviews;
  Color color;
  ProductModel(
      {this.id,
      this.image,
      this.name,
      this.categori,
      this.price,
      this.rate,
      this.reviews,
      this.desc,
      this.color});
}

List<ProductModel> dataProduct = [
  ProductModel(
      id: 4,
      image: 'assets/image(4).png',
      name: 'Kebaya',
      categori: 'dress',
      price: 68,
      rate: 4.3,
      desc: descText,
      reviews: 24,
      color: Colors.red),
  ProductModel(
      id: 1,
      image: 'assets/image(1).png',
      name: 'Long Dress',
      categori: 'dress',
      price: 58,
      rate: 4.5,
      reviews: 14,
      desc: descText,
      color: colorUngu),
  ProductModel(
      id: 2,
      image: 'assets/image(2).png',
      name: 'Long Dress',
      categori: 'dress',
      price: 68,
      rate: 4.3,
      desc: descText,
      reviews: 24,
      color: colorPink),
  ProductModel(
      id: 3,
      image: 'assets/image(3).png',
      name: 'Kebaya',
      categori: 'dress',
      price: 68,
      rate: 4.3,
      desc: descText,
      reviews: 24,
      color: Colors.blue),
];

String descText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc commodo leo neque, sed fringilla purus imperdiet ut. Sed varius finibus lorem. Maecenas eu sollicitudin felis. Duis non hendrerit eros. Nullam ullamcorper ex sed odio fermentum, ut molestie orci sagittis. Nulla bibendum, ligula ut ornare tincidunt, arcu mi venenatis purus, et finibus mauris orci eu turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.';
