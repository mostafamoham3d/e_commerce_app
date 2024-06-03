import 'package:flutter/material.dart';
class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: "Metropolis",
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
