import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//创建一个容器
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image demo',
      home: new TextDemo(),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('文本组件'),
        ),
        body: new Center(
          child: new IconButton(icon: Icon(Icons.volume_up, size: 48,),
              tooltip: '按下操作',
              onPressed: () {
                print('按下操作');
              }),
        )
    );
  }
}
