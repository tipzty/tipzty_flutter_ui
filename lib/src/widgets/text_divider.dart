import 'package:flutter/cupertino.dart';

class TextDivider extends StatelessWidget {
  final String text;

  TextDivider(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32,
        ),
        Text(text, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 32,
        )
      ],
    );
  }
}
