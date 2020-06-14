import 'dart:ui';

import 'package:flutter/material.dart';

class DrawPathWDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CustomPoint绘制路径示例',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 500.0,
          height: 500.0,
          child: CustomPaint(
            painter: LinePainter(),
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.round //StrokeCap.round是圆点，trokeCap.square是方形
    ..isAntiAlias = true
    ..strokeWidth = 5.0 //画笔粗细
    ..style = PaintingStyle.stroke; //用于绘制点时，PaintingStyle值无效

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path()..moveTo(100.0, 100.0);
    path.lineTo(200.0, 300.0);
    path.lineTo(100.0, 200.0);
    path.lineTo(150.0, 250.0);
    path.lineTo(150.0, 500.0);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
