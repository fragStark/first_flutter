import "dart:ui" as ui show window;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/like.dart';

import '../listviewpage.dart';

class PhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.android),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>LikeApp()
                )
              );
            },
          )
        ],
      ),
      body: ListImage(),
    );
  }
}
