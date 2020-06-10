import 'package:flutter/material.dart';

class WrapLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap宽高自动换行布局示例呀'),
      ),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: [
          Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade200,
                child: Text(
                  '老大',
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              label: Text('老大最强')),
          Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade300,
                child: Text(
                  '老二',
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              label: Text('老二最牛')),
          Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade200,
                child: Text(
                  '老三',
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              label: Text('老三哥最富')),
          Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade200,
                child: Text(
                  '老五',
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              label: Text('老五哥最最最高')),
        ],
      ),
    );
  }
}
