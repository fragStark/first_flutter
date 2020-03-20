import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  final _username = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('按钮界面'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildName(),
          _buildPassword(),
          Row(
              children: <Widget>[
                _buildRegisterButton(),
              ]
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: OutlineButton(
                  child: Text('注册', style: TextStyle(fontSize: 24, color: Colors.black),),
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  onPressed: () {
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  ///注册
  Widget _buildRegisterButton() {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        child: Text('登录', style: TextStyle(fontSize: 24, color: Colors.white),),
        color: Colors.orange,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        onPressed: () {
        },
      ),
    );
  }

  /// 输入框
  Widget _buildName() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(left: 40,right: 40),
      width: MediaQuery.of(context).size.width,
      child: TextField(
        decoration: InputDecoration(
//          focusColor: Colors.orange,
          hintText: '请输入',
          prefixIcon: Icon(Icons.perm_identity, color: Colors.orange,),
          border: OutlineInputBorder()
        ),
      ),
    );
  }
  Widget _buildPassword() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.only(left: 40,right: 40),
      width: MediaQuery.of(context).size.width,
      child: TextField(
        cursorColor: Colors.orange,
        decoration: InputDecoration(
            fillColor: Colors.orange,
            hintText: '请输入',
            prefixIcon: Icon(Icons.lock_outline, color: Colors.orange,),
            border: OutlineInputBorder()
        ),
        obscureText: true,
        onTap: (){},
      ),
    );
  }
}
