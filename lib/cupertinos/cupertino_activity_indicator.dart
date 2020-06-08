import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoActivityIndicatorTest'),
      ),
      body: Center(
        child: CupertinoActivityIndicator(
          radius: 20.0,
        ),
      ),
    );
  }
}
