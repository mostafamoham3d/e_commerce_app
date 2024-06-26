import 'package:e_commerce_app/features/cart/presentation/controllers/cubit/cart_cubit.dart';
import 'package:e_commerce_app/features/product_details/presenation/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';

class AddToCartBtn extends StatelessWidget {
  final ProductModel productModel;
  const AddToCartBtn({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<CartCubit>().addToCart(productModel),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        alignment: Alignment.center,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.mainColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.mainColor.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: const Text(
          'ADD TO CART',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
