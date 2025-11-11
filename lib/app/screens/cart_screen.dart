import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/screens/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Image.asset('assets/icons/back_arrow.png'),
                  ),

                  Expanded(
                    child: Text(
                      'Order',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text(
                'Delivery Address',
                style: GoogleFonts.sora(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 25),

              Text(
                'Ji.Kpg Sutoyo',
                style: GoogleFonts.sora(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Kpg.Sutoyo No.620,Blizen,Tanjungbalai',
                style: GoogleFonts.sora(color: Colors.grey),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Container(
                    width: 130,
                    height: 35,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.edit_document),
                        SizedBox(width: 5),
                        Text('Edit Address'),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 130,
                    height: 35,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.edit_document),
                        SizedBox(width: 5),
                        Text('Edit Address'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),

              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 5,
                endIndent: 5,
              ),

              SizedBox(height: 10),

              ClipRRect(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/caffe_mocha.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Caffe Mocha',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Deep Foam', style: TextStyle(color: Colors.grey)),
                      ],
                    ),

                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.grey,
                        shape: CircleBorder(
                          side: BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.remove),
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(
                          side: BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.grey),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                      offset: Offset(9, 9),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/icons/Discount.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),

                    Text(
                      '1 Discount is Applies',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Summary',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Price', style: TextStyle(fontSize: 20)),
                        Text(
                          '\$4.53',
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Devlivery Fee', style: TextStyle(fontSize: 20)),
                        Text(
                          '\$1.0',
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        width: double.infinity,
        height: 250,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(blurRadius: 10, color: Colors.grey, offset: Offset(4, 3)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cash/Walet',
              style: GoogleFonts.sora(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/Wallet.png',
                    width: 25,
                    height: 25,
                    fit: BoxFit.cover,
                  ),
                ),
                Image.asset(
                  'assets/icons/arrow_downward.png',
                  width: 18,
                  height: 18,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            Text(
              '\$5.53',
              style: GoogleFonts.sora(
                color: AppColors.buttonAndIconColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButtonCustom(
              buttonText: 'Order',
              widht: double.infinity,
              height: 56,
              voidCallback: () {},
            ),
          ],
        ),
      ),
    );
  }
}
