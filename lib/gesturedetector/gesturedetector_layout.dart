import 'package:flutter/material.dart';

class GestureDetectorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('手势按下处理示例额'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              print('你已经按下了');
            },
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Theme.of(context).buttonColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text('测试按钮'),
            ),
          ),
        ));
  }
}
