import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_app/model/model_movie.dart';

class DetailScreen extends StatefulWidget {
  final Movie movie;
  DetailScreen({this.movie});
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool like = false;
  void initState() {
    super.initState();
    like = widget.movie.like; //해당영화에 대한 찜하기상태
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SafeArea(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('images/' + widget.movie.poster),
                    fit: BoxFit.cover,
                  )),
                  child: ClipRect(
                      child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                        alignment: Alignment.center,
                        color: Colors.black.withOpacity(0.1),
                        child: Container(
                            child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                              child:
                                  Image.asset('images/' + widget.movie.poster),
                              height: 300,
                            ),
                            Container(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  '99% 일치 2019 15+ 시즌 1개',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 13),
                                )),
                            Container(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  widget.movie.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                )),
                            Container(
                                padding: EdgeInsets.all(3),
                                child: FlatButton(
                                  onPressed: () {},
                                  color: Colors.red,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.play_arrow),
                                      Text('재생'),
                                    ],
                                  ),
                                )),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Text(widget.movie.toString()),
                            ),
                            Container(
                                padding: EdgeInsets.all(5),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '이서영이 추천하는 넷플릭스',
                                  style: TextStyle(
                                      color: Colors.white60, fontSize: 12),
                                ))
                          ],
                        ))),
                  ))),
              Positioned(
                  child: AppBar(
                //팝업다이얼로그에 닫기버튼 자동으로 생성
                backgroundColor: Colors.transparent,
                elevation: 0,
              ))
            ],
          ),
          Container(
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                      child: FlatButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              like ? Icon(Icons.check) : Icon(Icons.add),
                              Padding(
                                padding: EdgeInsets.all(5),
                              ),
                              Text(
                                '내가 찜한 컨텐츠',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white60),
                              )
                            ],
                          ))),
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                      child: FlatButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.thumb_up),
                              Padding(padding: EdgeInsets.all(5)),
                              Text(
                                '평가',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white60),
                              )
                            ],
                          ))),
                  Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                      child: FlatButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.send),
                              Text(
                                '공유',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white60),
                              )
                            ],
                          )))
                ],
              ))
        ],
      ),
    )));
  }
}
