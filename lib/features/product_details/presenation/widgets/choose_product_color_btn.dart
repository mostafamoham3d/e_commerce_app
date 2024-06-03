import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChooseProductColorBtn extends StatelessWidget {
  final List<Color> colors;
  const ChooseProductColorBtn({
    super.key,
    required this.colors,
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
          height: 200,
          width: context.width,
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Select color',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const Gap(15),
              Wrap(
                children: colors
                    .map(
                      (color) => Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: color,
                          //sborderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
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
              'Black',
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
