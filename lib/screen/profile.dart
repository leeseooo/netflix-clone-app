import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(top: 50),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/logo.png'),
            )),
        Container(
          padding: EdgeInsets.only(top: 15),
          child: Text('leeseooo',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white)),
        ),
        Container(
          //밑줄
          padding: EdgeInsets.all(15),
          width: 140,
          height: 5,
          color: Colors.red,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Linkify(
            onOpen: (link) async {
              //링크 여는것과 같이 바로실행되지 않는기능은 async&await를 통해 비동기로 처리 가능
              if (await canLaunch(link.url)) {
                await launch(link.url);
              }
            },
            text: "https://github.com/leeseooo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            linkStyle: TextStyle(color: Colors.white),
          ),
        ),
        Container(
            padding: EdgeInsets.all(10),
            child: FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.edit, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '프로필 수정하기',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )))
      ],
    )));
  }
}
