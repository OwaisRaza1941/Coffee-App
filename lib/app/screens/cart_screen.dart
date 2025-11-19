import 'package:coffee_app/app/components/cart_button.dart';
import 'package:coffee_app/app/controller/cart_controller.dart';
import 'package:coffee_app/app/screens/widgets/cart_appbar.dart';
import 'package:coffee_app/app/screens/widgets/cart_bottom_navigationbar.dart';
import 'package:coffee_app/app/screens/widgets/cart_product_section.dart';
import 'package:coffee_app/app/screens/widgets/delivery_options.dart';
import 'package:coffee_app/app/screens/widgets/discount_cart.dart';
import 'package:coffee_app/app/screens/widgets/paynemt_summry_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController controller = Get.put(CartController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CartAppbar(),
              SizedBox(height: 20),
              DeliveryOption(),
              SizedBox(height: 20),
              Text(
                'Delivery Address',
                style: GoogleFonts.sora(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Ji.Kpg Sutoyo',
                style: GoogleFonts.sora(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Kpg.Sutoyo No.620,Blizen,Tanjungbalai',
                style: GoogleFonts.sora(color: Colors.grey),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  cartButton('Edit Address'),
                  SizedBox(width: 10),
                  cartButton('Edite Note'),
                ],
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 5,
                endIndent: 5,
              ),
              SizedBox(height: 10),
              CartProductSection(),
              SizedBox(height: 20),
              DiscountCart(),
              SizedBox(height: 20),
              PaynemtSummrySection(
                price: controller.productPrice.value,
                deliveryFee: controller.deliveryFee.value,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CartBottomNavigationbar(),
    );
  }
}
