import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ToggleProductFavoriteBtn extends HookWidget {
  const ToggleProductFavoriteBtn({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isFavorite = useState(false);
    return GestureDetector(
      onTap: () => isFavorite.value = !isFavorite.value,
      child: Container(
        alignment: Alignment.center,
        height: size,
        width: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Icon(
          isFavorite.value ? Icons.favorite : Icons.favorite_border,
        ),
      ),
    );
  }
}
