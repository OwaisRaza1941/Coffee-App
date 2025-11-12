import 'package:coffee_app/app/constants/styles.dart';
import 'package:coffee_app/app/screens/main_screen.dart';
import 'package:coffee_app/app/screens/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/images/onbarding_coffee.png',
                width: double.infinity,
                fit: BoxFit.contain,
              ),

              Text("Fall in Love with", style: Styles.textStyleOnboardingPage),
            ],
          ),

          Text(
            "Coffee in Blissful\nDelight!",
            style: Styles.textStyleOnboardingPage,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),

          Text(
            "Welcome to our cozy coffee corner, where\nevery cup is a delight for you.",
            style: GoogleFonts.sora(color: Colors.grey),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 25),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButtonCustom(
              buttonText: 'Get Started',
              widht: double.infinity,
              height: 56,
              voidCallback: () {
                Get.to(MainScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
