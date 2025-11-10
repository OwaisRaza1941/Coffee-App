import 'package:coffee_app/app/constants/colors.dart';
import 'package:flutter/material.dart';

class ImageIcons extends StatelessWidget {
  final String iconPath;
  const ImageIcons({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      style: IconButton.styleFrom(
        foregroundColor: AppColors.buttonAndIconColor,
        backgroundColor: Color(0xFFD6D6D6).withOpacity(0.3),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      icon: Image.asset(iconPath, height: 20),
    );
  }
}
