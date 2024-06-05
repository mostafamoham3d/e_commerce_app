import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../../../../core/images/assets.dart';

class DeliveryMethodsListView extends HookWidget {
  const DeliveryMethodsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selecetedIndex = useState(0);
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => selecetedIndex.value == index
          ? const SelectedDelvieryMethodListItem()
          : GestureDetector(
              onTap: () => selecetedIndex.value = index,
              child: const UnselectedDelvieryMethodListItem(),
            ),
      separatorBuilder: (context, index) => const Gap(20),
      itemCount: 5,
    );
  }
}

class UnselectedDelvieryMethodListItem extends StatelessWidget {
  const UnselectedDelvieryMethodListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(Assets.assetsImagesFedex),
          const Text(
            ' 2-3 days',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}

class SelectedDelvieryMethodListItem extends StatelessWidget {
  const SelectedDelvieryMethodListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          border: Border.all(
            width: 1,
            color: AppColors.mainColor,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(Assets.assetsImagesFedex),
          const Text(
            ' 2-3 days',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
