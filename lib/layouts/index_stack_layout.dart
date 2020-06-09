import 'package:flutter/material.dart';

class IndexStackLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = IndexedStack(
      index: 1,
      alignment: const FractionalOffset(0.2, 0.2),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/1.png'),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black38
          ),
          child: Text('我是少吃点儿',style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexStack布局示例'),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}
