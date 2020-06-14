import 'dart:ui';

import 'package:flutter/material.dart';

class DrawArcWDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CustomPoint绘制圆弧示例',
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
    ..strokeWidth = 2.0 //画笔粗细
    ..style = PaintingStyle.stroke; //用于绘制点时，PaintingStyle值无效

  @override
  void paint(Canvas canvas, Size size) {
    const PI = 3.1415926;
    Rect rect1 = Rect.fromCircle(center: Offset(100.0, 0.0),radius: 100.0);
    canvas.drawArc(rect1, 0.0, PI/2, true, _paint);

    Rect rect2 = Rect.fromCircle(center: Offset(200.0, 150.0),radius: 100.0);
    canvas.drawArc(rect2, 0.0, PI, true, _paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
