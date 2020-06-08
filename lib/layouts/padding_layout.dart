import 'package:flutter/material.dart';

class PaddingLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding填充布局示例额'),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          padding: EdgeInsets.all(60.0),
//          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.green, width: 8.0)),
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blue,width: 8.0)
            ),
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
