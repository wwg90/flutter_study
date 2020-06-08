import 'package:flutter/material.dart';

class FlatButtonTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlatButton widget'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () {},
            child: Text(
              'FlatButton',
              style: TextStyle(fontSize: 24.0),
            )),
      ),
    );
  }
}
