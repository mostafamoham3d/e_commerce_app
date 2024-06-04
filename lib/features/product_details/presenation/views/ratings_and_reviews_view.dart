import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/reviews_list_view_widget.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/show_photo_in_reviews_check_box.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/write_a_review_btn.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RatingsAndReviewsView extends StatelessWidget {
  const RatingsAndReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(),
        ),
      ),
      child: Scaffold(
        bottomSheet: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(.2),
              Colors.white,
            ],
          )),
          height: 100,
          width: context.width,
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Ratings and Reviews"),
        ),
        floatingActionButton: const WriteAReviewBtn(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: context.height * .15,
                  child: const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "4.5",
                            style: TextStyle(
                              fontSize: 44,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "20 ratings",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            RatingsBuilder(
                              rating: 5,
                              number: 12,
                            ),
                            RatingsBuilder(
                              rating: 4,
                              number: 10,
                            ),
                            RatingsBuilder(
                              rating: 3,
                              number: 4,
                            ),
                            RatingsBuilder(
                              rating: 2,
                              number: 2,
                            ),
                            RatingsBuilder(
                              rating: 1,
                              number: 0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '8 Reviews',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    ShowPhotoInReviewsCheckBox(),
                  ],
                ),
                const ReviewsListViewWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RatingsBuilder extends StatelessWidget {
  final int rating;
  final int number;
  const RatingsBuilder({super.key, required this.rating, required this.number});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Expanded(
              child: Row(
                children: List.generate(
                  rating,
                  (index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          Expanded(
            child: LinearProgressIndicator(
              backgroundColor: Colors.transparent,
              value: rating / 5,
              color: AppColors.mainColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  12,
                ),
              ),
              minHeight: 8,
            ),
          ),
          const Gap(10),
          Text('$number'),
        ],
      ),
    );
  }
}
