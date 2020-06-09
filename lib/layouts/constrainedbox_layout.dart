import 'package:flutter/material.dart';

class ConstrainedBoxLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox限定宽高示例额'),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
            minWidth: 150.0,
            minHeight: 150.0,
            maxHeight: 220.0,
            maxWidth: 220.0),
        child: Container(
          width: 300.0,
          height: 300.0,
          color: Colors.green,
        ),
      ),
    );
  }
}
