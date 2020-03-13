import "dart:ui" as ui show window;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: '图片',
      home: new Photo(),
    );
  }
}

class Photo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PhotoState();
  }
}

class PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('我的照片'),
      ),
      body: Container(
        child: new Image.asset(
            "assets/images/blue.png",
            width: MediaQueryData.fromWindow(ui.window).size.width),
      ),
    );
  }

}
