import 'package:flutter/material.dart';

class OffstageLayout extends StatefulWidget {
  @override
  _OffstageLayoutState createState() => _OffstageLayoutState();
}

class _OffstageLayoutState extends State<OffstageLayout> {
  bool offstage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offstage控制是否显示组件示例'),
      ),
      body: Center(
        child: Offstage(
          offstage: offstage,
          child: Text(
            '显示出来了了',
            style: TextStyle(fontSize: 38.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            offstage = !offstage;
          });
        },
        tooltip: '显示隐藏',
        child: Icon(Icons.work),
      ),
    );
  }
}
