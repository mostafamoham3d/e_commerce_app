import 'package:flutter/material.dart';

import 'sale_list_item_widget.dart';

class SaleItemsListView extends StatelessWidget {
  const SaleItemsListView({
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
          // height: context.height * .5,
          width: 200,
          child: LayoutBuilder(builder: (context, constraints) {
            return SaleListItemWidget(
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
