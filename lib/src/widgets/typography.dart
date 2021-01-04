import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../shared/constants.dart';

class TextLink extends StatelessWidget {
  final String text;

  TextLink(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        color: primaryColor,
      ),
    );
  }
}

class TextCircle extends StatelessWidget {
  final Color color;

  TextCircle({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: color,
      ),
    );
  }
}
