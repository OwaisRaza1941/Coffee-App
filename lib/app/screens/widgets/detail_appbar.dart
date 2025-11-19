import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/controller/favorite_controller.dart';
import 'package:coffee_app/app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailAppBar extends StatelessWidget {
  final ProductModel product;
  const DetailAppBar(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    final FavoriteController controller = Get.find();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => Get.back(),
          icon: Image.asset('assets/icons/back_arrow.png', height: 30),
        ),
        Text(
          'Detail',
          style: GoogleFonts.sora(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Obx(
          () => IconButton(
            onPressed: () => controller.toggleFavorite(product),
            icon: Image.asset(
              'assets/icons/fav_icon.png',
              height: 30,
              color: product.isFavorite.value
                  ? AppColors.buttonAndIconColor
                  : Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
