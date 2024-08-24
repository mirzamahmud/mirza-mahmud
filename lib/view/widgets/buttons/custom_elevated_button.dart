import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirza_mahmud/utils/color/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {

  final double buttonWidth;
  final double buttonHeight;
  final double elevation;
  final Color buttonColor;
  final Color buttonTextColor;
  final VoidCallback onPressed;
  final String buttonText;
  final double fontSize;
  final FontWeight fontWeight;

  const CustomElevatedButton({
    super.key,
    required this.buttonWidth,
    this.buttonHeight = 56,
    this.elevation = 0,
    this.buttonColor = AppColors.colorBlack,
    this.buttonTextColor = AppColors.colorWhite,
    required this.onPressed,
    required this.buttonText,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500
  });

  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      minWidth: buttonWidth,
      elevation: elevation,
      height: buttonHeight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)
      ),
      color: buttonColor,
      onPressed: onPressed,
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: buttonTextColor,
          fontSize: fontSize,
          fontWeight: fontWeight
        ),
      ),
    );
  }
}
