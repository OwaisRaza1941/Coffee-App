import 'package:flutter/material.dart';

Container cartButton(String btnText) {
  return Container(
    width: 130,
    height: 35,
    padding: EdgeInsets.all(8),
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
  );
}
