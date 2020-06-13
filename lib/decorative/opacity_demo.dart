import 'package:flutter/material.dart';

class OpacityWDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opactity不透明度示例'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.3,
          child: Container(
            width: 250.0,
            height: 250.0,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              '不透明度0.3',
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
          ),
        ),
      ),
    );
  }
}
