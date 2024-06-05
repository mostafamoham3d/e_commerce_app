import 'package:e_commerce_app/features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/cart_item_quantity_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartListItemDetailsWidget extends StatelessWidget {
  final CartItemModel cartItemModel;
  const CartListItemDetailsWidget({
    super.key,
    required this.cartItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          cartItemModel.productModel.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Color:',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Black',
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Size:',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'L',
                ),
              ],
            ),
          ],
        ),
        const Gap(15),
         CartItemQuantityWidget(
          cartItemModel: cartItemModel,
         ),
      ],
    );
  }
}
