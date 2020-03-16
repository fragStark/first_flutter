import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '视频',
      home: new Video(),
    );
  }
}

class Video extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new VideoState();
  }
}

class VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('我的视频'),
      ),
      body: Center(
        child: new Text('这是视频',style: TextStyle(fontSize: 30)),
      ),
    );
  }

}
