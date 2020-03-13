import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: '音乐',
      home: new Music(),
    );
  }
}

class Music extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MusicState();
  }
}

class MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('我的音乐'),
        centerTitle: true,
      ),
      body: Center(
        child: new Text('这是音乐',style: TextStyle(fontSize: 30)),
      ),
    );
  }

}
