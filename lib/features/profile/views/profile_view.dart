import 'package:e_commerce_app/features/profile/views/my_orders_view.dart';
import 'package:e_commerce_app/features/profile/views/setting_view.dart';
import 'package:e_commerce_app/features/profile/widgets/custom_profile_list_tile.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: AppBar(
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "My Profile",
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontFamily: "Metropolis",
                fontWeight: FontWeight.w600,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 30,
                  child: SizedBox(
                      height: 64,
                      width: 64,
                      child: Image.asset(
                        "assets/images/img.png",
                      ))),
              title: const Text(
                "Matilda Brown",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "Metropolis",
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: const Text(
                "matildabrown@mail.com",
                style: TextStyle(
                  color: Color(0xff9B9B9B),
                  fontSize: 12,
                  fontFamily: "Metropolis",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            CustomProfileListTile(
              title: "My orders",
              subTitle: "Already have 12 orders",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyOrdersView()));
              },
            ),
            const CustomProfileListTile(
                title: "Payment methods", subTitle: "Visa  **34"),
            const CustomProfileListTile(
                title: "Promocodes", subTitle: "You have special promocodes"),
            const CustomProfileListTile(
                title: "My reviews", subTitle: "Reviews for 4 items"),
            CustomProfileListTile(
              title: "Settings",
              subTitle: "Notifications, password",
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SettingView()));
              },),
          ],
        ),
      ),
    );
  }
}
