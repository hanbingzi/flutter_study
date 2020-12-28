import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

//创建一个容器
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new SizedBox(
      height: 250,
      child: new Card(
        child: new Column(
          children: <Widget>[
            new ListTile(
              title: new Text('sdjf;lajfka;lskjd;ls'),
              subtitle: new Text('i love you'),
              leading: new Icon(
                Icons.home,
                color: Colors.lightBlue,
              ),
            ),
            new Divider(),
            new ListTile(
              title: new Text('sdjasfdsadfsfdf;lajfka;lskjd;ls'),
              subtitle: new Text('love'),
              leading: new Icon(
                Icons.directions,
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );

    return new MaterialApp(
      title: '悬停按钮',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Card布局'),
        ),
        body: new Center(
          child: card,
        ),
      ),
    );
  }
}
