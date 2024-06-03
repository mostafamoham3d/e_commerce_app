import 'package:e_commerce_app/features/shop/presentation/views/category_types_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class ShopView extends StatefulWidget {
  const ShopView({super.key});

  @override
  State<ShopView> createState() => _ShopViewState();
}

const String categoryImageKey = "assets/images/shop/";

class _ShopViewState extends State<ShopView> {
  List<String> categoriesName = ["New", "Clothes", "Shoes", "Accessories"];
  List<String> categoriesImages = [
    "${categoryImageKey}new.png",
    "${categoryImageKey}clothes.png",
    "${categoryImageKey}shoes.png",
    "${categoryImageKey}accesories.png"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
            "Categories",
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
          bottom: const TabBar(
            indicatorColor: Color(0xffDB3022),
            indicatorWeight: 3.5,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                child: Text(
                  "Women",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Men",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Kids",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffDB3022)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SUMMER SALES",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: "Metropolis",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Up to 50% off",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Metropolis",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: categoriesName.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){if(index==1){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CategoryTypesView()));
                        }},
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 24),
                                  child: Text(
                                    categoriesName[index],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: "Metropolis",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Image.asset(categoriesImages[index]),
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
            Column(),
            Column(),
          ],
        ),
      ),
    );
  }
}
