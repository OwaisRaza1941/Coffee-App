import 'package:coffee_app/app/models/product_model.dart';
import 'package:coffee_app/app/screens/widgets/image_icon.dart';
import 'package:coffee_app/app/screens/widgets/price_by_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/detail_appbar.dart';
import 'widgets/coffee_image.dart';
import 'widgets/description_section.dart';
import 'widgets/size_selector.dart';

class CoffeeDetailScreen extends StatelessWidget {
  final ProductModel productModel;
  const CoffeeDetailScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailAppBar(product: productModel),
              SizedBox(height: 20),
              CoffeeImage(product: productModel),
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
                      ImageIcons(iconPath: 'assets/icons/delivery_bike.png'),
                      ImageIcons(iconPath: 'assets/icons/leave.png'),
                      ImageIcons(iconPath: 'assets/icons/box.png'),
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
              Divider(thickness: 1, color: Colors.grey.withOpacity(0.3)),
              SizedBox(height: 10),
              DescriptionSection(product: productModel),
              SizedBox(height: 10),
              SizeSelector(),
              SizedBox(height: 20),
              PriceBuySection(product: productModel),
            ],
          ),
        ),
      ),
    );
  }
}
