import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

//创建一个容器
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Drawer 抽屉组件示例',
      home: new LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Drawer抽屉组件示例'),
      ),
      body:  Center(
        child: new Image.network(
          'https://www.baidu.com/img/PCfb_5bf082d29588c07f842ccde3f97243ea.png',
          fit: BoxFit.fitWidth,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text('寒冰子'),
              accountEmail: new Text('qiyanbeibei@163.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage('images/1.jpeg'),
              ),
            ),
            ListTile(
              leading: new CircleAvatar(
                child: Icon(Icons.color_lens),
              ),
              title: Text('个人资料'),
            ),
            ListTile(
              leading: new CircleAvatar(
                child: Icon(Icons.photo),
              ),
              title: Text('我的相册'),
            ),
            ListTile(
              leading: new CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置'),
            ),
          ],
        ),
      ),

    );
  }
}
