import 'package:e_commerce_app/core/utils/app_constants.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/features/home/presentation/widgets/sliver_app_bar_title.dart';
import 'package:flutter/material.dart';

import 'sliver_app_bar_bg.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        expandedHeight: AppConstants.expandedAppBarHeight(context),
        collapsedHeight: AppConstants.collapsedAppBarHeight(context),
        pinned: true,
        snap: false,
        floating: false,
        flexibleSpace: LayoutBuilder(builder: (context, constraints) {
          int top =
              (constraints.biggest.height - MediaQuery.of(context).padding.top)
                  .ceil();

          return FlexibleSpaceBar(
            titlePadding: EdgeInsets.zero,
            expandedTitleScale: 1,
            title:
                top <= context.height * .3 ? const SliverAppBarTitle() : null,
            background: top > context.height * .3
                ? const SliverAppBarBackground()
                : null,
          );
        }));
  }
}
