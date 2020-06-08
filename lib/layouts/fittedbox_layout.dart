import 'package:flutter/material.dart';

class FittedBoxLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox缩放布局示例额'),
      ),
      body: Container(
        color: Colors.grey,
        width: 250.0,
        height: 250.0,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.topLeft,
          child: Container(
            color: Colors.deepOrange,
            child: Text('缩放布局'),
          ),
        ),
      ),
    );
  }
}
