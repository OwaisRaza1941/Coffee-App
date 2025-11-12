import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/screens/cart_screen.dart';
import 'package:coffee_app/app/screens/favorite_screen.dart';
import 'package:coffee_app/app/screens/home_screen.dart';
import 'package:coffee_app/app/screens/notifications_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    NotificationsScreen(),
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    // if (index == 1) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (_) => const FavoriteScreen()),
    //   );
    // } else if (index == 2) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (_) => const CartScreen()),
    //   );
    // } else if (index == 3) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (_) => const NotificationsScreen()),
    //   );
    // } else {
    //   setState(() {
    //     selectedIndex = index;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildNavItem('assets/icons/home_icon.png', 0),
            buildNavItem('assets/icons/fav_icon.png', 1),
            buildNavItem('assets/icons/bag_icon.png', 2),
            buildNavItem('assets/icons/notification_icon.png', 3),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem(String image, int index) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            color: isSelected ? AppColors.buttonAndIconColor : Colors.grey,
          ),
          SizedBox(height: 4),
          Container(
            height: 5,
            width: 22,
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.buttonAndIconColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
