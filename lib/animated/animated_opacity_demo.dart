import 'package:flutter/material.dart';

class AnimatedOpacityWDemo extends StatefulWidget {
  @override
  _AnimatedOpacityWDemoState createState() => _AnimatedOpacityWDemoState();
}

class _AnimatedOpacityWDemoState extends State<AnimatedOpacityWDemo> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('淡入淡出动画示例'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 1000),
          child: Container(
            width: 300.0,
            height: 300.0,
            color: Colors.deepPurple,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: "显示隐藏",
        child: Icon(Icons.flip),
      ),
    );
  }
}
