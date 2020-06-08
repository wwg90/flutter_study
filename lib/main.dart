import 'package:flutter/material.dart';

import 'layouts/padding_layout.dart';
import 'layouts/align_layout.dart';
import 'layouts/row_layout.dart';
import 'layouts/column_layout.dart';
import 'layouts/fittedbox_layout.dart';
import 'layouts/stack_alignment_layout.dart';
import 'layouts/stack_positioned_layout.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'widget test',
      theme: ThemeData.light(),
      home: StackPositionedLayout(),
    );
  }
}

class GridViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GirdView示例'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 30.0,
        crossAxisCount: 3,
        children: <Widget>[
          const Text('第一行第一列'),
          const Text('第一行第二列'),
          const Text('第一行第三列'),
          const Text('第二行第一列'),
          const Text('第二行第二列'),
          const Text('第二行第三列'),
          const Text('第三行第一列'),
          const Text('第三行第二列'),
          const Text('第三行第三列'),
        ],
      ),
    );
  }
}


class RowTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('水平列表组件'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.lightBlue,
            ),
            Container(
              width: 160.0,
              color: Colors.amber,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
              child: Column(
                children: <Widget>[
                  Text(
                    '水平',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0),
                  ),
                  Text(
                    '列表',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0),
                  ),
                  Icon(Icons.list)
                ],
              ),
            ),
            Container(
              width: 160.0,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              width: 160.0,
              color: Colors.black,
            ),
            Container(
              width: 160.0,
              color: Colors.pinkAccent,
            )
          ],
        ),
      ),
    );
  }
}

class ListViewTest extends StatelessWidget {
  final title = '基础列表示例';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('alarm'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('phone'),
          ),
          ListTile(
            leading: Icon(Icons.airplay),
            title: Text('airplay'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('home'),
          ),
        ],
      ),
    );
  }
}

class RaiseButtonTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RaisedButton示例'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            print('点击了一下。。。');
          },
          child: Text('RaisedButton'),
        ),
      ),
    );
  }
}

class DemoApp extends StatelessWidget {
  DemoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return LayoutTestOne();
        },
        itemCount: 20,
      ),
    );
  }
}

class LayoutTestOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: FlatButton(
            onPressed: () {
              print('点了一下哦。。。');
            },
            child: Padding(
              padding: EdgeInsets.only(
                  left: 0.0, top: 10.0, right: 10.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: Text(
                      '只是一点描述',
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    margin: EdgeInsets.only(top: 6.0, bottom: 2.0),
                    alignment: Alignment.topLeft,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _getBottomItem(Icons.star, '1000'),
                      _getBottomItem(Icons.link, '1000'),
                      _getBottomItem(Icons.subject, '1000'),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}

_getBottomItem(IconData icon, String text) {
  return Expanded(
      flex: 1,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 16.0,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ));
}

class IconButtonTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('图标按钮示例额'),
        ),
        body: Center(
          child: IconButton(
              icon: Icon(
                Icons.volume_up,
                size: 48.0,
              ),
              tooltip: '点击事件',
              onPressed: () {
                print('button down...');
              }),
        ));
  }
}

class IconTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图标组件示例'),
      ),
      body: Icon(
        Icons.phone,
        color: Colors.green[500],
        size: 80.0,
      ),
    );
  }
}

class TextContainerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本组件'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '红色+黑色删除线+25号',
            style: TextStyle(
                color: const Color(0xffff0000),
                decoration: TextDecoration.lineThrough,
                decorationColor: const Color(0xff000000),
                fontSize: 25.0),
          ),
          Text(
            '橙色+下划线+24号',
            style: TextStyle(
                color: const Color(0xffff9900),
                decoration: TextDecoration.underline,
                fontSize: 24.0),
          ),
          Text(
            '虚线上划线+23号+倾斜',
            style: TextStyle(
                decoration: TextDecoration.overline,
                decorationStyle: TextDecorationStyle.dashed,
                fontSize: 23.0,
                fontStyle: FontStyle.italic),
          ),
          Text(
            '24号+加粗',
            style: TextStyle(
                fontSize: 24.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                letterSpacing: 6.0),
          )
        ],
      ),
    );
  }
}

class ImageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Image.network(
        'https://p0.ssl.qhimgs1.com/sdr/400__/t0160c8456511be3c4e.jpg',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class ContainerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('容器组件示例额'),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
              color: Colors.white,
              border: new Border.all(color: Colors.red, width: 8.0),
              borderRadius: const BorderRadius.all(const Radius.circular(8.0))),
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}
