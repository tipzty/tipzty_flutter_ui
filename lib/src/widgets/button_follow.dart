import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/constants.dart';

class ButtonFollow extends StatelessWidget {
  final Function onPressed;
  final bool following;
  final Color splashColor;
  final Color highlightColor;
  final Color textColor;
  final Color color;
  final Color hoverColor;
  final double textSize;
  final double elevation;
  final double borderRadius;

  ButtonFollow({
    this.onPressed,
    this.following = false,
    this.color = Colors.transparent,
    this.splashColor = Colors.transparent,
    this.hoverColor = Colors.transparent,
    this.highlightColor = Colors.transparent,
    this.textColor = textColorBlack,
    this.textSize = 16.0,
    this.elevation = 0.0,
    this.borderRadius = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: elevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
      color:color ,
      hoverColor: hoverColor,
      onPressed: onPressed,
      textColor: textColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      child: Center(
        child: Text(
          following ? "Siguiendo" : "Seguir",
          style: GoogleFonts.inter(
            color: textColor,
            fontSize: textSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
