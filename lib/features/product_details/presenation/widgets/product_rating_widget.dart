import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/features/product_details/presenation/views/ratings_and_reviews_view.dart';
import 'package:flutter/material.dart';

class ProductRatingWidget extends StatelessWidget {
  const ProductRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        const RatingsAndReviewsView(),
      ),
      child: Container(
        margin: const EdgeInsets.only(
          top: 6,
        ),
        width: 140,
        child: Row(
          children: [
            for (int i = 0; i < 5; i++)
              const Icon(
                Icons.star,
                color: Colors.orangeAccent,
                size: 18,
              ),
            const Text(
              '(10)',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
