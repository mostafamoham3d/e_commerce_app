import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/add_photos_to_review_btn.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/send_review_btn.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/write_a_review_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import 'add_rating_to_product_widget.dart';

class WriteAReviewBottomSheet extends StatelessWidget {
  const WriteAReviewBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      height: context.height * .75,
      width: context.width,
      child: const Column(
        children: [
          Text(
            'What is you\'r rate?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Gap(20),
          AddRatingToProductWidget(),
          Gap(25),
          Text(
            '''Please share your opinion
    about the product''',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Gap(15),
          WriteAReviewTextField(),
          Gap(25),
          Align(
            alignment: Alignment.centerLeft,
            child: AddPhotosToReviewBtn(),
          ),
          Spacer(),
          SendReviewBtn(),
        ],
      ),
    );
  }
}
