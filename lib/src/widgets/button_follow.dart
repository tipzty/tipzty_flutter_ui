import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/constants.dart';

class ButtonFollow extends StatelessWidget {
  final Function onPressed;
  final bool following;

  ButtonFollow({this.onPressed, this.following = false});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        hoverColor: Colors.transparent,
        onPressed: onPressed,
        textColor: textColorBlack,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Container(
            child: Text(following ? "Siguiendo" : "Seguir",
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w500))));
  }
}
