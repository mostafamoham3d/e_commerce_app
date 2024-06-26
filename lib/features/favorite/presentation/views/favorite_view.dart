import 'package:flutter/material.dart';

import '../../../shop/presentation/views/shop_filter_view.dart';
import '../widgets/favorite_item_widget.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  List<String> categoryOfTops = ["Summer", "T-shirts", "Blouses", "Shirts"];
  List<String> sortTypes = [
    "Popular",
    "Newest",
    "Customer review",
    "Price: lowest to high",
    "Price: highest to low"
  ];

  String chosenSortType = "Price: lowest to high";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Favorites",
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
              onPressed: () {},
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
                GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.6,
                    ),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          width: MediaQuery.sizeOf(context).width / 2,
                          height: MediaQuery.sizeOf(context).height / 2,
                          child: LayoutBuilder(builder: (context, constraints) {
                            return FavoriteItemWidget(
                              constraints: constraints,
                            );
                          }));
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
