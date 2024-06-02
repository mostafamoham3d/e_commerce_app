import 'package:flutter/material.dart';

class BottomActions extends StatelessWidget {
  const BottomActions({super.key, required this.otherMethodeSentence});
  final String otherMethodeSentence;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Center(
            child: Text(
              otherMethodeSentence,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Metropolis",
                fontWeight: FontWeight.w500,
              ),
            )),
        SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 64,
                width: 92,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Image.asset("assets/images/google.png" , scale: 1.7,),
              ),
            ),
            const SizedBox(width: 16,),
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 64,
                width: 92,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Image.asset("assets/images/facebook.png" , scale: 1.7,) ,
              ),
            ),
          ],
        )
      ],
    );
  }
}
