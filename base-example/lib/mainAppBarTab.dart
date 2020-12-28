import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

//创建一个容器
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //啥意思
      home: new DefaultTabController(
        length: items.length,
        child: new Scaffold(
          appBar: new AppBar(
            title: const Text('TabBar选型卡示例'),
            bottom: new TabBar(
                isScrollable: true,
                tabs: items.map((ItemView item) {
                  return new Tab(text: item.title, icon: new Icon(item.icon));
                }).toList()
            ),
          ),
          body: new TabBarView(children: items.map((ItemView item) {
            return new Padding(
                padding: const EdgeInsets.all(16),
                child: new SelectedView(item: item)
            );
          }).toList()),
        ),
      ),
    );
  }
}

const List<ItemView> items = const <ItemView>[
  const ItemView(title: '自驾', icon: Icons.directions_car),
  const ItemView(title: '自行车', icon: Icons.directions_bike),
  const ItemView(title: '轮船', icon: Icons.directions_boat),
  const ItemView(title: '公交', icon: Icons.directions_bus),
  const ItemView(title: '火车', icon: Icons.directions_railway),
  const ItemView(title: '步行', icon: Icons.directions_walk),
];

class ItemView {
  const ItemView({this.title, this.icon});

  final String title;
  final IconData icon;
}

class SelectedView extends StatelessWidget {
  const SelectedView({Key key, this.item}) :super(key: key);
  final ItemView item;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme
        .of(context)
        .textTheme
        .display1;
    return new Card(color: Colors.white,
      child: new Center(child: new Column(children: <Widget>[
        new Icon(item.icon, size: 128, color: textStyle.color,),
        new Text(item.title, style: textStyle,),
      ],),
      ),
    );
  }

}
