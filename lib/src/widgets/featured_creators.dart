import 'package:flutter/material.dart';
import 'package:tipzty_flutter_ui/src/widgets/typography/user_fullname.dart';
import 'package:tipzty_flutter_ui/src/widgets/typography/user_nickname.dart';
import 'package:tipzty_flutter_ui/src/widgets/user_image.dart';

class FeaturedCreators extends StatelessWidget {
  final List<Map> creators;

  FeaturedCreators({this.creators});

  @override
  Widget build(BuildContext context) {
    return ListView(
      reverse: true,
      padding: EdgeInsets.all(0),
      children: creators
          .map(
            (creator) => ListTile(
              title: UserFullNameText(
                text: creator['fullname'],
                small: true,
              ),
              subtitle: UserNicknameText(
                text: "@" + creator['nickname'],
                small: true,
              ),
              leading: UserImage(
                onTap: () {},
                image: creator['image'],
              ),
            ),
          )
          .toList(),
    );
  }
}
