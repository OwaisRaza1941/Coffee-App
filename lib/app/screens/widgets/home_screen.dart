import 'package:coffee_app/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 60, left: 20, right: 20),
              width: double.infinity,
              height: 288,
              decoration: BoxDecoration(color: AppColors.darkGrey),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Blizen,",
                        style: GoogleFonts.sora(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tanjungbalai",
                        style: GoogleFonts.sora(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),

                      Icon(
                        Icons.arrow_drop_down,
                        size: 22,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 300,
                        height: 56,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 122, 122, 122),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.white),
                            hintText: 'Search coffee',
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          foregroundColor: Colors.white,
                          backgroundColor: AppColors.buttonAndIconColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.tune),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
