import 'package:flutter/material.dart';

import '../../views/filters_by_brands_view.dart';
class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const FiltersByBrandsView()));
      },
      title: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        child: Text(
          "Brand",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: "Metropolis",
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
        size: 20,
      ),
      subtitle: const Text(
        "adidas Originals, Jack & Jones, s.Oliver",
        style: TextStyle(
          color: Color(0xff9B9B9B),
          fontSize: 11,
          fontFamily: "Metropolis",
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
