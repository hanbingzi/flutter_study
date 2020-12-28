import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(items: new List<String>.generate(500, (i) => "Item $i")));

//创建一个容器
class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image demo',
      home: new GridViewDemo(),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "grid view",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('网格列表组件'),
          ),
          body: new GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 30,
            crossAxisCount: 3,
            children: <Widget>[
              const Text("孔孟颜曾"),
              const Text("孔孟颜曾"),
              const Text("孔孟颜曾"),
              const Text("孔孟颜曾"),
              const Text("孔孟颜曾"),
              const Text("孔孟颜曾"),
              const Text("孔孟颜曾"),
              const Text("孔孟颜曾"),
              const Text("孔孟颜曾"),
              const Text("孔孟颜曾"),
              const Text("孔孟颜曾"),
              const Text("孔孟颜曾")
             ],
          )),
    );
  }
}
