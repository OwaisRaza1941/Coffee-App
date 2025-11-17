import 'package:flutter/material.dart';

Container cartButton(String btnText) {
  return Container(
    width: 140,
    height: 40,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: Colors.black),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.edit_document),
        SizedBox(width: 5),
        Text('Edit Address'),
      ],
    ),
  );
}
