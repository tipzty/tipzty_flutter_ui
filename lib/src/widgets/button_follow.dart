import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/constants.dart';

class ButtonFollow extends StatelessWidget {
  final Function onPressed;
  final bool following;
  final Color splashColor;
  final Color highlightColor;
  final Color textColor;

  ButtonFollow({
    this.onPressed,
    this.following = false,
    this.splashColor = Colors.transparent,
    this.highlightColor = Colors.transparent,
    this.textColor = textColorBlack,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      hoverColor: Colors.transparent,
      onPressed: onPressed,
      textColor: textColorBlack,
      highlightColor: highlightColor,
      splashColor: splashColor,
      child: Center(
        child: Text(
          following ? "Siguiendo" : "Seguir",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
