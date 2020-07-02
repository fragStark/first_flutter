import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Watch extends StatefulWidget {

  final double radius;

  const Watch({Key key, this.radius = 200.0}) : super(key: key);
  @override
  _WatchState createState() => _WatchState();
}

class _WatchState extends State<Watch> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget _buildRing(){
    return Container(
      child: Center(
        child: Container(
            height: widget.radius*2,
            width: widget.radius*2,
            decoration: BoxDecoration(
//              border: Border.all(color: Colors.blue),
                color: Colors.black12,
                shape: BoxShape.circle
            ),
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
//                    border: Border.all(color: Colors.blue),
                    color: Colors.white,
                    shape: BoxShape.circle
                ),
              ),
            )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body:_buildRing(),
    );
  }
}

class MyRing extends CustomPainter{
  Color lineColor;
  Color completeColor;
  double startPercent;
  bool isComplete;
  double width;


  MyRing(this.lineColor, this.completeColor, this.startPercent, this.isComplete,
      this.width);

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
//    Paint line = Paint(0)
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}
