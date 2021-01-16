import 'package:flutter/material.dart';

class BoxCountViews extends StatelessWidget {
  final int count;

  BoxCountViews(this.count);

  @override
  Widget build(BuildContext context) {
    var views = count >= 1000 ? (count / 1000).toString() + "K" : count;
    views = count >= 1000000 ? (count / 1000000).toString() + "M" : views;

    return ConstrainedBox(
      constraints: new BoxConstraints(
        maxWidth: 90,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            color: Colors.black45),
        margin: const EdgeInsets.only(top: 20, left: 20),
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.remove_red_eye_sharp,
              size: 15,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '${views}',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
