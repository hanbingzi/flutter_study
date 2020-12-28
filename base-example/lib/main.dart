import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//创建一个容器
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

//class Home extends StatefulWidget {
//  Home({Key key}) : super(key: key);
//
//  @override
////  _HomeState createState() => _HomeState();
//
//  _HomeState createState() {
//    return new _HomeState();
//  }
//}
//void _onItemTapped(int index) {
//  setState(() {
//    _selectedIndex = index;
//  });
//}

class Home extends StatelessWidget {
  int _selectedIndex = 0;
  final _widgetOptions = [
    Text("home"),
    Text("friends"),
    Text("explore"),
    Text("my"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("七言"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                tooltip: "添加好友",
                onPressed: () => {print("添加好友---")},
              ),
              IconButton(
                icon: Icon(Icons.search),
                tooltip: "搜索",
                onPressed: () => {print("搜索---")},
              )
            ],
            bottom: TabBar(
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(text: "推荐"),
                Tab(text: "关注"),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("推荐"),
              ),
              Center(
                child: Text("关注"),
              ),
            ],
          ),
//
//            body: Center(
//              child: _widgetOptions.elementAt(_selectedIndex),
//            ),
//            bottomNavigationBar: BottomNavigationBar(
//              type: BottomNavigationBarType.fixed,
//              currentIndex: _selectedIndex,
//              onTap: _onItemTapped,
//              items: [
//                BottomNavigationBarItem(
//                    icon: Icon(Icons.home), title: Text("home")),
//                BottomNavigationBarItem(
//                    icon: Icon(Icons.list), title: Text("friends")),
//                BottomNavigationBarItem(
//                    icon: Icon(Icons.explore), title: Text("explore")),
//                BottomNavigationBarItem(
//                    icon: Icon(Icons.person), title: Text("my"))
//              ],
//            )
        ));
  }
}
