import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/like.dart';
import 'music.dart';
import 'photo.dart';
import 'video.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '底部导航',
      home: new BottomNavigationWidget(),
    );
  }

}

class BottomNavigationWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new BottomNavigationWidgetState();
  }
}
class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  List<Widget> pages = new List();
  int _currentIndex = 0;
  @override
  void initState() {
    pages
        ..add(new PhotoPage())
        ..add(new MusicPage())
        ..add( new VideoPage());
  }
  Widget build(BuildContext context) {
    return new Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.orange,
        backgroundColor: Colors.white,
        onTap: (int i) {
          setState(() {
            _currentIndex = i;
          });
        },
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.insert_photo),
            title: new Text('照片'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.library_music),
            title: new Text('音乐'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.live_tv),
            title: new Text('视频'),
          )
        ],
      ),
    );
  }

}

