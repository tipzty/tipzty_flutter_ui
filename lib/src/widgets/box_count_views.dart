import 'package:flutter/material.dart';

class BoxCountViews extends StatelessWidget {
  final int count;
  bool isMobile = true;

  BoxCountViews(this.count, this.isMobile);

  @override
  Widget build(BuildContext context) {
    final bool isK = count >= 1000;
    final bool isM = count >= 1000000;

    String countParser = '0';

    //  The symbol "~/" generates a division calculation as an integer and not as a decimal.
    countParser = isK ? (count ~/ 1000).toString() + "K" : count.toString();
    countParser = isM ? (count ~/ 1000000).toString() + "M" : countParser;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Colors.black45,
      ),
      margin: EdgeInsets.only(
        top: isMobile ? 20.0 : 0.0,
        left: isMobile ? 20.0 : 0.0,
      ),
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.remove_red_eye_sharp,
            size: 15,
            color: Colors.white,
          ),
          SizedBox(width: 5),
          Text(
            countParser,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
