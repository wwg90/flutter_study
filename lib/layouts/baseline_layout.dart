import 'package:flutter/material.dart';

class BaselineLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baseline基准线布局示例'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'AaBbCc',
              style: TextStyle(
                  fontSize: 18.0, textBaseline: TextBaseline.alphabetic),
            ),
          ),
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 50.0,
              height: 50.0,
              color: Colors.red,
            ),
          ),
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'DeEeFfGg',
              style: TextStyle(
                  fontSize: 28.0, textBaseline: TextBaseline.alphabetic),
            ),
          )
        ],
      ),
    );
  }
}
