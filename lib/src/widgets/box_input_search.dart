import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tipzty_flutter_ui/shared/constants.dart';

class BoxInputSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        width: size.width,
        height: 44,
        padding: EdgeInsets.only(top: 2, bottom: 2, left: 2),
        decoration: BoxDecoration(
          color: Color.fromRGBO(245, 246, 251, 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintStyle: GoogleFonts.inter(
                          fontSize: 14,
                          color: textColor,
                          fontWeight: FontWeight.w600),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(245, 246, 251, 1),
                              width: 0),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10))),
                      filled: true,
                      fillColor: Colors.white,
                      hintText:
                          'Busca reviews, influentes, marcas y productos'),
                ),
              ),
              SizedBox(
                width: 60,
                child: IconButton(
                  alignment: Alignment.center,
                  icon: Icon(Icons.search, size: 32),
                  onPressed: () {},
                ),
              )
            ]));
  }
}
