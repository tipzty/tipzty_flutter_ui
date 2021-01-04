import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/constants.dart';

class ButtonFollow extends StatelessWidget {
  final Function onPressed;

  ButtonFollow({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        textColor: primaryColor,
        color: Color.fromRGBO(227, 211, 252, 1),
        child: Container(
            child: Text("Seguir",
                style: GoogleFonts.inter(fontWeight: FontWeight.w400))));
  }
}
