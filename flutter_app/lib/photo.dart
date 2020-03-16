import "dart:ui" as ui show window;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '图片',
      home: new Photo(),
    );
  }
}

class Photo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PhotoState();
  }
}

class PhotoState extends State<Photo> {
  final contents = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('我的照片'),
      ),
//      body: Container(
//        child: new Image.asset(
//            "assets/images/blue.png",
//            width: MediaQueryData.fromWindow(ui.window).size.width),
//      ),
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    return new ListView.builder(
      itemBuilder: (context, i) {

      },
    );
  }

  void addContent() {
    contents.add(new Scaffold(

    ));
  }

}
