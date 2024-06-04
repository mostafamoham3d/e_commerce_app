import 'package:e_commerce_app/features/product_details/presenation/widgets/choose_product_size_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ChooseProductSizeBtn extends StatelessWidget {
  final List<String> sizes;
  const ChooseProductSizeBtn({
    super.key,
    required this.sizes,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        context: context,
        builder: (context) => ChooseProductSizeBottomSheet(sizes: sizes),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: Colors.black54,
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Size',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.keyboard_arrow_down_rounded),
          ],
        ),
      ),
    );
  }
}

