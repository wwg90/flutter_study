import 'package:flutter/material.dart';

class AspectRatioLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio调整宽高比示例'),
      ),
      body: Container(
        height: 200.0,
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
