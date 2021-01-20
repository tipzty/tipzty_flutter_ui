import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/constants.dart';

class UserImage extends StatelessWidget {
  final Function onTap;
  final String image;

  UserImage({this.onTap, this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 42,
        width: 42,
        decoration: BoxDecoration(
          border: Border.all(
            color: primaryColor,
            style: BorderStyle.solid,
            width: 2.0,
          ),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: ClipOval(
            child: image != ""
                ? CachedNetworkImage(
                    imageUrl: image,
                    placeholder: (_, __) => Center(
                      child: CupertinoActivityIndicator(
                        radius: 15,
                      ),
                    ),
                  )
                : Image.asset("assets/images/user_image.png")),
      ),
    );
  }
}
