import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class ChooseProductColorBottomSheet extends HookWidget {
  const ChooseProductColorBottomSheet({
    super.key,
    required this.colors,
  });

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selectedColorIndex = useState(0);
    return Container(
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
                  (color) => selectedColorIndex.value == colors.indexOf(color)
                      ? SelectedColorBtn(color: color)
                      : GestureDetector(
                          onTap: () =>
                              selectedColorIndex.value = colors.indexOf(color),
                          child: UnSelectedColorBtn(
                            color: color,
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

class UnSelectedColorBtn extends StatelessWidget {
  final Color color;
  const UnSelectedColorBtn({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class SelectedColorBtn extends StatelessWidget {
  final Color color;
  const SelectedColorBtn({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          color: color == Colors.white ? Colors.black : Colors.white,
        ),
      ),
      child: Icon(
        Icons.check,
        color: color == Colors.white ? Colors.black : Colors.white,
      ),
    );
  }
}
