import 'package:e_commerce_app/features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/features/cart/presentation/controllers/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckOutTotalAmount extends StatelessWidget {
  const CheckOutTotalAmount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        double totalAmount = 0;
        for (CartItemModel cartItemModel in state.cartItems) {
          totalAmount +=
              cartItemModel.quantity * cartItemModel.productModel.price;
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Total amount:',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '$totalAmount\$',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        );
      },
    );
  }
}
