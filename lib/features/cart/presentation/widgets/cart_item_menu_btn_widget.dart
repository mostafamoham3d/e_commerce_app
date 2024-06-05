import 'package:flutter/material.dart';

class CartItemMenuBtnWidget extends StatelessWidget {
  const CartItemMenuBtnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        color: Colors.white,
        padding: EdgeInsets.zero,
        itemBuilder: (context) {
          return [
            const PopupMenuItem(
              value: 1,
              child: Text(
                'Add to favorites',
                style: TextStyle(
                    fontSize: 11, fontWeight: FontWeight.w400),
              ),
            ),
            const PopupMenuItem(
              value: 2,
              child: Text(
                'Delete from the list',
                style: TextStyle(
                    fontSize: 11, fontWeight: FontWeight.w400),
              ),
            ),
          ];
        });
  }
}
