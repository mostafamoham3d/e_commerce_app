part of 'cart_cubit.dart';


 class CartState {
   List<CartItemModel> cartItems;

  CartState({required this.cartItems});
}

 class CartInitial extends CartState {
  CartInitial({required super.cartItems});
}
 class CartItemsChanged extends CartState {
   
     List<CartItemModel> cart;

  CartItemsChanged({required this.cart}) : super(cartItems: cart);
}
