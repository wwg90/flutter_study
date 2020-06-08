import 'package:flutter/material.dart';

class RowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('水平布局示例'),
      ),
      body: Row(
        children: [
          Expanded(
              child: Text(
            '左边文字',
            textAlign: TextAlign.center,
          )),
          Expanded(
              child: Text(
            '中间文本',
            textAlign: TextAlign.center,
          )),
          Expanded(
              child: FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(),
          ))
        ],
      ),
    );
  }
}
