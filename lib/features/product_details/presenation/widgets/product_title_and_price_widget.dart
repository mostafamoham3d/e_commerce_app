import 'package:e_commerce_app/features/product_details/presenation/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductTitleAndPriceWidget extends StatelessWidget {
  const ProductTitleAndPriceWidget({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
    
      title: Text(
        productModel.category,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      subtitle: Text(
        productModel.title,
      ),
      trailing: Text(
        '\$${productModel.price}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}
