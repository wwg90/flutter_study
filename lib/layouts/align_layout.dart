import 'package:flutter/material.dart';

class AlignLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align对齐布局'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: FractionalOffset(0.0, 0.0),
            child: Image.asset(
              'images/2.png',
              width: 128.0,
              height: 128.0,
            ),
          ),
          Align(
            alignment: FractionalOffset(1.0, 0.0),
            child: Image.asset(
              'images/3.png',
              width: 128.0,
              height: 128.0,
            ),
          ),
          Align(
            alignment: FractionalOffset.center,
            child: Image.asset(
              'images/4.png',
              width: 128.0,
              height: 128.0,
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomLeft,
            child: Image.asset(
              'images/5.png',
              width: 128.0,
              height: 128.0,
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomRight,
            child: Image.asset(
              'images/6.png',
              width: 128.0,
              height: 128.0,
            ),
          ),
        ],
      ),
    );
  }
}
