import 'package:e_commerce_app/features/product_details/presenation/data/models/product_model.dart';

class CartItemModel {
  final ProductModel productModel;
   int quantity;
  CartItemModel({
    required this.productModel,
    required this.quantity,
  });


  CartItemModel copyWith({
    ProductModel? productModel,
    int? quantity,
  }) {
    return CartItemModel(
      productModel: productModel ?? this.productModel,
      quantity: quantity ?? this.quantity,
    );
  }
}
