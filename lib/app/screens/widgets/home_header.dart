import 'package:coffee_app/app/components/search_bar.dart';
import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/constants/styles.dart';
import 'package:coffee_app/app/screens/widgets/icon_button.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
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
                  Text("Blizen,", style: Styles.homeBannerText),
                  Text("Tanjungbalai", style: Styles.homeBannerText),
                  Icon(Icons.arrow_drop_down, size: 22, color: Colors.white),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  searchBar(),
                  IconButtonCustom(
                    icon: Icon(Icons.tune),
                    forgroundColor: Colors.white,
                    backgroundColor: AppColors.buttonAndIconColor,
                    borderRaduis: 15,
                    padding: 15,
                    voidCallback: () {},
                  ),
                ],
              ),
            ],
          ),
        ),

        Positioned(
          bottom: -80,
          child: Image.asset('assets/images/Banner.png', fit: BoxFit.contain),
        ),
      ],
    );
  }
}
