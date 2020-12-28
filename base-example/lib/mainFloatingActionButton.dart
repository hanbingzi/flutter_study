import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

//创建一个容器
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '悬停按钮',
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
      body: Center(
        child: Text(
          'FloatingActionButtion示例',
          style: TextStyle(fontSize: 28),
        ),
      ),
      floatingActionButton: new Builder(
        builder: (BuildContext context) {
          return new FloatingActionButton(
            child: const Icon(Icons.add),
            tooltip: '请点击FloatingActionButton',
            foregroundColor: Colors.blue,
            elevation: 7,
            highlightElevation: 14,
            onPressed: () {
              Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text('你点击了FloatingActionButton'),
              ));
            },
            mini: false,
            shape: new CircleBorder(),
            isExtended: false,
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
