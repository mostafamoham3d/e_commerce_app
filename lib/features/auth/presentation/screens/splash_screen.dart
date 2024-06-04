import 'package:e_commerce_app/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: Image.asset("assets/images/splash_photo.png",
                  fit: BoxFit.cover)),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffDB3022)),
                  child: const Text(
                    "START",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: "Metropolis",
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ),
        ]),
      ),
    );
  }
}
