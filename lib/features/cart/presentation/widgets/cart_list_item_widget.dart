import 'package:e_commerce_app/features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/cart_item_menu_btn_widget.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/cart_list_item_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/images/assets.dart';

class CartListItemWidget extends StatelessWidget {
  final CartItemModel cartItemModel;
  const CartListItemWidget({
    super.key,
    required this.cartItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 105,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              height: 105,
              Assets.assetsImagesSmallbanner,
              fit: BoxFit.fill,
            ),
          ),
          const Gap(10),
          Expanded(
            flex: 2,
            child: CartListItemDetailsWidget(
              cartItemModel: cartItemModel,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const CartItemMenuBtnWidget(),
                Text(
                  '${cartItemModel.quantity * cartItemModel.productModel.price}\$',
                ),
              ],
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
