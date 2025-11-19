import 'package:coffee_app/app/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationBottomNaviagtionBar extends StatelessWidget {
  const NotificationBottomNaviagtionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        height: 300,
        padding: EdgeInsets.all(20),
        decoration: Styles.notificationContainerStyle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "10 minutes left",
              style: GoogleFonts.sora(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Delivery to Jl. Kpg Sutyoto",
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: 0.6,
              color: Colors.green,
              backgroundColor: Colors.grey[300],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black38),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.green),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Delivered your order\nWe will deliver in the shortest time.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Brooklyn Simmons",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Personal Courier",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/icons/phone_icon.png',
                  height: 30,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
