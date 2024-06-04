import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.validator,
      this.obscureText  = false,});

  TextEditingController controller ;
  final String labelText;
  //final String errorText;
  final String? Function(String?)? validator;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: TextInputType.name,
          obscureText: obscureText,
          decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Colors.white,
              filled: true,
              labelText: labelText,
              labelStyle: const TextStyle(
                fontSize: 14,
                fontFamily: "Matropolis",
                color: Color(0xff9B9B9B),
              ))),
    );
  }
}
