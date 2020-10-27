import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/ui/menu_page.dart';
import 'menu/home.dart';


//void main() => runApp(new Home());
void main() => runApp(new SystemMenu());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MainPage(),
    );
  }
}
const TextStyle optionStyle = TextStyle(fontSize: 18);
class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0 Home',
      style: optionStyle,
    ),
    Text(
      'Index 1 Category',
      style: optionStyle,
    ),
    Text(
      'Index 2 Settings',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      debugPrint('$_currentIndex');
      _currentIndex = index;
    });

//    if (_currentInedx == 1){
//      Navigator.of(context).push(new MaterialPageRoute(
//          builder: (BuildContext context) {
//            return  new LikeApp();
//          }
//      ));
//    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('这是AppBar'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: Drawer(
        child: Container(
          alignment: Alignment.center,
          child: Text('这是Drawer',style: TextStyle(fontSize: 18),),
        ),
      ),
//      body: Align(alignment: Alignment.center, child: Text('这是Body'),),
//      body: WillPopScope(
//        child: PageView(
//          children: <Widget>[
//            LikeApp(),
////            HomePage()
//          ],
//        ),
//      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      persistentFooterButtons: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
        RaisedButton(
          child: Text('跳转首页',style: TextStyle(color: Colors.green),),
          onPressed: () {
//            Navigator.pushNamed(context, '/like');
          },
        ),
        RaisedButton(
          child: Text('跳转like',style: TextStyle(color: Colors.green),),
          onPressed: () {
//            Navigator.pushNamed(context, '/like');
          },
        ),
        RaisedButton(
          child: Text('按钮',style: TextStyle(color: Colors.green),),
          onPressed: () {},
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        backgroundColor: Colors.orangeAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类'),
          ),BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('设置'),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      primary: true,
      drawerScrimColor: Colors.red,
    );
  }
}
