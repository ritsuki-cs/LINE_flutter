import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final _formKey = GlobalKey<FormState>();

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset('images/search_bar.png'),
              Positioned(
                bottom: 16,
                right: 27,
                child: Icon(Icons.qr_code_scanner, color: Colors.black87, size: 18.0),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                _talkItem('Hello World 1', Icon(Icons.settings)),
                _talkItem('Hello World 2', Icon(Icons.settings)),
                _talkItem('Hello World 3', Icon(Icons.settings)),
                _talkItem('Hello World 4', Icon(Icons.settings)),
                _talkItem('Hello World 5', Icon(Icons.settings)),
              ],
            ),
          )
        ],
      )
    );
  }

  Widget _talkItem(String title, Icon icon) {
    return Container(
      decoration: new BoxDecoration(
          border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
      ),
      child:ListTile(
        leading: icon,
        title: Text(
          title,
          style: TextStyle(
              color:Colors.black,
              fontSize: 18.0
          ),
        ),
        onTap: () {
          print("onTap called.");
        }, // タップ
        onLongPress: () {
          print("onLongPress called.");
        }, // 長押し
      ),
    );
  }
}

