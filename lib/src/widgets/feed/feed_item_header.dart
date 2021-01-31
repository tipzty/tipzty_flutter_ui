import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/constants.dart';
import '../../../shelf.dart';
import '../typography.dart';

class UserImage extends StatelessWidget {
  final Function onTap;
  final String image;

  UserImage({this.onTap, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
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
              placeholder: (_, __) =>
                  Center(
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

class UserNicknameText extends StatelessWidget {
  final String text;

  UserNicknameText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
          fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey[600]),
    );
  }
}

class UserFullNameText extends StatelessWidget {
  final String text;

  UserFullNameText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class FeedItemHeader extends StatelessWidget {
  final String fullName;
  final String nickName;
  final String avatar;
  final Function onPressedFollow;
  final Function onPressedAvatar;
  final bool following;

  FeedItemHeader({this.fullName,
    this.nickName,
    this.avatar,
    this.onPressedFollow,
    this.onPressedAvatar,
    this.following});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            UserImage(image: avatar, onTap: onPressedAvatar),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    UserFullNameText(fullName),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextCircle(color: Colors.grey),
                    ),
                    ButtonFollow(
                      following: following,
                      onPressed: onPressedFollow,
                    ),
                  ],
                ),
                Row(children: [UserNicknameText("@$nickName")]),
              ],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 28,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
