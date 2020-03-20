import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/button_page.dart';
import 'package:flutterapp/like.dart';
import 'music.dart';
import 'photo.dart';
import 'video.dart';
import 'book_page.dart';
import 'publish_page.dart';

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
      ..add(PublishPage())
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
            icon: new Icon(Icons.add,),
            title: new Text('发布', style: TextStyle(color: _currentIndex == 2 ? _activeColor : _defaultColor)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.library_music,),
            title: new Text('音乐', style: TextStyle(color: _currentIndex == 3 ? _activeColor : _defaultColor)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.video_library,),
            title: new Text('视频', style: TextStyle(color: _currentIndex == 4 ? _activeColor : _defaultColor)),
          )
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: FloatingActionButton(
          backgroundColor: this._currentIndex != 2 ? Colors.yellow : Colors.orange,
          child: IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            onPressed: (){
              setState(() {
                this._currentIndex = 2;
              });
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: UserAccountsDrawerHeader(
                        accountEmail: Text('123456789@qq.com'),
                        accountName: Text('凌霄殿的大帝'),
                        currentAccountPicture: CircleAvatar(
                          backgroundImage: NetworkImage('https://tse4-mm.cn.bing.net/th/id/OIP.RMp8sfrvpc1R0pAQhB4lJgHaJQ?w=203&h=254&c=7&o=5&dpr=1.25&pid=1.7',),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage('http://www.2qqtouxiang.com/pic/PF7130_09.jpg'), fit: BoxFit.cover)
                        ),
                      )
                  )
                ],
              ),
              _buildDrawerBody(),
            ],
          ),
          persistentFooterButtons: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
            ),
            IconButton(
              icon: Icon(Icons.business_center),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ButtonPage(),
                ));
              },
            )
          ],
        )
      ),
    );
  }

  /// 构建圆角头像
  Widget _buildAvatar() {
    return ClipOval(
      child: Image.network(
        'https://tse4-mm.cn.bing.net/th/id/OIP.RMp8sfrvpc1R0pAQhB4lJgHaJQ?w=203&h=254&c=7&o=5&dpr=1.25&pid=1.7',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildDrawerBody() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.music_note, color: Colors.red,),
          title: Text('我的音乐', style: TextStyle(fontSize: 20),),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(height: 5,thickness: 1, color: Colors.black,),
        ListTile(
          leading: Icon(Icons.bookmark, color: Colors.red,),
          title: Text('我的歌单', style: TextStyle(fontSize: 20),),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(height: 5,thickness: 1, color: Colors.black,),
        ListTile(
          leading: Icon(Icons.favorite, color: Colors.red,),
          title: Text('我的喜欢', style: TextStyle(fontSize: 20),),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=>LikeApp()
            ));
          },
        ),
        Divider(height: 5,thickness: 1, color: Colors.black,),
        ListTile(
          leading: Icon(Icons.person,color: Colors.red,),
          title: Text('我的关注', style: TextStyle(fontSize: 20),),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(height: 5,thickness: 1, color: Colors.black,),
      ],
    );
  }

}