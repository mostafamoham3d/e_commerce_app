import 'package:flutter/material.dart';
class CustomButtonForBottomSheet extends StatelessWidget {
  const CustomButtonForBottomSheet({super.key, required this.label, required this.onPressed, required this.backGroundColor, required this.fontColor});
  final String label;
  final void Function()? onPressed;
  final Color backGroundColor;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              elevation: 10, backgroundColor: backGroundColor),
          child:  Text(
            label,
            style: TextStyle(
              color: fontColor,
              fontSize: 14,
              fontFamily: "Metropolis",
              fontWeight: FontWeight.w500,
            ),
          )),
    );
  }
}
