import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class ChooseProductSizeBottomSheet extends HookWidget {
  const ChooseProductSizeBottomSheet({
    super.key,
    required this.sizes,
  });

  final List<String> sizes;

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selectedSizeIndex = useState(0);
    return Container(
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
                  (size) => selectedSizeIndex.value == sizes.indexOf(size)
                      ? SelectedSizeBtn(size: size)
                      : GestureDetector(
                          onTap: () =>
                              selectedSizeIndex.value = sizes.indexOf(size),
                          child: UnSelectedSizeBtn(
                            size: size,
                          ),
                        ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class UnSelectedSizeBtn extends StatelessWidget {
  final String size;
  const UnSelectedSizeBtn({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class SelectedSizeBtn extends StatelessWidget {
  final String size;
  const SelectedSizeBtn({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 2,
      ),
      alignment: Alignment.center,
      width: 120,
      height: 50,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
      ),
      child: Text(
        size,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    );
  }
}
