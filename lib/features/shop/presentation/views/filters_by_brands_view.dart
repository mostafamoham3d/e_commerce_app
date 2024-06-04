import 'package:e_commerce_app/features/shop/presentation/widgets/shop_filter_widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';

class FiltersByBrandsView extends StatefulWidget {
  const FiltersByBrandsView({super.key});

  @override
  State<FiltersByBrandsView> createState() => _FiltersByBrandsViewState();
}

class _FiltersByBrandsViewState extends State<FiltersByBrandsView> {
  List<String> brands = [
    "adidas",
    "adidas Originals",
    "Blend",
    "Boutique Moschino",
    "Champion",
    "Diesel",
    "Jack & Jones",
    "Naf Naf",
    "Red Valentino",
    "s.Oliver"
  ];

  bool checkedValue = false;

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
          "Brand",
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color(0xff9B9B9B),
                      size: 18,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        color: Color(0xff9B9B9B),
                        fontSize: 16,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: brands.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(
                      brands[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    value: checkedValue,
                    onChanged: (value) {
                    },
                  );
                })
          ],
        ),
      ),
    );
  }
}
