import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp());

//创建一个容器
class MyApp extends StatefulWidget {
  // @Override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<MyApp> {
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();
  String userName;
  String password;

  void login() {
    var loginForm = loginKey.currentState;
    if (loginForm.validate()) {
      loginForm.save();
      print('username:' + userName + 'password:' + password);
    }
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'form 表单',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('form表单示例'),
          ),
          body: new Column(
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.all(16),
                child: new Form(
                    key: loginKey,
                    child: new Column(
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: '请输入用户名',
                          ),
                          onSaved: (value) {
                            userName = value;
                          },
                          onFieldSubmitted: (value) {
                          },
                        ), new TextFormField(
                          decoration: new InputDecoration(
                            labelText: '请输入密码',
                          ),
                          onSaved: (value) {
                            password = value;
                          },
                          obscureText: true,
                          validator: (value) {
                            return value.length < 6 ? "密码长度不够6位" : null;
                          },
                        )
                        ,
                        new SizedBox(
                          width: 340,
                          height: 42,
                          child: new RaisedButton(
                            onPressed: login,
                            child: new Text('登录'),
                          ),
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        )
    );
  }

}
