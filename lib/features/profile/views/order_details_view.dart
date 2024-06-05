import 'package:flutter/material.dart';

import '../../shop/presentation/widgets/shop_filter_widgets/custom_button_for_bottom_sheet.dart';
import '../widgets/custom_container_order_details.dart';

class OrderDetailsView extends StatefulWidget {
  const OrderDetailsView({super.key});

  @override
  State<OrderDetailsView> createState() => _OrderDetailsViewState();
}

class _OrderDetailsViewState extends State<OrderDetailsView> {
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
          "Order Details",
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
          child: Column(
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
                      fontWeight: FontWeight.w600,
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
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "3 items",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Metropolis",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomContainerOrderDetails(),
              const CustomContainerOrderDetails(),
              const CustomContainerOrderDetails(),
              const Text(
                "Order information",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Metropolis",
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shipping Address:",
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 14,
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "Payment method:",
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 14,
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "Delivery method:",
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 14,
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "Discount:",
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 14,
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "Total Amount:",
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 14,
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3 Newbridge Court ,Chino Hills,CA 91709, United States",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "**** **** **** 3947",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          "FedEx, 3 days, 15\$",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          "10%, Personal promo code",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          "133\$",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButtonForBottomSheet(
                    label: 'Reorder',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    backGroundColor: Colors.white,
                    fontColor: Colors.black,
                  ),
                  CustomButtonForBottomSheet(
                    label: 'Leave Feedback',
                    onPressed: () {

                    },
                    backGroundColor: const Color(0xffd32626),
                    fontColor: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
