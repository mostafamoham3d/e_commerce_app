import 'package:e_commerce_app/features/filter/presenation/controllers/cubit/filter_cubit.dart';
import 'package:e_commerce_app/features/shop/presentation/widgets/shop_filter_widgets/custom_bottom_sheet.dart';
import 'package:e_commerce_app/features/shop/presentation/widgets/shop_filter_widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../widgets/shop_filter_widgets/custom_title.dart';

class ShopFilterView extends StatefulWidget {
  const ShopFilterView({super.key});

  @override
  State<ShopFilterView> createState() => _ShopFilterViewState();
}

class _ShopFilterViewState extends State<ShopFilterView> {
  SfRangeValues _values = const SfRangeValues(40.0, 170.0);

  List<int> colorsName = [
    Colors.black.value,
    0xffF6F6F6,
    0xffB82222,
    0xffBEA9A9,
    0xffE2BB8D,
    0xff151867
  ];
  List<String> sizes = [
    "XS",
    "S",
    "M",
    "L",
    "XL",
  ];
  List<String> category = [
    "All",
    "Women",
    "Men",
    "Boys",
    "Girls",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 25,
            )),
        elevation: 3,
        title: const Text(
          "Filters",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: "Metropolis",
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      bottomSheet: const CustomBottomSheet(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomTitle(title: "Price Range"),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: SfRangeSlider(
                activeColor: const Color(0xffDB3022),
                min: 0.0,
                max: 240.0,
                values: _values,
                interval: 40,
                showTicks: false,
                showLabels: true,
                enableTooltip: false,
                minorTicksPerInterval: 0,
                onChanged: (SfRangeValues values) {
                  setState(() {
                    _values = values;
                  });
                },
              ),
            ),
            const CustomTitle(title: "Colors"),
            Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: BlocBuilder<FilterCubit, FilterState>(
                builder: (context, state) {
                  return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: colorsName.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 28),
                          child: GestureDetector(
                            onTap: () {
                              if (context
                                  .read<FilterCubit>()
                                  .colorsFilterList
                                  .contains(
                                    Color(
                                      colorsName[index],
                                    ),
                                  )) {
                                context
                                    .read<FilterCubit>()
                                    .removeFromColorFilterList(
                                      Color(
                                        colorsName[index],
                                      ),
                                    );
                              } else {
                                context
                                    .read<FilterCubit>()
                                    .addToColorFilterList(
                                      Color(
                                        colorsName[index],
                                      ),
                                    );
                              }
                            },
                            child: Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                color: Color(colorsName[index]),
                                shape: BoxShape.circle,
                              ),
                              child: context
                                      .read<FilterCubit>()
                                      .colorsFilterList
                                      .contains(
                                        Color(
                                          colorsName[index],
                                        ),
                                      )
                                  ? const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    )
                                  : null,
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
            const CustomTitle(title: "Sizes"),
            Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: sizes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 24, bottom: 30, top: 30),
                      child: Container(
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xff9B9B9B))),
                        child: Center(
                          child: Text(
                            sizes[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Metropolis",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const CustomTitle(title: "Category"),
            Container(
              padding: const EdgeInsets.all(16),
              height: 150,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2.5,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xff9B9B9B))),
                    child: Center(
                      child: Text(
                        category[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const CustomListTile(),
            const SizedBox(
              height: 104,
            ),
          ],
        ),
      ),
    );
  }
}
