import 'dart:convert';

import 'package:guru_shop/src/models/base_model.dart';

class ProductModel extends BaseModel {
  final String id;
  final String name;
  final String image;
  final String price;
  final int stars;
  final int reviews;
  final String oldPrice;
  final String discount;

  ProductModel(
      {required this.id,
      required this.name,
      required this.image,
      this.price = '\$299,43',
      this.stars = 3,
      this.reviews = 5,
      this.oldPrice = '\$534,33',
      this.discount = '24% Off'});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        price: json['price'],
        stars: json['stars']);
  }

  @override
  toMap() {
    final Map<String, dynamic> map = <String, dynamic>{};
    // map.addAll({'id': id});
    return map;
  }

  @override
  toJson() {
    return json.encode(toMap());
  }
}
