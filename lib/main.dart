import 'package:e_commerce_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:e_commerce_app/features/favorite/presentation/views/favorite_view.dart';
import 'package:e_commerce_app/features/profile/views/profile_view.dart';
import 'package:e_commerce_app/features/shop/presentation/views/shop_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Metropolis",
        bottomSheetTheme: const BottomSheetThemeData(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const ProfileView(),
    );
  }
}
