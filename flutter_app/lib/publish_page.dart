import 'package:flutter/material.dart';
import 'package:flutterapp/faker.dart';

class PublishPage extends StatefulWidget {
  @override
  _PublishPageState createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {
  var _title = TextEditingController();
  var _author = TextEditingController();
  var _image = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('发布界面'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildTitle(),
          _buildAuthor(),
          _buildImage(),
          Row(
              children: <Widget>[
                _buildPublishButton(),
              ]
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
  Widget _buildTitle() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(left: 40,right: 40),
      width: MediaQuery.of(context).size.width,
      child: TextField(
        decoration: InputDecoration(
//          focusColor: Colors.orange,
            hintText: '请输入书名',
            prefixIcon: Icon(Icons.book, color: Colors.orange,),
            border: OutlineInputBorder()
        ),
        controller: _title,
        onChanged: (value) {
          _title.text = value;
        },
      ),
    );
  }
  /// 输入框
  Widget _buildAuthor() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(left: 40,right: 40),
      width: MediaQuery.of(context).size.width,
      child: TextField(
        decoration: InputDecoration(
//          focusColor: Colors.orange,
            hintText: '请输入作者',
            prefixIcon: Icon(Icons.perm_identity, color: Colors.orange,),
            border: OutlineInputBorder()
        ),
        controller: _author,
        onChanged: (value) {
          _author.text = value;
        },
      ),
    );
  }
  Widget _buildImage() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.only(left: 40,right: 40),
      width: MediaQuery.of(context).size.width,
      child: TextField(
        cursorColor: Colors.orange,
        decoration: InputDecoration(
            fillColor: Colors.orange,
            hintText: '请输入图片URL',
            prefixIcon: Icon(Icons.add_photo_alternate, color: Colors.orange,),
            border: OutlineInputBorder()
        ),
        controller: _image,
        onChanged: (value) {
          _image.text = value;
        },
      ),
    );
  }

  ///发布
  Widget _buildPublishButton() {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        child: Text('发布', style: TextStyle(fontSize: 24, color: Colors.white),),
        color: Colors.orange,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        onPressed: () {
          setState(() {
            var book = {
              "title" : _title.text,
              "author" : _author.text,
              "image" : _image.text,
            };
            bookList.add(book);
          });
        },
      ),
    );
  }
}
