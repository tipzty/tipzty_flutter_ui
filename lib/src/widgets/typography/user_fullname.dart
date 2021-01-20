import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class UserFullNameText extends StatelessWidget {
  final String text;
  final bool small;

  UserFullNameText({this.text, this.small = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.inter(
        fontSize: small ? 14 : 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
