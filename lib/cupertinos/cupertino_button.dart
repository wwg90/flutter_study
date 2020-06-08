import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoButtonTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoButtonTest'),
      ),
      body: Center(
        child: CupertinoButton(
          child: Text('CupertinoButton'),
          color: Colors.blue,
          onPressed: () {},
        ),
      ),
    );
  }
}
