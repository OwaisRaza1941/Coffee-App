import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/controller/cart_controller.dart';
import 'package:coffee_app/app/models/product_model.dart';
import 'package:coffee_app/app/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceBuySection extends StatelessWidget {
  final ProductModel product;
  const PriceBuySection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final CartController controller = Get.put(CartController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Price",
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(height: 4),
            Text(
              '\$ ${product.price}',
              style: GoogleFonts.sora(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.buttonAndIconColor,
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            controller.addToCart(product);
            Get.to(CartScreen());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.buttonAndIconColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
          ),
          child: Text(
            "Buy Now",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
