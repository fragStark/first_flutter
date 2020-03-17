import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: TextPageContent(),
    );
  }
}

class TextPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('这是text测试页'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            'Flutter Widget采用现代响应式框架构建，这是从 React 中获得的灵感，中心思想是用widget构建你的UI。',
            textAlign: TextAlign.left,
            overflow: TextOverflow.fade,
//            maxLines: 1,
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
//              decoration: TextDecoration.underline,
              decorationColor: Colors.black
            ),
          ),
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.red,
              width: 5.0,
              style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.all(
//              圆角矩形
              Radius.circular(20),
            ),
          ),
          transform: Matrix4.translationValues(10, 10, 10),
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }

}