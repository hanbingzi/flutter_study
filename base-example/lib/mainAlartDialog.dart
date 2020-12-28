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
            child: AlertDialog(
              title: Text('提示'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[Text('是否要删除'), Text('一旦删除数据不可修改')],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text('确定'),
                  onPressed: () {
                    print('1111');
                  },
                ),
                FlatButton(
                  child: Text('取消'),
                  onPressed: (){
                    print('2222');
                  },
                )
              ],
            ),
          ),
        ));
  }
}
