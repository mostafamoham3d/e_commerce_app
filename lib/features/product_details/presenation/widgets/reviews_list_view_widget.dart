import 'package:e_commerce_app/features/product_details/presenation/widgets/review_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ReviewsListViewWidget extends StatelessWidget {
  const ReviewsListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) => const Gap(10),
      itemBuilder: (context, index) => const ReviewListItemWidget(),
      itemCount: 10,
    );
  }
}