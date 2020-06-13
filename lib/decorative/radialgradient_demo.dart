import 'package:flutter/material.dart';

class RadialGradientWDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadialGradient环形渐变效果'),
      ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  colors: [Colors.red, Colors.green, Colors.blue, Colors.grey],
                  center: const Alignment(-0.0, -0.0),
                  radius: 0.5)),
          child: Container(
            width: 300.0,
            height: 300.0,
            child: Center(
              child: Text(
                'RadialGradient环形渐变效果',
                style: TextStyle(color: Colors.black, fontSize: 28.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
