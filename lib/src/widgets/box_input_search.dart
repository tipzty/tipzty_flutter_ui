import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BoxInputSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 4, bottom: 4, left: 4),
        decoration: BoxDecoration(
          color: Color.fromRGBO(245, 246, 251, 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(children: [
          SizedBox(
            width: 300,
            height: 44,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  hintText: 'Enter a search term'),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search, size: 32),
            onPressed: () {},
          ),
        ]));
  }
}
