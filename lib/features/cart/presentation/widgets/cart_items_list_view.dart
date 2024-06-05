import 'package:e_commerce_app/features/cart/presentation/controllers/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'cart_list_item_widget.dart';

class CartItemsListView extends StatelessWidget {
  const CartItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state.cartItems.isEmpty) {
          return const SizedBox();
        }
        return ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => const Gap(10),
          itemCount: state.cartItems.length,
          itemBuilder: (context, index) =>  CartListItemWidget(
            cartItemModel: state.cartItems[index],
          ),
        );
      },
    );
  }
}
