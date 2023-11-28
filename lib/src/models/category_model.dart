import 'dart:convert';

import 'package:guru_shop/src/models/base_model.dart';

class CategoryModel extends BaseModel {
  final String id;
  final String label;
  final String image;

  CategoryModel({
    required this.id,
    required this.label,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      label: json['label'],
      image: json['image'],
    );
  }

  @override
  toMap() {
    final Map<String, dynamic> map = <String, dynamic>{};
    return map;
  }

  @override
  toJson() {
    return json.encode(toMap());
  }
}
