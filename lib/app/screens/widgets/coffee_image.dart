import 'package:coffee_app/app/models/product_model.dart';
import 'package:flutter/material.dart';

class CoffeeImage extends StatelessWidget {
  final ProductModel product;
  const CoffeeImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      product.imagePath,
      width: double.infinity,
      height: 200,
      fit: BoxFit.fill,
    );
  }
}
