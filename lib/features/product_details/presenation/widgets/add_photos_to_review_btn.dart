import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class AddPhotosToReviewBtn extends StatelessWidget {
  const AddPhotosToReviewBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 8,
      ),
      height: 102,
      width: 102,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: const Color(0xffFFFFFF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.mainColor,
            ),
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
          const Text(
            'Add your photos',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

