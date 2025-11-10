import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => Get.back(),
          icon: Image.asset('assets/icons/back_arrow.png', height: 30),
        ),
        Text(
          'Detail',
          style: GoogleFonts.sora(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/fav_icon.png', height: 30),
        ),
      ],
    );
  }
}
