import 'package:flutter/material.dart';
import 'package:tipzty_flutter_ui/shelf.dart';
import 'package:tipzty_flutter_ui/src/widgets/box_count_views.dart';
import 'package:tipzty_flutter_ui/src/widgets/button_follow.dart';
import 'package:tipzty_flutter_ui/src/widgets/text_divider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tipzty UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DesignSystem(),
    );
  }
}

class DesignSystem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipzty UI'),
      ),
      body: SizedBox(
          width: 600,
          child: ListView(
            children: [
              TextDivider('ButtonPrimary'),
              SizedBox(
                  width: 100,
                  height: 40,
                  child: ButtonPrimary(
                    text: 'Button',
                    onPressed: () {},
                  )),
              TextDivider('ButtonFollow'),
              ButtonFollow(
                following: true,
                onPressed: () {},
              ),
              TextDivider('FeedItemHeader'),
              SizedBox(
                width: 630,
                child: FeedItemHeader(
                  following: false,
                  onPressedAvatar: () {},
                  onPressedFollow: () {},
                  fullName: "Ana Sofia",
                  nickName: "geraldexcellent",
                  avatar:
                      "https://storage.googleapis.com/tipzty_images/users/80c51ee4-3bd3-11eb-bbf0-0242ac110002.png",
                ),
              ),
              TextDivider('BoxCountViews'),
              BoxCountViews(100000),
              TextDivider('TopBarIcon'),
              TopBarIcon(
                tooltip: "Mensajes",
                icon: "message_icon",
                onTap: () {},
              ),
              TextDivider('ButtonCreateReview'),
              ButtonCreateReview(
                onTap: () {},
              ),
              TextDivider('BoxInputSearch'),
              SizedBox(
                width: 400,
                height: 44,
                child: BoxInputSearch(),
              )
            ],
          )),
    );
  }
}
