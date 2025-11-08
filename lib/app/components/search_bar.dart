import 'package:coffee_app/app/constants/colors.dart';
import 'package:flutter/material.dart';

Container searchBar() {
  return Container(
    width: 300,
    height: 56,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    decoration: BoxDecoration(
      color: AppColors.darkGrey,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          blurRadius: 5,
          color: Color.fromARGB(255, 65, 65, 65),
          offset: Offset(5, 5)
        )
      ]
    ),
    child: TextField(
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, color: Colors.white),
        hintText: 'Search coffee',
        hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    ),
  );
}
