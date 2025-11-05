import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/screens/widgets/coffee_category_buttons.dart';
import 'package:coffee_app/app/screens/widgets/home_header.dart';
import 'package:coffee_app/app/screens/widgets/icon_button.dart';
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
            HomeHeader(),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CoffeeCategoryButtons(),
                  SizedBox(height: 20),

                  Container(
                    width: 160,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // light shadow
                          blurRadius: 10, // soft blur
                          spreadRadius: 2, // little spread
                          offset: Offset(
                            0,
                            5,
                          ), // vertical shadow below container
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/caffe_mocha.png',
                              width: 160,
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                width: 70,
                                height: 40,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(135, 131, 133, 0.35),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(35),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    Text(
                                      '4.8',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        Text(
                          'Caffe Mocha',
                          style: GoogleFonts.sora(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Deep Foam',
                          style: GoogleFonts.sora(color: Colors.grey),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ 4.53',
                              style: GoogleFonts.sora(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            IconButtonCustom(
                              icon: Icon(Icons.add),
                              forgroundColor: Colors.white,
                              backgroundColor: AppColors.buttonAndIconColor,
                              padding: 10,
                              borderRaduis: 3,
                              voidCallback: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
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
