import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin {

  Animation<double> _animation;
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("动画"),),
      body: _buildAnimation(),
    );
  }

  Widget _buildAnimation() {
    return Center(
      child: Icon(Icons.favorite, color: Colors.red, size: _animation.value,),
    );
  }

  @override
  void initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animation = new Tween(begin: 0.0,end: 300.0).animate(_controller)..addListener(() {
      setState(() {
      });
    });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
