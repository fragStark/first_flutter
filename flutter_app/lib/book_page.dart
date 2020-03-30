import 'package:flutter/material.dart';
import 'package:flutterapp/faker.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  Set _likedBooks = new Set();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
//            title: Text('我的书架'),
//          backgroundColor: Colors.white70,
            title: Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.red,
                    indicatorColor: Colors.red,
                    tabs: <Widget>[
                      Tab(text: '列表',),
                      Tab(text: '视图',)
                    ],
                  ),
                )
              ],
            ),
//            bottom: TabBar(
//              tabs: <Widget>[
//                Tab(text: '列表',),
//                Tab(text: '视图',)
//              ],
//            ),
          ),
          body: TabBarView(
            children: <Widget>[
              _buildBookList(),
              _buildBookView()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookList() {
    return ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Image.network(bookList[i]["image"]),
            title: Text(bookList[i]['title']),
            subtitle: Text(bookList[i]['author']),
            trailing: IconButton(
              onPressed:(){
                setState(() {
                  if (_likedBooks.contains(bookList[i])) {
                    _likedBooks.remove(bookList[i]);
                  }else {
                    _likedBooks.add(bookList[i]);
                  }
                });
              },
              icon: _likedBooks.contains(bookList[i])? Icon(Icons.favorite,color: Colors.red,) : Icon(Icons.favorite_border),
            ),
          );
        }
    );
  }

  Widget _buildBookView() {
    return Padding(
        padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 10,
                childAspectRatio: 0.58
            ),
            itemCount: bookList.length,
            itemBuilder: this._getBookView
        )
    );
  }

  Widget _getBookView(context, index) {
    return Container(
      alignment: Alignment.center,
      child: ListView(
        children: <Widget>[
          Image.network(bookList[index]['image'],fit: BoxFit.cover,),
          ListTile(
            title: Text(bookList[index]['title']),
            subtitle: Text(bookList[index]['author']),
            trailing: IconButton(
              onPressed:(){
                setState(() {
                  if (_likedBooks.contains(bookList[index])) {
                    _likedBooks.remove(bookList[index]);
                  }else {
                    _likedBooks.add(bookList[index]);
                  }
                });
              },
              icon: _likedBooks.contains(bookList[index])? Icon(Icons.favorite,color: Colors.red,) : Icon(Icons.favorite_border),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.yellow
      ),
    );
  }
}

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Image.network(bookList[i]["image"]),
            title: Text(bookList[i]['title']),
            subtitle: Text(bookList[i]['author']),
            trailing: IconButton(
              icon: Icon(Icons.favorite),
              onPressed:(){
                debugPrint(bookList[i]['author']);
                Icon(Icons.favorite,color: Colors.red,);
              },
            ),
          );
        }
    );
  }
}
// 第一种实现
class BookView extends StatelessWidget {

  List<Widget> _getBookView() {
    var list = new List<Widget>();
    for(var i = 0; i<bookList.length; i++) {
      list.add(Container(
        height: 500,
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Image.network(bookList[i]['image'],fit: BoxFit.cover,),
            ListTile(
              title: Text(bookList[i]['title']),
              subtitle: Text(bookList[i]['author']),
              trailing: IconButton(
                icon: Icon(Icons.favorite),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(),
            color: Colors.yellow
        ),
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10, //组件水平之间的距离
      mainAxisSpacing: 5, //组件垂直之间的距离
      crossAxisCount: 2, //多少列
      childAspectRatio: 0.58, //宽和高比例
      children: this._getBookView(),
    );
  }

}

// 第二种实现
class BookView2 extends StatelessWidget {
  Widget _getBookView(context, index) {
    return Container(
      alignment: Alignment.center,
      child: ListView(
        children: <Widget>[
          Image.network(bookList[index]['image'],fit: BoxFit.cover,),
          ListTile(
            title: Text(bookList[index]['title']),
            subtitle: Text(bookList[index]['author']),
            trailing: IconButton(
              icon: Icon(Icons.favorite),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.yellow
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 10,
                childAspectRatio: 0.58
            ),
            itemCount: bookList.length,
            itemBuilder: this._getBookView
        )
    );
  }

}
