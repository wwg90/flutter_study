import 'package:flutter/material.dart';

class RotatedBoxWDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RotatedBox旋转盒子示例',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: RotatedBox(
          quarterTurns: 2,//旋转次数，一次是90度
          child: Text(
            'RotatedBox旋转盒子',
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}
