import 'package:flutter/material.dart';
import 'package:flutterapp/faker.dart';

class BookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Page',
      home: BookState(),
    );
  }
}

class BookState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的书架'),
      ),
      body: BookView(),
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
            trailing: Icon(Icons.favorite),
          );
        }
    );
  }
}

class BookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
      children: <Widget>[
        ListTile(title: Text('元素1')),
        ListTile(title: Text('元素2')),
        ListTile(title: Text('元素3'))
      ],
    );
  }

}
