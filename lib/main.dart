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
      theme: ThemeData.light(),
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
      elevation: 0.0,
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
                _talkItem('Hello World 1', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 2', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 3', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 4', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 5', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 6', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 7', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 8', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 9', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 10', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 11', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 12', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 13', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 14', Icon(Icons.account_circle, size: 45.0)),
                _talkItem('Hello World 15', Icon(Icons.account_circle, size: 45.0)),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sms),
            label: 'トーク',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'タイムライン',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wysiwyg),
            label: 'ニュース',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'ウォレット',
          ),
        ],
        selectedFontSize: 9.0,
        unselectedFontSize: 9.0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _talkItem(String title, Icon icon) {
    return Container(
      height: 70.0,
      child:ListTile(
        tileColor: Colors.white,
        leading: icon,
        title: Text(
          title,
          style: TextStyle(
              color:Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600
          ),
        ),
        subtitle: Text('サブタイトル'),
        trailing: Text(
          '昨日',
          style: TextStyle(
            fontSize: 10.0,
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

