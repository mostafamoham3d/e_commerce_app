import 'package:e_commerce_app/features/product_details/presenation/widgets/write_a_review_bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class WriteAReviewBtn extends StatelessWidget {
  const WriteAReviewBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: const Color(0xffF9F9F9),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        context: context,
        builder: (context) => const WriteAReviewBottomSheet(),
      ),
      child: Container(
        width: 175,
        height: 50,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppColors.mainColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.mainColor.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.edit,
              color: Colors.white,
            ),
            Text(
              'Write a review',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

