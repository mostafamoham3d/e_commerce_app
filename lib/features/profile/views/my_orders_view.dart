import 'package:flutter/material.dart';

import '../widgets/custom_container_delivered_order.dart';

class MyOrdersView extends StatefulWidget {
  const MyOrdersView({super.key});

  @override
  State<MyOrdersView> createState() => _MyOrdersViewState();
}

class _MyOrdersViewState extends State<MyOrdersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 25,
            )),
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
      body: Padding(padding: EdgeInsets.all(16),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "My Orders",
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontFamily: "Metropolis",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(29)
                  ),
                  child:  const Center(
                    child: Text("Delivered",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w600,
                      ),),
                  ),
                ),
                const Text("Processing",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w600,
                  ),),
                const Text("Cancelled",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w600,
                  ),),
              ],
            ),
            const SizedBox(height: 30,),
            const CustomContainerDeliveredOrder(),
            const CustomContainerDeliveredOrder(),
            const CustomContainerDeliveredOrder(),
          ],
        ),),
    );
  }
}
