import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key, required this.sentence, required this.onTap});
  final String sentence;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              const Expanded(child: SizedBox()),
              Text(
                sentence,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Metropolis",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              const Icon(
                Icons.arrow_forward_outlined,
                size: 24,
                color: Color(0xffDB3022),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
