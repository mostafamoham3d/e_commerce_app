import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        builder: (context) => Container(
          padding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 14,
          ),
          clipBehavior: Clip.antiAlias,
          height: 300,
          width: context.width,
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Select size',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const Gap(15),
              Wrap(
                children: sizes
                    .map(
                      (size) => Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 2,
                        ),
                        alignment: Alignment.center,
                        width: 120,
                        height: 50,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        child: Text(
                          size,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
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
