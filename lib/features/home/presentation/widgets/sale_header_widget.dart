import 'package:flutter/material.dart';

class SaleHeaderWidget extends StatelessWidget {
  const SaleHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      height: 60,
      child: const ListTile(
        subtitle: Text(
          'Super summer sale',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        title: Text(
          'Sale',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        trailing: Text(
          'View all',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
