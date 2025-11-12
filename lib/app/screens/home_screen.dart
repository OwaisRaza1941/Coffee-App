import 'package:coffee_app/app/models/product_model.dart';
import 'package:coffee_app/app/screens/widgets/coffee_card.dart';
import 'package:coffee_app/app/screens/widgets/coffee_category_buttons.dart';
import 'package:coffee_app/app/screens/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CoffeeCategoryButtons(),
                  SizedBox(height: 20),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.68,
                    ),
                    itemCount: allCoffeeList.length,
                    itemBuilder: (context, index) {
                      final coffee = allCoffeeList[index];
                      return CoffeeCard(
                        coffee.imagePath,
                        coffee.price,
                        coffee.productLable,
                        coffee.coffeeName,
                        coffee.startRating,
                        productModel: allCoffeeList[index],
                      );
                    },
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
