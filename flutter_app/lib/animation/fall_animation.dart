import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class BallFall extends StatefulWidget {
  @override
  _BallFallState createState() => _BallFallState();
}

class _BallFallState extends State<BallFall> {
  double y = 70.0;    //球高度
  double vy = -10.0;    //y轴速度
  double gravity = 0.1;   //重力
  double bounce = -0.5;   //反弹力
  double radius = 50.0;   //圆角
  final double height = 500;    //地面


  void _fall(_) {
    if (!mounted) {
      return;
    }
    y += vy;
    vy += gravity;

    if (y + radius > height) {
      y = height - radius;
      vy *= bounce;
    } else if (y - radius < 0) {
      y = 0 + radius;
      vy *= bounce;
    }

    setState(() {
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 使用一个 Ticker 在每次更新界面时运行球体下落方法
    Ticker(_fall)..start();
  }
  @override
  void dispose() {
    // TODO: implement dispose


    Ticker(_fall)..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(appBar: AppBar(title: Text('物理动画')),
      body: Column(children: <Widget>[
        Container(height: height,
          child: Stack(children: <Widget>[
            Positioned(top: y - radius,
              left: screenWidth / 2-radius,
              child: Container(width: radius * 2,
                height: radius * 2,
                decoration: BoxDecoration(
                  color: Colors.blue, shape: BoxShape.circle,),),),
          ],),),
        Expanded(child: Container(color: Colors.blue)),
      ],),);
    
  }
}
