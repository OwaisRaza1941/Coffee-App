import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee_app/app/constants/colors.dart';

class CoffeeCategoryButtons extends StatefulWidget {
  const CoffeeCategoryButtons({super.key});

  @override
  State<CoffeeCategoryButtons> createState() => _CoffeeCategoryButtonsState();
}

class _CoffeeCategoryButtonsState extends State<CoffeeCategoryButtons> {
  int selectedIndex = 0;

  List<String> categories = ["All Coffee", "Machiato", "Latte", "America"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          bool isSelected = selectedIndex == index;

          return Padding(
            padding: EdgeInsets.only(right: 10),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: isSelected
                    ? AppColors
                          .buttonAndIconColor // ✅ Selected
                    : Color(
                        0xFFEDEDED,
                      ).withOpacity(0.35), // ✅ Light Grey (Unselected)

                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                setState(() {
                  selectedIndex = index; // ✅ Update selection
                });
              },
              child: Text(
                categories[index],
                style: GoogleFonts.sora(
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.w600 : null,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
