import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/constants.dart';

class ButtonPrimary extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool ghost;
  final double fontSize;
  final double borderRadius;
  final FontWeight fontWeight;

  const ButtonPrimary({
    this.text,
    this.onPressed,
    this.ghost = false,
    this.fontSize = 12,
    this.borderRadius = 6.0,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      hoverElevation: 0,
      elevation: 0,
      padding: const EdgeInsets.only(left: 30, right: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: BorderSide(
          width: 1,
          color: ghost ? primaryColorDark : Colors.transparent,
          style: BorderStyle.solid,
        ),
      ),
      onPressed: onPressed,
      color: ghost ? Colors.transparent : primaryColorDark,
      textColor: ghost ? primaryColorDark : Colors.white,
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
