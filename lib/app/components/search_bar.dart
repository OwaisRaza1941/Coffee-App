import 'package:flutter/material.dart';

Container searchBar() {
  return Container(
    width: 300,
    height: 56,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 122, 122, 122),
      borderRadius: BorderRadius.circular(15),
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
