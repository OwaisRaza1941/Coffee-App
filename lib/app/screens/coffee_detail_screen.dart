import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeDetailScreen extends StatefulWidget {
  final ProductModel productModel;
  const CoffeeDetailScreen({super.key, required this.productModel});

  @override
  State<CoffeeDetailScreen> createState() => _CoffeeDetailScreenState();
}

class _CoffeeDetailScreenState extends State<CoffeeDetailScreen> {
  bool isReadMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Image.asset(
                      'assets/icons/back_arrow.png',
                      height: 30,
                    ),
                  ),
                  Text(
                    'Detail',
                    style: GoogleFonts.sora(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/fav_icon.png', height: 30),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Image.asset(
                widget.productModel.imagePath,
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 10),

              Text(
                widget.productModel.coffeeName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ice/Hot',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),

                  Wrap(
                    spacing: 10,
                    children: [
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          foregroundColor: AppColors.buttonAndIconColor,
                          backgroundColor: Color(0xFFD6D6D6).withOpacity(0.3),
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        icon: Image.asset(
                          'assets/icons/delivery_bike.png',
                          height: 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          foregroundColor: AppColors.buttonAndIconColor,
                          backgroundColor: Color(0xFFD6D6D6).withOpacity(0.3),
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        icon: Image.asset('assets/icons/leave.png', height: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          foregroundColor: AppColors.buttonAndIconColor,
                          backgroundColor: Color(0xFFD6D6D6).withOpacity(0.3),
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        icon: Image.asset('assets/icons/box.png', height: 20),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Icon(
                    Icons.star_purple500_outlined,
                    color: Colors.amber,
                    size: 30,
                  ),
                  Text(
                    '${widget.productModel.startRating}',
                    style: GoogleFonts.sora(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text('(230)', style: GoogleFonts.sora(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 8),

              Divider(
                thickness: 1,
                color: Colors.grey.withOpacity(0.3),
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 8),

              Text(
                'Description',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              Text(
                widget.productModel.description!,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.withOpacity(0.8),
                ),
                textAlign: TextAlign.start,
                maxLines: isReadMore ? 10 : 3,
                overflow: TextOverflow.ellipsis,
              ),

              TextButton(
                style: TextButton.styleFrom(
                  textStyle: GoogleFonts.sora(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  foregroundColor: AppColors.buttonAndIconColor,
                  overlayColor: Colors.transparent,
                ),
                onPressed: () {
                  setState(() {
                    isReadMore = !isReadMore;
                  });
                },
                child: Text(isReadMore ? "Read Less" : "Read More"),
              ),

              SizedBox(height: 10),
              Text(
                'Size',
                style: GoogleFonts.sora(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('S'),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        foregroundColor: AppColors.buttonAndIconColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: AppColors.buttonAndIconColor),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('M'),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('L'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$ ${widget.productModel.price}',
                        style: GoogleFonts.sora(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.buttonAndIconColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonAndIconColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 80,
                        vertical: 18,
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
