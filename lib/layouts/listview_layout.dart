import 'package:flutter/material.dart';

class ListViewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      ListTile(
        title: Text(
          '河南郑州二七区',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
        ),
        subtitle: Text('大学南路188号'),
        leading: Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
      ),
      ListTile(
        title: Text(
          '河南郑州金水区',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
        ),
        subtitle: Text('金水路88号'),
        leading: Icon(
          Icons.airplay,
          color: Colors.orange,
        ),
      ),
      ListTile(
        title: Text(
          '河南郑州管城回族区',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
        ),
        subtitle: Text('豫十路189号'),
        leading: Icon(
          Icons.work,
          color: Colors.orange,
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView布局示例吧'),
      ),
      body: Center(
        child: ListView(
          children: list,
        ),
      ),
    );
  }
}
