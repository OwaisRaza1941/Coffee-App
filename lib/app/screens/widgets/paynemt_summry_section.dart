import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaynemtSummrySection extends StatelessWidget {
  final double price;
  final double deliveryFee;
  const PaynemtSummrySection({
    super.key,
    required this.price,
    required this.deliveryFee,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Summary',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Price', style: TextStyle(fontSize: 20)),
              Text(
                '\$$price',
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Devlivery Fee', style: TextStyle(fontSize: 20)),
              Text(
                '\$$deliveryFee',
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
