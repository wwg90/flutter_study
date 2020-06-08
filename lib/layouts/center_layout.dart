import 'package:flutter/material.dart';

class CenterLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center 居中布局'),
      ),
      body: Center(
        child: Text(
          'Hello Center',
          style: TextStyle(fontSize: 36.0),
        ),
      ),
    );
  }
}
