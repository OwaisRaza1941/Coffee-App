import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/constants/styles.dart';
import 'package:coffee_app/app/screens/widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

class CoffeeCard extends StatelessWidget {
  final String imagePath;
  final String coffeeName;
  final double price;
  final String label;

  const CoffeeCard({
    super.key,
    required this.imagePath,
    required this.price,
    required this.label,
    required this.coffeeName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 250,
      decoration: Styles.coffeeCardStyle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(imagePath, width: 160, fit: BoxFit.contain),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 70,
                  height: 40,
                  padding: EdgeInsets.all(10),
                  decoration: Styles.cardRatingStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 18),
                      Text('4.8', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffeeName,
                  style: GoogleFonts.sora(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(label, style: GoogleFonts.sora(color: Colors.grey)),
                Row(
                  children: [
                    Text(
                      '\$ $price',
                      style: GoogleFonts.sora(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    IconButtonCustom(
                      icon: Icon(Icons.add),
                      forgroundColor: Colors.white,
                      backgroundColor: AppColors.buttonAndIconColor,
                      padding: 10,
                      borderRaduis: 3,
                      voidCallback: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
