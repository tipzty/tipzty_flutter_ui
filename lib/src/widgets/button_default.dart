import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonDefault extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Widget child;
  final double borderRadius;

  const ButtonDefault({
    this.text,
    this.onPressed,
    this.child,
    this.borderRadius = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: RaisedButton(
        hoverElevation: 0,
        elevation: 0,
        padding: const EdgeInsets.only(left: 30, right: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(
            color: Colors.grey[100],
            style: BorderStyle.solid,
            width: 2,
          ),
        ),
        onPressed: onPressed,
        color: Colors.white,
        textColor: Color.fromRGBO(59, 72, 89, 1),
        child: child is Widget ? child : Text(
          text,
          style:
          GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
