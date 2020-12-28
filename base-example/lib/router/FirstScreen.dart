import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study/router/SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Navigator'),
      ),
      body: new Center(
        child: new RaisedButton(
            child: Text('查看商品详情'),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new SecondScreen()));
            }),
      ),
    );
  }
}
