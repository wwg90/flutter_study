import 'package:flutter/material.dart';

class TransformLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform矩阵转换示例'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Transform(
            transform: Matrix4.rotationZ(0.3),
            alignment: Alignment.topRight,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xffe8581c),
              child: const Text('Transform转换'),
            ),
          ),
        ),
      ),
    );
  }
}
