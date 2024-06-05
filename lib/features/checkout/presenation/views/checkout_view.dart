import 'package:e_commerce_app/core/images/assets.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/features/checkout/presenation/widgets/delivery_method_widget.dart';
import 'package:e_commerce_app/features/checkout/presenation/widgets/payment_method_widget.dart';
import 'package:e_commerce_app/features/checkout/presenation/widgets/shipping_address_widget.dart';
import 'package:e_commerce_app/features/checkout/presenation/widgets/submit_order_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const SubmitOrderBtn(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Checkout'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            ShippingAddressWidget(),
            Gap(40),
            PaymentMethodWidget(),
            Gap(40),
            DeliveryMethodWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order:',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '112\$',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery:',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '112\$',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Summary:',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '112\$',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Gap(60),
          ],
        ),
      ),
    );
  }
}
