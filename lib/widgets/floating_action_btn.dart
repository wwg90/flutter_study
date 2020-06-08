import 'package:flutter/material.dart';

class FloatActionBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton widget'),
      ),
      body: Center(
        child: Text('FloationActionButton', style: TextStyle(fontSize: 28.0),),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('呀，你点击了我。。。')));
          },
          child: const Icon(Icons.add),
          tooltip: '请点击button',
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          elevation: 7.0,
          highlightElevation: 14.0,
          mini: false,
          isExtended: false,
          shape: CircleBorder(),
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
