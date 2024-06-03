import 'package:flutter/material.dart';
class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 34,
            fontFamily: "Metropolis",
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 73,
        ),
      ],
    );
  }
}
