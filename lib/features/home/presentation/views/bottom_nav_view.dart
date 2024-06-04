import 'package:e_commerce_app/features/home/presentation/views/home_view.dart';
import 'package:e_commerce_app/features/shop/presentation/views/shop_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/utils/app_colors.dart';

class BottomNavView extends HookWidget {
  static List<Widget> screens = [
    const HomeView(),
    const ShopView(),
    Container(),
    Container(),
    Container(),
  ];
  const BottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> index = useState(0);
    return Scaffold(
      body: screens[index.value],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => index.value = value,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        currentIndex: index.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_sharp),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
