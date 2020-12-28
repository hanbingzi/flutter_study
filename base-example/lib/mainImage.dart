import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//创建一个容器
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image demo',
      home: new ImageDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Image.network(
        'https://www.baidu.com/img/PCfb_5bf082d29588c07f842ccde3f97243ea.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
