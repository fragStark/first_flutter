import 'package:flutter/material.dart';
import 'package:flutterapp/util/faker.dart';

import 'imagepage.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Test',
      home: ListViewData(),
    );
  }
}

class ListViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Test'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            title: Text('撤离武汉他们哭了 让青春在党和人民最需要的地方绽放'),
            subtitle: Text('巴西超1350名囚犯越狱 警卫被劫为人质 |格力员工聚会被董明珠开除全球确诊近18万 新冠疫苗在美开始人体试验'),
            trailing: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: Image.network('https://n.sinaimg.cn/spider202038/426/w690h536/20200308/535f-iqmtvwv8820991.jpg'),
            title: Text('撤离武汉他们哭了 让青春在党和人民最需要的地方绽放'),
            subtitle: Text('巴西超1350名囚犯越狱 警卫被劫为人质 |格力员工聚会被董明珠开除全球确诊近18万 新冠疫苗在美开始人体试验'),
          ),
          ListTile(
            title: Text('撤离武汉他们哭了 让青春在党和人民最需要的地方绽放'),
            subtitle: Text('巴西超1350名囚犯越狱 警卫被劫为人质 |格力员工聚会被董明珠开除全球确诊近18万 新冠疫苗在美开始人体试验'),
          ),
        ],
      )
    );
  }
}


class ListImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListViewImageContent();
  }
}

// 垂直布局的列表
class ListViewImageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: <Widget>[
          Image.network('http://5b0988e595225.cdn.sohucs.com/images/20190126/e5ae4556b52042d3aa6355ef7d0efbdd.jpeg'),
          Image.network(
            'https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D400/sign=41bbbd1af7faaf5184e380bfbc5594ed/314e251f95cad1c82826e91b753e6709c93d5168.jpg',
            fit: BoxFit.cover,
          ),
          Image.network('https://tse4-mm.cn.bing.net/th/id/OIP.QarhoCoV4rMOQTIU98m7XAHaEK?w=300&h=168&c=7&o=5&dpr=1.25&pid=1.7', fit: BoxFit.cover,),
          Image.network('https://tse2-mm.cn.bing.net/th/id/OIP.XnjAowlcXAGtJhNxKZgmQwHaE6?w=260&h=171&c=7&o=5&dpr=1.25&pid=1.7', fit: BoxFit.cover,),
          Image.network('https://tse3-mm.cn.bing.net/th/id/OIP.xZ79FyW8GDjJ4Y6yorzuDQAAAA?w=300&h=205&c=7&o=5&dpr=1.25&pid=1.7', fit: BoxFit.cover,),
          Image.network('https://tse3-mm.cn.bing.net/th/id/OIP.6kTZEhMDONmGuq6tQWUoQgHaE8?w=300&h=200&c=7&o=5&dpr=1.25&pid=1.7', fit: BoxFit.cover,),
          Image.network('https://tse4-mm.cn.bing.net/th/id/OIP.GTslefI-CNX7PINt9JSAyQHaE8?w=300&h=200&c=7&o=5&dpr=1.25&pid=1.7', fit: BoxFit.cover,),
          Image.network('https://tse1-mm.cn.bing.net/th/id/OIP.5-cb7n8NKA6xxKa4ChcHpwHaE7?w=297&h=197&c=7&o=5&dpr=1.25&pid=1.7', fit: BoxFit.cover,)
        ],
    );
  }
}

// 水平布局的列表
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100,
            color: Colors.yellow,
            child: ListView(
              children: <Widget>[
                Text('标题1'),
                Image.network('https://pic4.zhimg.com/v2-59efcd4cd4d6c5b6ae7801ea94678320_b.jpg'),
                Text('标题2'),
                Image.network('https://cn.bing.com/th?id=OIP.jyqDbZiaJiVNCONjcbxhXgHaEK&pid=Api&rs=1'),
                Text('标题3'),
                Image.network('http://pic15.nipic.com/20110622/6766382_171833374560_2.jpg'),
                Text('标题4'),
                Image.network('https://cn.bing.com/th?id=OIP.x1YpNuQOoNs6V8i3aQVwNwHaHY&pid=Api&rs=1'),
              ],
            ),
          ),
          Container(
            width: 100,
            color: Colors.green,
          ),
          Container(
            width: 100,
            color: Colors.lightGreenAccent,
          ),
          Container(
            width: 100,
            color: Colors.grey,
          )
        ],
      ),
    );

  }

}

// list.build
class ListViewData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookList.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Image.network(bookList[i]["image"]),
            title: Text(bookList[i]['title']),
            subtitle: Text(bookList[i]['author']),
          );
        }
    );
  }
}

