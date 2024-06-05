import 'package:e_commerce_app/core/images/assets.dart';
import 'package:e_commerce_app/features/filter/presenation/controllers/cubit/filter_cubit.dart';
import 'package:e_commerce_app/features/product_details/presenation/data/models/product_model.dart';
import 'package:e_commerce_app/features/shop/presentation/views/shop_filter_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home/presentation/widgets/sale_list_item_widget.dart';

class SubcategoryView extends StatefulWidget {
  const SubcategoryView({super.key});

  @override
  State<SubcategoryView> createState() => _SubcategoryViewState();
}

class _SubcategoryViewState extends State<SubcategoryView> {
  List<String> categoryOfTops = ["T-shirts", "Crop tops", "Blouses", "Shirts"];
  List<String> sortTypes = [
    "Popular",
    "Newest",
    "Customer review",
    "Price: lowest to high",
    "Price: highest to low"
  ];
  List<ProductModel> products = [
    ProductModel(
      title: 'Short dress',
      description:
          'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
      price: 20.0,
      ratings: 4.5,
      image: Assets.assetsImagesSmallbanner,
      category: 'Women',
      sizes: [
        'S',
        'M',
        'L',
        'XL',
      ],
      colors: [
        Colors.black,
        Colors.grey,
        Colors.white,
      ],
    ),
    ProductModel(
      title: 'Short dress',
      description:
          'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
      price: 20.0,
      ratings: 4.5,
      image: Assets.assetsImagesSmallbanner,
      category: 'Women',
      sizes: [
        'S',
        'M',
        'L',
        'XL',
      ],
      colors: [
        Colors.grey,
        Colors.white,
      ],
    ),
    ProductModel(
      title: 'Short dress',
      description:
          'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
      price: 20.0,
      ratings: 4.5,
      image: Assets.assetsImagesSmallbanner,
      category: 'Women',
      sizes: [
        'S',
        'M',
        'L',
        'XL',
      ],
      colors: [
        Colors.grey,
        Colors.white,
      ],
    ),
    ProductModel(
      title: 'Short dress',
      description:
          'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
      price: 20.0,
      ratings: 4.5,
      image: Assets.assetsImagesSmallbanner,
      category: 'Women',
      sizes: [
        'S',
        'M',
        'L',
        'XL',
      ],
      colors: [
        Colors.grey,
        Colors.white,
      ],
    ),
    ProductModel(
      title: 'Short dress',
      description:
          'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
      price: 20.0,
      ratings: 4.5,
      image: Assets.assetsImagesSmallbanner,
      category: 'Women',
      sizes: [
        'S',
        'M',
        'L',
        'XL',
      ],
      colors: [
        Colors.grey,
        Colors.white,
      ],
    ),
    ProductModel(
      title: 'Short dress',
      description:
          'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
      price: 20.0,
      ratings: 4.5,
      image: Assets.assetsImagesSmallbanner,
      category: 'Women',
      sizes: [
        'S',
        'M',
        'L',
        'XL',
      ],
      colors: [
        Colors.grey,
        Colors.white,
      ],
    ),
    ProductModel(
      title: 'Short dress',
      description:
          'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
      price: 20.0,
      ratings: 4.5,
      image: Assets.assetsImagesSmallbanner,
      category: 'Women',
      sizes: [
        'S',
        'M',
        'L',
        'XL',
      ],
      colors: [
        Colors.grey,
        Colors.white,
      ],
    ),
    ProductModel(
      title: 'Short dress',
      description:
          'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
      price: 20.0,
      ratings: 4.5,
      image: Assets.assetsImagesSmallbanner,
      category: 'Women',
      sizes: [
        'S',
        'M',
        'L',
        'XL',
      ],
      colors: [
        Colors.black,
        Colors.grey,
        Colors.white,
      ],
    ),
  ];
  String chosenSortType = "Price: lowest to high";

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
        title: const Text(
          "Women's tops",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: "Metropolis",
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 30,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: categoryOfTops.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff222222),
                                    borderRadius: BorderRadius.circular(29),
                                  ),
                                  child: Center(
                                    child: Text(
                                      categoryOfTops[index],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: "Metropolis",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ShopFilterView()));
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.filter_list_outlined),
                          Text("Filter"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 350,
                              width: MediaQuery.sizeOf(context).width,
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                        child: Container(
                                      width: 60,
                                      height: 6,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xff9B9B9B)),
                                    )),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Center(
                                      child: Text(
                                        'Sort by',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: "Metropolis",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: sortTypes.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 16.0),
                                          child: InkWell(
                                            child: Text(
                                              sortTypes[index],
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontFamily: "Metropolis",
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            onTap: () {
                                              setState(() {});
                                              chosenSortType = sortTypes[index];
                                              Navigator.pop(context);
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.keyboard_double_arrow_up_sharp),
                          Text(chosenSortType),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.grid_on_outlined))
                  ],
                ),
                BlocBuilder<FilterCubit, FilterState>(
                  builder: (context, state) {
                    List<ProductModel> temp = products;
                    if (context
                        .read<FilterCubit>()
                        .colorsFilterList
                        .isNotEmpty) {
                      temp = products
                          .where(
                            (element) => element.colors.contains(
                              context
                                  .read<FilterCubit>()
                                  .colorsFilterList
                                  .first,
                            ),
                          )
                          .toList();
                    } else {
                      temp = products;
                    }
                    return GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 0.6,
                        ),
                        itemCount: temp.length,
                        itemBuilder: (context, index) {
                          return Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              width: MediaQuery.sizeOf(context).width / 2,
                              height: MediaQuery.sizeOf(context).height / 2,
                              child: LayoutBuilder(
                                  builder: (context, constraints) {
                                return SaleListItemWidget(
                                  constraints: constraints,
                                );
                              }));
                        });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
