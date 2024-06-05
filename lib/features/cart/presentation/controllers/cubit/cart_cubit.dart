import 'package:e_commerce_app/features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/features/product_details/presenation/data/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit()
      : super(
          CartInitial(
            cartItems: [],
          ),
        );

  addToCart(ProductModel product) {
    List<CartItemModel> cartItems = state.cartItems;
    int index = cartItems
        .indexWhere((element) => element.productModel.title == product.title);

    if (index == -1) {
      cartItems.add(
        CartItemModel(
          productModel: product,
          quantity: 1,
        ),
      );
    } else {
      cartItems[index].quantity = cartItems[index].quantity + 1;
    }
    emit(
      CartItemsChanged(
        cart: cartItems,
      ),
    );
  }

  removeFromCart(ProductModel product) {
    final cartItems = state.cartItems;

    CartItemModel cartItemModel = cartItems
        .firstWhere((element) => element.productModel.title == product.title);

    cartItemModel.quantity = cartItemModel.quantity - 1;

    if (cartItemModel.quantity == 0) {
      cartItems.remove(cartItemModel);
    }

    emit(
      CartItemsChanged(
        cart: cartItems,
      ),
    );
  }
}
