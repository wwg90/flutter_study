import 'package:flutter/material.dart';

class FractionallySizedBoxLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('百分比布局示例'),
      ),
      body: Container(
        color: Colors.blueGrey,
        height: 200.0,
        width: 200.0,
        child: FractionallySizedBox(
          alignment: Alignment.topLeft,
          widthFactor: 0.5,
          heightFactor: 1.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
