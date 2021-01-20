import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserNicknameText extends StatelessWidget {
  final String text;
  final bool small;

  UserNicknameText({this.text, this.small = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
          fontSize: small ? 10 : 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey[600]),
    );
  }
}
