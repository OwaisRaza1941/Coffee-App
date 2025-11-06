import 'package:coffee_app/app/screens/widgets/coffee_card.dart';
import 'package:coffee_app/app/screens/widgets/coffee_category_buttons.dart';
import 'package:coffee_app/app/screens/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                  CoffeeCard(
                    coffeeName: 'Caffe Mocha',
                    label: 'Deep Foma',
                    price: 4.53,
                    imagePath: 'assets/images/caffe_mocha.png',
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
