import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SystemMenu extends StatefulWidget {
  @override
  _SystemMenuState createState() => _SystemMenuState();
}

class _SystemMenuState extends State<SystemMenu> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "测试",
      home: Scaffold(
        appBar: AppBar(
          title: Text('文字'),
        ),
        body: _buildFunction(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildFunction(){
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "第一行文字,第一行文字,第一行文字,第一行文字,第一行文字,第一行文字",
              textAlign:TextAlign.right,
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.yellow,backgroundColor: Colors.green,fontSize: 24,decoration: TextDecoration.lineThrough)),
          Text(
              "第二行文字",
              textScaleFactor: 1.0,
              textAlign:TextAlign.left,
//              textDirection: TextDirection.rtl,
              style: TextStyle(color: Colors.yellow,backgroundColor: Colors.green,fontSize: 24)),
          Text.rich(TextSpan(
            children: [TextSpan(
              text: '这是个网址：',
              style: TextStyle(color: Colors.black,fontSize: 18)
            ),TextSpan(
              text: 'www.google.com',
              style: TextStyle(color: Colors.blue,fontSize: 24),
            )
            ]
          ))
        ],
      ),
    );
  }

}
