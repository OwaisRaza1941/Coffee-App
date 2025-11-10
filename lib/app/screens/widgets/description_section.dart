import 'package:coffee_app/app/constants/colors.dart';
import 'package:coffee_app/app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionSection extends StatefulWidget {
  final ProductModel product;

  const DescriptionSection({super.key, required this.product});

  @override
  State<DescriptionSection> createState() => _DescriptionSectionState();
}

class _DescriptionSectionState extends State<DescriptionSection> {
  bool isReadMore = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          widget.product.description ?? '',
          style: TextStyle(fontSize: 16, color: Colors.grey.withOpacity(0.8)),
          maxLines: isReadMore ? 10 : 3,
          overflow: TextOverflow.ellipsis,
        ),
        TextButton(
          onPressed: () => setState(() => isReadMore = !isReadMore),
          style: TextButton.styleFrom(
            foregroundColor: AppColors.buttonAndIconColor,
          ),
          child: Text(
            isReadMore ? "Read Less" : "Read More",
            style: GoogleFonts.sora(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
