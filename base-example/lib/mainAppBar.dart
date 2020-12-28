import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//创建一个容器
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new LayoutPage(), title: 'materialApp 示例');
  }
}

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
            tooltip: '搜索',
            onPressed: () {},),
          IconButton(icon: Icon(Icons.add),
            tooltip: '添加',
            onPressed: () {},)
        ],
      ),
    );
  }


}