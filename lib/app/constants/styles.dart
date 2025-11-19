import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static final textStyleOnboardingPage = GoogleFonts.sora(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );

  static final homeBannerText = GoogleFonts.sora(
    fontSize: 18,
    color: Colors.white,
  );

  static final coffeeCardStyle = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1), // light shadow
        blurRadius: 10, // soft blur
        spreadRadius: 2, // little spread
        offset: Offset(0, 5), // vertical shadow below container
      ),
    ],
  );

  static final cardRatingStyle = BoxDecoration(
    color: Color.fromRGBO(135, 131, 133, 0.35),
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(15),
      bottomLeft: Radius.circular(35),
    ),
  );

  static final quantityIncreaseButtonStyle = IconButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: Colors.grey,
    shape: CircleBorder(side: BorderSide(width: 1, color: Colors.black)),
  );
  static final quantityDecreaseButtonStyle = IconButton.styleFrom(
    backgroundColor: Colors.white,
    shape: CircleBorder(side: BorderSide(width: 1, color: Colors.black)),
  );

  static final cartBottomNavigationStyle = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(25),
      topLeft: Radius.circular(25),
    ),
    boxShadow: [
      BoxShadow(blurRadius: 10, color: Colors.grey, offset: Offset(4, 3)),
    ],
  );

  static final notificationContainerStyle = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    boxShadow: [
      BoxShadow(blurRadius: 15, color: Colors.black.withOpacity(0.15)),
    ],
  );

  static final favoriteCartStyle = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.brown.withOpacity(0.15),
        blurRadius: 15,
        spreadRadius: 1,
        offset: Offset(0, 6),
      ),
    ],
  );
}
