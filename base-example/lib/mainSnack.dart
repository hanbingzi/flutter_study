import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

//创建一个容器
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '悬停按钮',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dialog'),
        ),
        body: Center(
          child: Text('SnackBar示例'),
        ),
        floatingActionButton: new Builder(
          builder: (BuildContext context) {
            return new FloatingActionButton(onPressed: () {
              Scaffold.of(context)
                  .showSnackBar(new SnackBar(content: new Text('显示snackBar')));
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),

    );
  }
}
