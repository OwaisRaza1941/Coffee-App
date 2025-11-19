import 'package:coffee_app/app/controller/favorite_controller.dart';
import 'package:coffee_app/app/screens/widgets/fav_appbar.dart';
import 'package:coffee_app/app/screens/widgets/favorite_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FavoriteController controller = Get.find();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FavAppbar(),
              SizedBox(height: 30),
              Obx(() {
                return controller.allFavList.isNotEmpty
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.allFavList.length,
                        padding: EdgeInsets.all(0),
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          var favoriteCart = controller.allFavList[index];
                          return FavoriteCart(favoriteCart);
                        },
                      )
                    : Center(
                        child: Text(
                          'No Favorite Product',
                          style: GoogleFonts.sora(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
