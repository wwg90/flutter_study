import 'package:flutter/material.dart';

class SimpleDialogTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog widget'),
      ),
      body: Center(
        child: SimpleDialog(
          title: const Text('SimpleDialog'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {},
              child: const Text('第一个'),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: const Text('第二个'),
            ),
          ],
        ),
      ),
    );
  }
}
