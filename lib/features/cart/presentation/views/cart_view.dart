import 'package:e_commerce_app/core/images/assets.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/cart_items_list_view.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/cart_list_item_widget.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/check_out_total_amount.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/checkout_btn.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/enter_promo_code_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomSheet: CheckoutBtn(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(30),
              Text(
                'My Bag',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(20),
              CartItemsListView(),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EnterPromoCodeBtn(),
                  Gap(20),
                  CheckOutTotalAmount(),
                ],
              ),
              Gap(60),
            ],
          ),
        ),
      ),
    );
  }
}
