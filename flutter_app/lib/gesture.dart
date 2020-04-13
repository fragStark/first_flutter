import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  @override
  _GesturePageState createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  var _viewString = "123";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("手势检测"),
      ),
      body: _buildZoomPhoto(),
    );
  }

  Widget _buildClick() {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 400,
            color: Colors.blue,
            child: Text(
              _viewString,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          onTap: () => click("单击"),
          onDoubleTap: () => click("双击"),
          onLongPress: () => click("长按"),
        ),
      ),
    );
  }

  void click(String text) {
    setState(() {
      _viewString = text;
    });
  }

  double _top = 0.0;
  double _left = 200.0;
// 可以移动的字母A
  Widget _buildMoved() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            child: CircleAvatar(
              child: Text("A"),
            ),
            onPanDown: (DragDownDetails e) {
              debugPrint("按下的位置：${e.globalPosition}");
            },
            onPanUpdate: (DragUpdateDetails e) {
              setState(() {
//                  _left += e.delta.dx;
                _top += e.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails e) {
              debugPrint(e.velocity.toString());
            },
          ),
        )
      ],
    );
  }

  double _width = 100.0;
  Widget _buildZoomPhoto(){
    return Center(
      child: GestureDetector(
        child: Icon(Icons.add_alert,color: Colors.orange,size: _width,),
//        child: Image.asset('assets/images/yeye.png', width: _width,),
        onScaleUpdate: (ScaleUpdateDetails details){
          setState(() {
            _width = 200 * details.scale.clamp(0.8, 3.0);
          });
        },
      ),
    );
  }

  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false;

  Widget _buildClickChangeColor(){
    return Center(
      child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text:'Hello,小咪'),
              TextSpan(
                text: "点我变色",
                style: TextStyle(
                    fontSize: 30.0,
                    color: _toggle ? Colors.blue : Colors.red
                ),
                recognizer: _tapGestureRecognizer
                  ..onTap = () {
                    setState(() {
                      _toggle = !_toggle;
                    });
                  },
              ),
              TextSpan(text: "你的世界"),
            ],
          )
      ),
    );
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }


}
