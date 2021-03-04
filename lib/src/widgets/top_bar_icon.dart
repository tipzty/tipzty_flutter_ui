import 'package:flutter/material.dart';
import 'package:tipzty_flutter_ui/shared/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class TopBarIcon extends StatefulWidget {
  final String icon;
  final String tooltip;
  final Function onTap;

  TopBarIcon({Key key, this.icon, this.tooltip, this.onTap}) : super(key: key);

  @override
  _TopBarIcon createState() => _TopBarIcon();
}

class _TopBarIcon extends State<TopBarIcon> {
  bool _onHover = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
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
          message: widget.tooltip,
          child: Image.asset("assets/images/${widget.icon}.png",
              color: _onHover ? primaryColor : Colors.black,
              height: 26,
              width: 26),
        ),
      ),
    );
  }
}
