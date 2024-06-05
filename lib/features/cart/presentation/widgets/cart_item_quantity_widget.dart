import 'package:e_commerce_app/features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/features/cart/presentation/controllers/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemQuantityWidget extends StatelessWidget {
  final CartItemModel cartItemModel;
  const CartItemQuantityWidget({
    super.key,
    required this.cartItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CartQuantityBtn(
          isIncrement: false,
          cartItemModel: cartItemModel,
        ),
        Text('${cartItemModel.quantity}'),
        CartQuantityBtn(
          isIncrement: true,
          cartItemModel: cartItemModel,
        ),
      ],
    );
  }
}

class CartQuantityBtn extends StatelessWidget {
  final CartItemModel cartItemModel;
  final bool isIncrement;
  const CartQuantityBtn({
    super.key,
    required this.isIncrement,
    required this.cartItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isIncrement) {
          context.read<CartCubit>().addToCart(cartItemModel.productModel);
        } else {
          context.read<CartCubit>().removeFromCart(cartItemModel.productModel);
        }
      },
      child: Container(
        alignment: Alignment.center,
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.2),
              blurRadius: 4,
              spreadRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(
          isIncrement ? Icons.add : Icons.remove,
          color: Colors.grey,
        ),
      ),
    );
  }
}
