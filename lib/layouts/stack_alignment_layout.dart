import 'package:flutter/material.dart';

class StackAlignmentLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: Alignment.topLeft,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/9.png'),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black38,
          ),
          child: Text(
            '少吃点儿',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Alignment布局示例'),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}
