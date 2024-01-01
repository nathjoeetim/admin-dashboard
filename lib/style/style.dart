import 'package:admin_dashboard/style/colors.dart';
import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  const PrimaryText({
    super.key,
    required this.text,
    this.height = 1.3,
    this.color = AppColors.primary,
    this.size = 20,
    this.fontWeight = FontWeight.w400,
  });

  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        height: height,
        fontFamily: 'poppins',
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
