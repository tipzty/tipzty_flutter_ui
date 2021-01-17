import 'package:flutter/material.dart';
import 'package:tipzty_flutter_ui/shared/constants.dart';

class ButtonCreateReview extends StatefulWidget {
  final Function onTap;

  ButtonCreateReview({Key key, this.onTap}) : super(key: key);

  @override
  _ButtonCreateReview createState() => _ButtonCreateReview();
}

class _ButtonCreateReview extends State<ButtonCreateReview> {
  bool _onHover = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onHover: (event) {
          setState(() {
            _onHover = true;
          });
        },
        onExit: (event) {
          setState(() {
            _onHover = false;
          });
        },
        child: Tooltip(
          message: 'Crear review',
          child: CircleAvatar(
            backgroundColor:
                _onHover ? Color.fromRGBO(243, 235, 255, 1) : Colors.grey[100],
            radius: 20,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.add,
                size: 30,
              ),
              color: _onHover ? primaryColor : Colors.black,
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
