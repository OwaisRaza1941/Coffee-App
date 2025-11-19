import 'package:coffee_app/app/constants/styles.dart';
import 'package:coffee_app/app/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartProductSection extends StatelessWidget {
  const CartProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();

    return Obx(() {
      if (cartController.allCartList.isEmpty) {
        return Center(
          child: Text(
            'Your cart is empty 😕',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        );
      }
      return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: cartController.allCartList.length,
        itemBuilder: (context, index) {
          final product = cartController.allCartList[index];
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                product.imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.coffeeName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.productLable,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                style: Styles.quantityIncreaseButtonStyle,
                onPressed: () {},
                icon: Icon(Icons.remove),
                iconSize: 18,
                padding: EdgeInsets.all(5),
                constraints: BoxConstraints(),
              ),
              Text(
                '1',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              IconButton(
                style: Styles.quantityDecreaseButtonStyle,
                onPressed: () {},
                icon: Icon(Icons.add),
                iconSize: 18,
                padding: EdgeInsets.all(5),
                constraints: BoxConstraints(),
              ),
            ],
          );
        },
      );
    });
  }
}
