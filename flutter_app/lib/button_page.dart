import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  var _date = DateTime.now();
  var _otherDateTime = DateTime.now();
  var _otherTime = DateTime.now();
  var _other = DateTime.now();
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
          _buildDateTime(),
          _buildOtherDateTime(),
          SizedBox(height: 10,),
          _buildRegisterButton(),
          SizedBox(height: 10,),
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
          ),
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

  /// 时间框
  Widget _buildDateTime() {

    return Padding(
      padding: EdgeInsets.only(left: 40,right: 40,bottom: 20),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              formatDate(_date, [yyyy, '-', mm, '-', dd, ]),
              style: TextStyle(fontSize: 20),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        onTap: () {
          _showDateTimePicker();
        },
      ),
    );
  }
//  构建日期框
  _showDateTimePicker() async {
    var result = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year-10),
        lastDate: DateTime(DateTime.now().year+10),
    );
    debugPrint(result.toString());
    setState(() {
      this._date = result;
    });
  }

  Widget _buildOtherDateTime() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(formatDate(_otherDateTime, [yyyy, '-', mm, '-', dd,]),style: TextStyle(fontSize: 18),),
            IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: () {
                  DatePicker.showDatePicker(
                      context,
                      showTitleActions: true,
                      locale: LocaleType.zh,
                      onChanged: (date) {
                        setState(() {
                          _otherDateTime = date;
                        });
                      }
                  );
                }
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(formatDate(_otherTime, [hh, ':', nn, ':', ss,]),style: TextStyle(fontSize: 18),),
            IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: () {
                  DatePicker.showTimePicker(
                      context,
                      showTitleActions: true,
                      locale: LocaleType.zh,
                      onChanged: (date) {
                        setState(() {
                          _otherTime = date;
                        });
                      }
                  );
                }
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(formatDate(_other, [yyyy, '-', mm, '-', dd, ' ', hh, ':', nn, ':', ss,]),style: TextStyle(fontSize: 18),),
            IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: () {
                  DatePicker.showDateTimePicker(
                      context,
                      showTitleActions: true,
                      locale: LocaleType.zh,
                      onChanged: (date) {
                        setState(() {
                          _other = date;
                        });
                      }
                  );
                }
            ),
          ],
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    debugPrint(DateTime.now().toString());
    debugPrint(formatDate(DateTime(2018, 02, 02, 15, 11, 15), [yyyy, '年', mm, '月', dd, '日', hh, '时', nn, '分', ss, '秒']));
  }
}
