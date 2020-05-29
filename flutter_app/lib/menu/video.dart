import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/util/faker.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/cupertino.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/videos/animals.mp4',
    );

    _controller.addListener(() {
      setState(() {
      });
    });
    _controller.setLooping(true);
    _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('视频'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
              ),
              Text('视频'),
              Container(
                padding: EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      VideoPlayer(_controller),
                      ClosedCaption(text: _controller.value.caption.text,),
                      _PlayPauseOverlay(controller: _controller),
                      VideoProgressIndicator(_controller,allowScrubbing: true,)
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class _PlayPauseOverlay extends StatelessWidget{
  final VideoPlayerController controller;
  const _PlayPauseOverlay({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: Duration(microseconds: 50),
          reverseDuration: Duration(microseconds: 200),
          child: controller.value.isPlaying
              ? SizedBox.shrink()
              : Container(
            color: Colors.black12,
            child: Center(
              child: Icon(Icons.play_arrow,color: Colors.white,size: 100.0,),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        )
      ],
    );
  }
}

class _PlayerVideoAndProPage extends StatefulWidget {
  @override
  _PlayerVideoAndProPageState createState() => _PlayerVideoAndProPageState();
}

class _PlayerVideoAndProPageState extends State<_PlayerVideoAndProPage> {
  VideoPlayerController _videoPlayerController;
  bool startedPlaying = false;


  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.asset('assets/videos/animals.mp4');
    _videoPlayerController.addListener(() {
      if (startedPlaying && !_videoPlayerController.value.isPlaying){
        Navigator.pop(context);
      };
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  Future<bool> started() async {
    await _videoPlayerController.initialize();
    await _videoPlayerController.play();
    startedPlaying = true;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: Center(
        child: FutureBuilder<bool>(
          future: started(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.data == true) {
              return AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              );
            } else {
              return const Text('waiting for video to load');
            }
          },
        ),
      ),
    );
  }
}
