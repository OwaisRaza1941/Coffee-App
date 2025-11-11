import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/models/product_model.dart';
import 'package:coffee_app/app/screens/cart_screen.dart';
import 'package:coffee_app/app/screens/favorite_screen.dart';
import 'package:coffee_app/app/screens/notifications_screen.dart';
import 'package:coffee_app/app/screens/widgets/coffee_card.dart';
import 'package:coffee_app/app/screens/widgets/coffee_category_buttons.dart';
import 'package:coffee_app/app/screens/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    if (index == 1) {
      // Favorite screen open
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const FavoriteScreen()),
      );
    } else if (index == 2) {
      // Cart screen open
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const CartScreen()),
      );
    } else if (index == 3) {
      // Notification screen open
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const NotificationsScreen()),
      );
    } else {
      // Stay on Home
      setState(() {
        selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // 👇 Ye tumhara home page ka content hai
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CoffeeCategoryButtons(),
                  const SizedBox(height: 20),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.buttonAndIconColor,
        unselectedItemColor: Colors.grey,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_bag_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Notification',
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}
