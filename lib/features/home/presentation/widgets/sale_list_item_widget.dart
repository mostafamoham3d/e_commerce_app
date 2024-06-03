import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/features/home/presentation/widgets/toggle_product_favorite_btn.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/product_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/images/assets.dart';
import '../../../product_details/presenation/data/models/product_model.dart';
import '../../../product_details/presenation/views/product_details_view.dart';

class SaleListItemWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const SaleListItemWidget({
    super.key,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductDetailsView(
                productModel: ProductModel(
                  title: 'Short dress',
                  description:
                      'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
                  price: 20.0,
                  ratings: 4.5,
                  image: Assets.assetsImagesSmallbanner,
                  category: 'Women',
                  sizes: [
                    'S',
                    'M',
                    'L',
                    'XL',
                  ],
                  colors: [
                    Colors.black,
                    Colors.grey,
                    Colors.white,
                  ],
                ),
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: constraints.maxHeight * .65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        Assets.assetsImagesSmallbanner,
                      ),
                    ),
                  ),
                ),
                const ProductRatingWidget(),
                const Text(
                  'Dorothy Perkins',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                const Text(
                  'Evening Dress',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      '15\$',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Gap(10),
                    Text(
                      '12\$',
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 60,
            height: 40,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.mainColor,
            ),
            child: const Text(
              '-20%',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: constraints.maxHeight * .58,
          right: 0,
          child: ToggleProductFavoriteBtn(size: constraints.maxHeight * .125),
        )
      ],
    );
  }
}
