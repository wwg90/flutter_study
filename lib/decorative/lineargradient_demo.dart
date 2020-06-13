import 'package:flutter/material.dart';

class LinearGradientWDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearGradient线性渐变'),
      ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.green, Colors.blue, Colors.grey],
                  begin: const FractionalOffset(0.5, 0.0),
                  end: const FractionalOffset(1.0, 1.0))),
          child: Container(
            width: 280.0,
            height: 280.0,
            child: Center(
              child: Text(
                'LinearGradient线性渐变效果',
                style: TextStyle(color: Colors.black, fontSize: 28.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
