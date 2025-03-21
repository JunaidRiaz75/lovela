import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lovela/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Color textColor;
  const CustomButton({
    super.key,
    required this.text,
    this.icon,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 295,
        height: 56,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            Container(
              width: 43,
              height: 43,
              margin: EdgeInsets.only(left: 8),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: AppColors.deepRed,
                size: 24,
              ),
            ),
            SizedBox(width: 40),
            Text(
              text,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
