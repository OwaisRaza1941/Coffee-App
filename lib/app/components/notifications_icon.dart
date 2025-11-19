import 'package:flutter/material.dart';
import 'package:get/get.dart';

Positioned notificationIcons(
  String iconPath, [
  double? top,
  double? left,
  double? right,
]) {
  return Positioned(
    top: top,
    left: left,
    right: right,
    child: Container(
      width: 60,
      height: 60,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.withOpacity(0.4),
      ),
      child: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Image.asset(iconPath),
      ),
    ),
  );
}
