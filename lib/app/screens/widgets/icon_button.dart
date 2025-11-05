import 'package:flutter/material.dart';

class IconButtonCustom extends StatelessWidget {
  final Icon icon;
  final Color forgroundColor;
  final Color backgroundColor;
  final double padding;
  final double borderRaduis;
  final VoidCallback voidCallback;

  const IconButtonCustom({
    super.key,
    required this.icon,
    required this.forgroundColor,
    required this.backgroundColor,
    required this.padding,
    required this.borderRaduis,
    required this.voidCallback,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        padding: EdgeInsets.all(padding),
        foregroundColor: forgroundColor,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      onPressed: voidCallback,
      icon: icon,
    );
  }
}
