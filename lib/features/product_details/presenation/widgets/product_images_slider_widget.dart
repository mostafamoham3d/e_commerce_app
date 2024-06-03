import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/features/product_details/presenation/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductImagesSliderWidget extends StatelessWidget {
  const ProductImagesSliderWidget({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 2,
      itemBuilder: (context, index, number) => Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 2,
        ),
        child: Image.asset(
          productModel.image,
          fit: BoxFit.fill,
        ),
      ),
      options: CarouselOptions(
        autoPlay: true,
        height: context.height * .3,
      ),
    );
  }
}
