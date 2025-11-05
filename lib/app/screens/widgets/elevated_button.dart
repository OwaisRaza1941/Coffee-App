import 'package:coffee_app/app/constants/colors.dart';
import 'package:flutter/material.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final String buttonText;
  final double widht;
  final double height;
  final VoidCallback voidCallback;

  const ElevatedButtonCustom({
    required this.buttonText,
    required this.widht,
    required this.height,
    required this.voidCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widht,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 18),
          foregroundColor: Colors.white,
          backgroundColor: AppColors.buttonAndIconColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),

        onPressed: voidCallback,
        child: Text(buttonText),
      ),
    );
  }
}
