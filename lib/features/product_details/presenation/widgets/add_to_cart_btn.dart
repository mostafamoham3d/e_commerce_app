import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
