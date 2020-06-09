import 'package:flutter/material.dart';

class LimitedBoxLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBox限定最大宽高布局'),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.grey,
            width: 100.0,
          ),
          LimitedBox(
            maxWidth: 150.0,
            child: Container(
              color: Colors.lightGreen,
              width: 350.0,
            ),
          )
        ],
      ),
    );
  }
}
