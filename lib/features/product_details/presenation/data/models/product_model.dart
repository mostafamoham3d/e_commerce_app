import 'package:flutter/material.dart';

class ProductModel {
  final String title;
  final String description;
  final double price;
  final double ratings;
  final String image;
  final String category;
  final List<String> sizes;
  final List<Color> colors;

  ProductModel({
    required this.title,
    required this.description,
    required this.price,
    required this.ratings,
    required this.image,
    required this.category,
    required this.sizes,
    required this.colors,
  });
}
