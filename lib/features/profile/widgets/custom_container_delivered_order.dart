import 'package:e_commerce_app/features/profile/views/order_details_view.dart';
import 'package:flutter/material.dart';

class CustomContainerDeliveredOrder extends StatelessWidget {
  const CustomContainerDeliveredOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Container(
        padding: const EdgeInsets.all(19),
        width: 343,
        height: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order №1947034",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "05-12-2019",
                  style: TextStyle(
                    color: Color(0xff9B9B9B),
                    fontSize: 14,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(height: 8,),
            RichText(
                text: const TextSpan(
                    text: "Tracking number:",
                    style: TextStyle(
                      color: Color(0xff9B9B9B),
                      fontSize: 14,
                      fontFamily: "Metropolis",
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                  TextSpan(
                    text: "IW3475453455",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Metropolis",
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ])),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: const TextSpan(
                        text: "Quantity:",
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 14,
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                      TextSpan(
                        text: "3",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ])),
                RichText(
                    text: const TextSpan(
                        text: "Total Amount:",
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 14,
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                      TextSpan(
                        text: "112\$",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ])),
              ],
            ),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const OrderDetailsView() ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,

                    ),
                    child: const Text(
                      "Details",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                const Text(
                  "Delivered",
                  style: TextStyle(
                    color: Color(0xff2AA952),
                    fontSize: 14,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
