import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/constants/styles.dart';
import 'package:coffee_app/app/models/product_model.dart';
import 'package:coffee_app/app/screens/coffee_detail_screen.dart';
import 'package:coffee_app/app/screens/widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

class CoffeeCard extends StatelessWidget {
  final String imagePath;
  final String coffeeName;
  final double price;
  final String label;
  final double starRating;
  final ProductModel productModel;

  const CoffeeCard(
    this.imagePath,
    this.price,
    this.label,
    this.coffeeName,
    this.starRating, {
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(CoffeeDetailScreen(productModel: productModel));
      },
      child: Container(
        decoration: Styles.coffeeCardStyle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  imagePath,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
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
                        Text(
                          '$starRating',
                          style: TextStyle(color: Colors.white),
                        ),
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
      ),
    );
  }
}
