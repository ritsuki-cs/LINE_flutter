import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LINE Rebuild',
      home: TalkRoute(),
    );
  }
}

class TalkRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: StyledText(
          textAlign: TextAlign.center,
          text: "トーク <icon/> ",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
          styles: {
            'icon': IconStyle(Icons.arrow_drop_down, color: Colors.black),
          }
      ),
      centerTitle: false,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.video_call_outlined, color: Colors.black),
            onPressed: () {},
        ),
        IconButton(
            icon: Icon(Icons.playlist_add_check_rounded, color: Colors.black),
            onPressed: () {},
        ),
        IconButton(
            icon: Icon(Icons.sms_outlined, color: Colors.black),
            onPressed: () {},
        )
      ],
      backgroundColor: Colors.white,
    );

    return Scaffold(
      appBar: appBar,
      body: Text('Hello World'),
    );
  }
}