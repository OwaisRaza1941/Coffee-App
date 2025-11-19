import 'package:coffee_app/app/controller/favorite_controller.dart';
import 'package:coffee_app/app/screens/widgets/fav_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FavoriteController controller = Get.put(FavoriteController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FavAppbar(),
              Obx(() {
                return controller.allFavList.isNotEmpty
                    ? ListView.builder(
                        itemCount: controller.allFavList.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final product = controller.allFavList[index];
                          return Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(color: Colors.grey),
                            child: Text(product.coffeeName),
                          );
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
