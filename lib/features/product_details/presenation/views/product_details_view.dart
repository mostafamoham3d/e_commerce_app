import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/features/home/presentation/widgets/toggle_product_favorite_btn.dart';
import 'package:e_commerce_app/features/product_details/presenation/data/models/product_model.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/choose_product_color_btn.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/choose_product_size_btn.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/product_images_slider_widget.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/product_rating_widget.dart';
import 'package:e_commerce_app/features/product_details/presenation/widgets/product_title_and_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../home/presentation/widgets/new_header_widget.dart';
import '../../../home/presentation/widgets/new_items_list_view.dart';
import '../widgets/add_to_cart_btn.dart';

class ProductDetailsView extends StatelessWidget {
  final ProductModel productModel;
  const ProductDetailsView({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
            ),
          ),
        ],
        title: Text(productModel.title),
      ),
      bottomSheet: const AddToCartBtn(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ProductImagesSliderWidget(productModel: productModel),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ChooseProductSizeBtn(
                      sizes: productModel.sizes,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ChooseProductColorBtn(
                      colors: productModel.colors,
                    ),
                  ),
                  const Expanded(
                    child: ToggleProductFavoriteBtn(
                      size: 46,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ProductTitleAndPriceWidget(productModel: productModel),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductRatingWidget(),
                  const Gap(10),
                  Text(
                    productModel.description,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Gap(10),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              title: const Text('Shipping info'),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              shape: Border(
                top: BorderSide(
                    color: const Color(0xff9B9B9B).withOpacity(.4), width: 1),
                bottom: BorderSide(
                    color: const Color(0xff9B9B9B).withOpacity(.4), width: 1),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              title: const Text('Support'),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              shape: Border(
                bottom: BorderSide(
                    color: const Color(0xff9B9B9B).withOpacity(.4), width: 1),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const ListTile(
                  title: Text(
                    'You can also like this',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  trailing: Text(
                    '12 items',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * .5,
                  child: const NewItemsListView(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
