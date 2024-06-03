import 'package:flutter/material.dart';

class NewHeaderWidget extends StatelessWidget {
  const NewHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      height: 50,
      child: const ListTile(
        subtitle: Text(
          'Super summer sale',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        title: Text(
          'New',
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
