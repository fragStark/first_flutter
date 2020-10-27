import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/animation/paint.dart';
import 'package:flutterapp/animation/paper.dart';
import 'package:flutterapp/animation/watch.dart';

import 'fall_animation.dart';
import 'math_animation.dart';
class MainAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimationIndex(),
    );
  }
}


class AnimationIndex extends StatefulWidget {
  @override
  _AnimationIndexState createState() => _AnimationIndexState();
}

class _AnimationIndexState extends State<AnimationIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('首页'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  color: Colors.white70,
                  child: Text('球体下落',style: TextStyle(color: Colors.black),),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BallFall()));
                  },
                ),
                RaisedButton(
                  color: Colors.white70,
                  child: Text('绘制',style: TextStyle(color: Colors.black),),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AnimationPage()));
                  },
                ),
                RaisedButton(
                  color: Colors.white70,
                  child: Text('COS函数',style: TextStyle(color: Colors.black),),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CircleAnimation()));
                  },
                ),
                RaisedButton(
                  color: Colors.white70,
                  child: Text('钟表',style: TextStyle(color: Colors.black),),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Watch()));
                  },
                )
              ],
            ),

          ),
    );
  }
}
