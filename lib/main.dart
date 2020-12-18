import 'package:flutter/material.dart';
import 'package:tipzty_flutter_ui/shelf.dart';

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
              ))
        ],
      )),
    );
  }
}
