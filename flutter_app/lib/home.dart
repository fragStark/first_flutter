import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'music.dart';
import 'photo.dart';
import 'video.dart';
import 'book_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '底部导航',
      home: new HomePage(),
    );
  }

}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List pages = new List<Widget>();
  int _currentIndex = 0;
  var _defaultColor = Colors.grey;
  var _activeColor = Colors.orange;
  @override
  void initState() {
    pages
      ..add(new PhotoPage())
      ..add(new BookPage())
      ..add(new MusicPage())
      ..add( new VideoPage());
    super.initState();
  }
  Widget build(BuildContext context) {
    return new Scaffold(
      body: this.pages[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.orange,
        iconSize: 35,
        type: BottomNavigationBarType.fixed,  //配置底部可以有多个按钮，底部导航多于三个时使用
//        backgroundColor: Colors.white,
        onTap: (int i) {
          setState(() {
            _currentIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.photo_library),
            title: new Text('照片', style: TextStyle(color: _currentIndex == 0 ? _activeColor : _defaultColor)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.book,),
            title: new Text('书架', style: TextStyle(color: _currentIndex == 1 ? _activeColor : _defaultColor)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.library_music,),
            title: new Text('音乐', style: TextStyle(color: _currentIndex == 2 ? _activeColor : _defaultColor)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.video_library,),
            title: new Text('视频', style: TextStyle(color: _currentIndex == 3 ? _activeColor : _defaultColor)),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          alignment: Alignment.center,
          child: Text('这是Drawer',style: TextStyle(fontSize: 18),),
        ),
      ),
    );
  }
}