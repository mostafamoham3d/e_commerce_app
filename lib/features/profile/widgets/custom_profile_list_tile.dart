import 'package:flutter/material.dart';

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile(
      {super.key, required this.title, required this.subTitle, this.onTap});

  final String title;
  final String subTitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        onTap:onTap ,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: "Metropolis",
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: const TextStyle(
            color: Color(0xff9B9B9B),
            fontSize: 12,
            fontFamily: "Metropolis",
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Color(0xff9B9B9B),
          size: 20,
        ),
      ),
    );
  }
}
