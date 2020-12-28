import 'package:flutter/material.dart';
import 'package:study/router/FirstScreen.dart';

void main() => runApp(MyApp());

//创建一个容器
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '导航首页示例1',
      home: new FirstScreen(),
    );
  }
}
