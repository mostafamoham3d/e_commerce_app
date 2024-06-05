import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ToggleProductCartBtn extends HookWidget {
  const ToggleProductCartBtn({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        alignment: Alignment.center,
        height: size,
        width: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xffDB3022),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: const Icon(
          Icons.shopping_bag_rounded , color: Colors.white,
        ),
      ),
    );
  }
}
