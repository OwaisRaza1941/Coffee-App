import 'package:flutter/material.dart';
import 'package:coffee_app/app/constants/colors.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildSizeButton("S", false),
            _buildSizeButton("M", true),
            _buildSizeButton("L", false),
          ],
        ),
      ],
    );
  }

  Widget _buildSizeButton(String text, bool isSelected) {
    return SizedBox(
      width: 110,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          overlayColor: Colors.transparent,
          foregroundColor: isSelected
              ? AppColors.buttonAndIconColor
              : Colors.black,
          backgroundColor: isSelected ? AppColors.creamWhite : Colors.white,
          side: BorderSide(
            color: isSelected
                ? AppColors.buttonAndIconColor
                : Colors.grey.withOpacity(0.3),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
