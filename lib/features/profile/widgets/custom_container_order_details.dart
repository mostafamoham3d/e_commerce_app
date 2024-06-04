import 'package:flutter/material.dart';

class CustomContainerOrderDetails extends StatelessWidget {
  const CustomContainerOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Container(
        width: 343,
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset("assets/images/order_details.png"),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Pullover",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 9,),
                    const Text(
                      "Mango",
                      style: TextStyle(
                        color: Color(0xff9B9B9B),
                        fontSize: 14,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 9,),
                    Row(
                      children: [
                        RichText(
                            text: const TextSpan(
                                text: "Color:",
                                style: TextStyle(
                                  color: Color(0xff9B9B9B),
                                  fontSize: 14,
                                  fontFamily: "Metropolis",
                                  fontWeight: FontWeight.w500,
                                ),
                                children: [
                              TextSpan(
                                text: "Gray",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "Metropolis",
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ])),
                        const SizedBox(
                          width: 24,
                        ),
                        RichText(
                            text: const TextSpan(
                                text: "Size:",
                                style: TextStyle(
                                  color: Color(0xff9B9B9B),
                                  fontSize: 14,
                                  fontFamily: "Metropolis",
                                  fontWeight: FontWeight.w500,
                                ),
                                children: [
                              TextSpan(
                                text: "L",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "Metropolis",
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ])),
                      ],
                    ),
                    const SizedBox(height: 9,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: const TextSpan(
                                text: "Units:",
                                style: TextStyle(
                                  color: Color(0xff9B9B9B),
                                  fontSize: 14,
                                  fontFamily: "Metropolis",
                                  fontWeight: FontWeight.w500,
                                ),
                                children: [
                              TextSpan(
                                text: "1",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "Metropolis",
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ])),
                        const Text(
                          "51\$",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
