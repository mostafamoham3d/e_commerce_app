import 'package:e_commerce_app/features/shop/presentation/widgets/shop_filter_widgets/custom_button_for_bottom_sheet.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.sizeOf(context).width,
      height: 104,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButtonForBottomSheet(
            label: "Discard",
            backGroundColor: Colors.white,
            fontColor: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          CustomButtonForBottomSheet(
            label: "Apply",
            backGroundColor: Color(0xffDB3022),
            fontColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
