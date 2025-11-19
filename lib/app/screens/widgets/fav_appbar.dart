import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FavAppbar extends StatelessWidget {
  const FavAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset('assets/icons/back_arrow.png'),
        ),
        Expanded(
          child: Center(
            child: Text(
              'Favorite',
              style: GoogleFonts.sora(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
