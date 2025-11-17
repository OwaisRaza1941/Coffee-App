import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/constants/styles.dart';
import 'package:coffee_app/app/screens/notifications_screen.dart';
import 'package:coffee_app/app/screens/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartBottomNavigationbar extends StatelessWidget {
  const CartBottomNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 210,
      padding: EdgeInsets.all(20),
      decoration: Styles.cartBottomNavigationStyle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cash/Walet',
            style: GoogleFonts.sora(fontWeight: FontWeight.bold, fontSize: 20),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/Wallet.png',
                  width: 25,
                  height: 25,
                  fit: BoxFit.cover,
                ),
              ),
              Image.asset(
                'assets/icons/arrow_downward.png',
                width: 18,
                height: 18,
                fit: BoxFit.contain,
              ),
            ],
          ),
          Text(
            '\$5.53',
            style: GoogleFonts.sora(
              color: AppColors.buttonAndIconColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButtonCustom(
            buttonText: 'Order',
            widht: double.infinity,
            height: 56,
            voidCallback: () {
              Get.to(NotificationsScreen());
            },
          ),
        ],
      ),
    );
  }
}
