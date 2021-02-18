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
                            )
                          ],
                        ))),
                  )))
            ],
          ),
          // makeMenuButton(),
        ],
      ),
    )));
  }
}
