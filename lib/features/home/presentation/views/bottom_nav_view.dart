import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/features/home/presentation/widgets/sale_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/custom_sliver_app_bar.dart';
import '../widgets/sale_items_list_view.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(),
          const SliverToBoxAdapter(
            child: SaleHeaderWidget(),
          ),
          const SliverToBoxAdapter(
            child: Gap(15),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: context.height * .5,
              child: const SaleItemsListView(),
            ),
          ),
        ],
      ),
    );
  }
}

