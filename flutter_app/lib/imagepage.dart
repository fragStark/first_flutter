import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'imageTest',
      home: ImageRoundedLocal(),
    );
  }

}

class ImageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Image Test',
        ),
      ),
      body: Center(
        child: Container(
          child: Image.network(
             'https://tse4-mm.cn.bing.net/th/id/OIP.E7is_-bvKsAdZ3N2isLmSgAAAA?w=162&h=206&c=7&o=5&dpr=1.25&pid=1.7',
//            alignment: Alignment.topLeft,
            fit: BoxFit.cover,
//          repeat: ImageRepeat.repeatY,
          ),
          width: 300,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.yellow
          ),
        ),
      ),
    );
  }

}
// 圆角图形实现一
class ImageRounded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Image Test',
        ),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: NetworkImage('https://tse2-mm.cn.bing.net/th/id/OIP.0sjRxOrW4VSDI2CqcprkVgHaLH?w=200&h=300&c=7&o=5&dpr=1.25&pid=1.7'),
              fit: BoxFit.cover
            )
          ),
        ),
      ),
    );
  }

}

// 圆角图形实现二
class ImageRounded2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('圆角Image'),
      ),
      body: Center(
        child: Container(
          child: ClipOval(
            child: Image.network(
              'https://tse4-mm.cn.bing.net/th/id/OIP.RMp8sfrvpc1R0pAQhB4lJgHaJQ?w=203&h=254&c=7&o=5&dpr=1.25&pid=1.7',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

}

class ImageRoundedLocal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('圆角Image'),
      ),
      body: Center(
        child: Container(
          child: ClipOval(
            child: Image.asset(
              'assets/images/gyy.png',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

}