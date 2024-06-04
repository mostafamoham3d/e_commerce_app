import 'package:e_commerce_app/features/product_details/presenation/data/models/product_model.dart';
import 'package:e_commerce_app/features/product_details/presenation/views/product_details_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/images/assets.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({
    super.key,
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
      child: Container(
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
    );
  }
}
