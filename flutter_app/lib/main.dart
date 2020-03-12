import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 18);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0 Home',
      style: optionStyle,
    ),
    Text(
      'Index 0 Home',
      style: optionStyle,
    ),
    Text(
      'Index 0 Home',
      style: optionStyle,
    )
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
      body: Align(alignment: Alignment.center, child: Text('这是Body'),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      persistentFooterButtons: [
//        DropdownButton(
//          icon: Icon(Icons.add),
//        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
        RaisedButton(
          child: Text('这是',style: TextStyle(color: Colors.green),),
          onPressed: () {},
        ),
        RaisedButton(
          child: Text('底部',style: TextStyle(color: Colors.green),),
          onPressed: () {},
        ),
        RaisedButton(
          child: Text('按钮',style: TextStyle(color: Colors.green),),
          onPressed: () {},
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
        fixedColor: Colors.white,
        backgroundColor: Colors.orangeAccent,
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      primary: true,
      drawerScrimColor: Colors.red,
    );
  }
}
