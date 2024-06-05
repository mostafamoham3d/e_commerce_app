import 'package:e_commerce_app/features/checkout/presenation/widgets/delivery_methods_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/images/assets.dart';

class DeliveryMethodWidget extends StatelessWidget {
  const DeliveryMethodWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivery method',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Gap(20),
        SizedBox(
          height: 80,
          child: DeliveryMethodsListView(),
        ),
      ],
    );
  }
}
