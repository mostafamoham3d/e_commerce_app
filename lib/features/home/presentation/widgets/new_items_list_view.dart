import 'package:e_commerce_app/features/home/presentation/widgets/new_list_item_widget.dart';
import 'package:flutter/material.dart';


class NewItemsListView extends StatelessWidget {
  const NewItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          width: 200,
          child: LayoutBuilder(builder: (context, constraints) {
            return NewListItemWidget(
              constraints: constraints,
            );
          }),
        );
      },
      itemCount: 10,
      scrollDirection: Axis.horizontal,
    );
  }
}
