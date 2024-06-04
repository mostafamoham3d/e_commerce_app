import 'package:e_commerce_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:e_commerce_app/features/shop/presentation/views/subcategory_view.dart';
import 'package:flutter/material.dart';

class CategoryTypesView extends StatefulWidget {
  const CategoryTypesView({super.key});

  @override
  State<CategoryTypesView> createState() => _CategoryTypesViewState();
}

class _CategoryTypesViewState extends State<CategoryTypesView> {

  List<String> subCategories = [
    "Tops",
    "Shirts & Blouses",
    "Cardigans & Sweaters",
    "Knitwear",
    "Blazers",
    "Outerwear",
    "Pants",
    "Jeans",
    "Shorts",
    "Skirts",
    "Dresses"
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(label: "VIEW ALL ITEMS", onPressed: () {}),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text("Choose Categoty", style: TextStyle(
                fontSize: 16,
                fontFamily: "Matropolis",
                color: Color(0xff9B9B9B),
              ),),
            ),
            ListView.builder(
              shrinkWrap: true,
                itemCount:subCategories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        GestureDetector(
                          onTap:(){if(subCategories[index]=="Tops"){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SubcategoryView()));
                          }},
                          child: Text(subCategories[index] ,style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.w500,
                          ), ),
                        ),
                       // const Spacer(),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
