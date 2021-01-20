import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tipzty_flutter_ui/src/widgets/typography/user_fullname.dart';
import 'package:tipzty_flutter_ui/src/widgets/typography/user_nickname.dart';

import '../../../shelf.dart';
import '../typography.dart';
import '../user_image.dart';

class FeedItemHeader extends StatelessWidget {
  final String fullName;
  final String nickName;
  final String avatar;
  final Function onPressedFollow;
  final Function onPressedAvatar;
  final bool following;

  FeedItemHeader(
      {this.fullName,
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
        Row(children: [
          UserImage(
            image: avatar,
            onTap: onPressedAvatar,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  UserFullNameText(text: fullName),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: TextCircle(
                      color: Colors.grey,
                    ),
                  ),
                  ButtonFollow(
                    following: following,
                    onPressed: onPressedFollow,
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [UserNicknameText(text: "@${nickName}")],
              ),
            ],
          ),
        ]),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.grey[400],
                  size: 32,
                ))
          ],
        )
      ],
    );
  }
}
