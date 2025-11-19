// import 'package:coffee_app/app/components/notifications_icon.dart';
import 'package:coffee_app/app/screens/widgets/notification_bottom_naviagtion_bar.dart';
import 'package:flutter/material.dart';
import 'widgets/map.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: CustomMap()),
          // notificationIcons('assets/icons/back_arrow.png'),
          // notificationIcons('assets/icons/gps.png'),
          NotificationBottomNaviagtionBar(),
        ],
      ),
    );
  }
}
