import 'package:coffee_app/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryOption extends StatefulWidget {
  const DeliveryOption({super.key});

  @override
  State<DeliveryOption> createState() => _DeliveryOptionState();
}

class _DeliveryOptionState extends State<DeliveryOption> {
  bool isDeliverySelected = true; 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 180,
            height: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: GoogleFonts.sora(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                backgroundColor: isDeliverySelected
                    ? AppColors.buttonAndIconColor
                    : Colors.grey.withOpacity(0.3),
                foregroundColor: isDeliverySelected
                    ? Colors.white
                    : Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                setState(() {
                  isDeliverySelected = true;
                });
              },
              child: Text('Delivery'),
            ),
          ),

          // 🏠 Pick Up Button
          SizedBox(
            width: 180,
            height: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: GoogleFonts.sora(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                backgroundColor: isDeliverySelected
                    ? Colors.grey.withOpacity(0.3)
                    : AppColors.buttonAndIconColor,
                foregroundColor: isDeliverySelected
                    ? Colors.black
                    : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                setState(() {
                  isDeliverySelected = false;
                });
              },
              child: Text('Pick Up'),
            ),
          ),
        ],
      ),
    );
  }
}
