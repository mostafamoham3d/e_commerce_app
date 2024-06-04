import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

import '../../../../core/images/assets.dart';

class ReviewListItemWidget extends StatelessWidget {
  const ReviewListItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: context.width,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28, top: 28),
            child: Container(
              width: context.width,
              padding: const EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Helene Moore',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        glowRadius: 0,
                        updateOnDrag: false,
                        itemSize: 15,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      const Text(
                        'June 5, 2019',
                        style: TextStyle(
                            color: Colors.grey, fontSize: 11),
                      )
                    ],
                  ),
                  const Gap(15),
                  const Text(
                    '''The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.''',
                  ),
                  const Spacer(),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Helpful',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                        ),
                        Gap(5),
                        Icon(
                          Icons.thumb_up_sharp,
                          color: Colors.grey,
                          size: 12,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              Assets.assetsImagesSmallbanner,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}