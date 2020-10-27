import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:music_player/music_player.dart';

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
//  MusicPlayer musicPlayer;
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Initializing the Music Player and adding a single [PlaylistItem]
  Future<void> initPlatformState() async {
//    musicPlayer = MusicPlayer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的音乐'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
//          onPressed: () => musicPlayer.play(MusicItem(
//            trackName: 'Sample',
//            albumName: 'Sample Album',
//            artistName: 'Sample Artist',
//            url: 'https://goo.gl/5RQjTQ',
////            coverUrl: 'https://goo.gl/Wd1yPP',
//            duration: Duration(seconds: 255),
//          )),
          child: Text('Play'),
        ),
      ),
    );
  }
}

