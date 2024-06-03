import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class WriteAReviewTextField extends StatelessWidget {
  const WriteAReviewTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        12,
      ),
      height: context.height * .2,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Write a review',
        ),
      ),
    );
  }
}

