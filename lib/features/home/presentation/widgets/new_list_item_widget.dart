import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/images/assets.dart';

class NewListItemWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const NewListItemWidget({
    super.key,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                height: constraints.maxHeight * .65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      Assets.assetsImagesSmallbanner,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 6,
                ),
                width: 140,
                child: Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      const Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                        size: 18,
                      ),
                    const Text(
                      '(10)',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              const Text(
                'Dorothy Perkins',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const Text(
                'Evening Dress',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '25\$',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 60,
            height: 40,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: const Text(
              'New',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: constraints.maxHeight * .58,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            height: constraints.maxHeight * .125,
            width: constraints.maxHeight * .125,
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
            child: const Icon(
              Icons.favorite_border,
            ),
          ),
        )
      ],
    );
  }
}
