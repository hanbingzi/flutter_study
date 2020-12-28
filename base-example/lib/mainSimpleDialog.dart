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
            child: SimpleDialog(
              title: const Text('对话框标题'),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    print('11111');
                  },
                  child: const Text('第一行信息'),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    print('222222');
                  },
                  child: const Text('第二行信息'),
                )
              ],
            ),
          ),
        ));
  }
}
