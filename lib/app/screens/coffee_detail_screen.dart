import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/models/product_model.dart';
import 'package:coffee_app/app/screens/widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeDetailScreen extends StatelessWidget {
  final ProductModel productModel;
  const CoffeeDetailScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  Text(
                    'Detail',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Image.asset(
                productModel.imagePath,
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 10),

              Text(
                productModel.coffeeName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ice/Hot',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),

                  Wrap(
                    spacing: 10,
                    children: [
                      IconButtonCustom(
                        icon: Icon(Icons.delivery_dining_outlined),
                        forgroundColor: AppColors.buttonAndIconColor,
                        backgroundColor: Color(0xFFD6D6D6).withOpacity(0.3),
                        padding: 15,
                        borderRaduis: 10,
                        voidCallback: () {},
                      ),
                      IconButtonCustom(
                        icon: Icon(Icons.delivery_dining_outlined),
                        forgroundColor: AppColors.buttonAndIconColor,
                        backgroundColor: Color(0xFFD6D6D6).withOpacity(0.3),
                        padding: 15,
                        borderRaduis: 10,
                        voidCallback: () {},
                      ),

                      IconButtonCustom(
                        icon: Icon(Icons.delivery_dining_outlined),
                        forgroundColor: AppColors.buttonAndIconColor,
                        backgroundColor: Color(0xFFD6D6D6).withOpacity(0.3),
                        padding: 15,
                        borderRaduis: 10,
                        voidCallback: () {},
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Icon(
                    Icons.star_purple500_outlined,
                    color: Colors.amber,
                    size: 30,
                  ),
                  Text(
                    '${productModel.startRating}',
                    style: GoogleFonts.sora(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text('(230)', style: GoogleFonts.sora(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 8),

              Divider(
                thickness: 1,
                color: Colors.grey.withOpacity(0.3),
                indent: 10,
                endIndent: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
