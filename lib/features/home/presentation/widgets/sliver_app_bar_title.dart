import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/images/assets.dart';

class SliverAppBarTitle extends StatelessWidget {
  const SliverAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.bottomLeft,
        children: [
          SizedBox(
            width: context.width,
            child: Image.asset(
              Assets.assetsImagesSmallbanner,
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Fashion Sale',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 36,
              ),
            ),
          ),
        ],
      );
  }
}

