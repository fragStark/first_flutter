import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/scheduler.dart';

class CircleAnimation extends StatefulWidget {
  @override
  _CircleAnimationState createState() => _CircleAnimationState();
}

class _CircleAnimationState extends State<CircleAnimation> {
//  AnimationController _controller;
//  Animation<double> _animationX;
//  Animation<double> _animationY;

  double x = 0.0;
  double y= 10.0;
  double paintX = 0.0;
  double paintY= 0.0;
  bool isAdd = true;
  var w = 0.0;
  void _paint(_){
    if (!mounted) {
      return;
    }
    w = MediaQuery.of(context).size.width;
    if(isAdd){
      x +=1;
      if(x>(MediaQuery.of(context).size.width-20)/20){
        isAdd = false;
      }
    }else {
      x -=1;
      if(x<0){
        isAdd = true;
      }
    }
    y = math.cos(x)+10.0;
    paintX = 20*x;
    paintY = 20*y;

    setState(() {
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    y = math.cos(x)+10.0;

//    _controller = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
//
//    _animationX = Tween(begin: 0.0, end: 15.0).animate(_controller)..addStatusListener((status) {
//      setState(() {
//
//      });
//    });
//    _animationY = Tween(begin: 0.0, end: 1.0).animate(_controller)..addStatusListener((status) { });
//    _controller.forward();

    Ticker(_paint)..start();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Ticker(_paint)..dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text( "圆周动画"),),
      body:Stack(
        children: <Widget>[
          Positioned(
            top:paintY,
            left:paintX,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),


    );
  }
}
