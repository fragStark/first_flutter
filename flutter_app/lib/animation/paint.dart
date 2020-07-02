import 'package:flutter/material.dart';

class PaintWidget extends StatefulWidget {
  @override
  _PaintState createState() => _PaintState();
}

class _PaintState extends State<PaintWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text( "圆周动画"),),
      body:Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
