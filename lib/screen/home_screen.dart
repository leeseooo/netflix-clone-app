import 'package:flutter/material.dart';
import 'package:flutter_app/model/model_movie.dart';
import 'package:flutter_app/widget/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '브리저튼',
      'keyword': '로맨스/시대물',
      'poster': 'bridgerton.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': '오펀 블랙',
      'keyword': 'SF/드라마/액션',
      'poster': 'orphanblack.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': '러브 앤 아나키',
      'keyword': '로맨스/코미디',
      'poster': 'loveandanarchy.jpeg',
      'like': false
    }),
    Movie.fromMap({
      'title': '기묘한 이야기',
      'keyword': 'SF/미스터리',
      'poster': 'strangethings.png',
      'like': false
    }),
  ];
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(children: <Widget>[
          CarouselImage(movies: movies),
          TopBar(),
        ])
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              'images/logo.png',
              fit: BoxFit.contain,
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text(
                'Tv 프로그램',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text(
                '영화',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text(
                '내가 찜한 콘텐츠',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ));
  }
}
