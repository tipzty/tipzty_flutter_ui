import 'package:flutter/material.dart';
import 'package:tipzty_flutter_ui/shelf.dart';
import 'package:tipzty_flutter_ui/src/widgets/box_count_views.dart';
import 'package:tipzty_flutter_ui/src/widgets/button_follow.dart';

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
      body: SizedBox.expand(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('ButtonPrimary', style: TextStyle(fontSize: 16)),
          SizedBox(
              width: 100,
              height: 40,
              child: ButtonPrimary(
                text: 'Button',
                onPressed: () {},
              )),
          Text('ButtonFollow', style: TextStyle(fontSize: 16)),
          ButtonFollow(
            onPressed: () {},
          ),
          Text('FeedItemHeader', style: TextStyle(fontSize: 16)),
          SizedBox(
            width: 630,
            child: FeedItemHeader(
              onPressedAvatar: () {},
              onPressedFollow: () {},
              ocupation: "Maquilladora",
              fullName: "Ana Sofia",
              nickName: "geraldexcellent",
              avatar:
                  "https://storage.googleapis.com/tipzty_images/users/80c51ee4-3bd3-11eb-bbf0-0242ac110002.png",
            ),
          ),
          Text('FeedItemHeader', style: TextStyle(fontSize: 16)),
          BoxCountViews(100000),
        ],
      )),
    );
  }
}
