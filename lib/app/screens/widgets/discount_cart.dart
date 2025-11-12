import 'package:flutter/material.dart';

class DiscountCart extends StatelessWidget {
  const DiscountCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: Colors.grey),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(9, 9),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/icons/Discount.png',
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),

          Text(
            '1 Discount is Applies',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
