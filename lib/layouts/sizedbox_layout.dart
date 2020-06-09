import 'package:flutter/material.dart';

class SizedBoxLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox设置具体尺寸示例额'),
      ),
      body: SizedBox(
        width: 200.0,
        height: 300.0,
        child: const Card(
          child: Text(
            'SizedBox',
            style: TextStyle(fontSize: 36.0),
          ),
        ),
      ),
    );
  }
}
