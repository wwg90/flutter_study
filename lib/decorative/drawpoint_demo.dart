import 'dart:ui';

import 'package:flutter/material.dart';

class DrawPointWDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CustomPoint绘制多个点示例',
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
    ..strokeWidth = 20.0 //画笔粗细
    ..style = PaintingStyle.fill; //用于绘制点时，PaintingStyle值无效

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPoints(
//        PointMode.points,
//        PointMode.lines,
        PointMode.polygon,
        [
          Offset(50.0, 60.0),
          Offset(40.0, 90.0),
          Offset(100.0, 100.0),
          Offset(300.0, 350.0),
          Offset(400.0, 80.0),
          Offset(200.0, 200.0),
        ],
        _paint..color = Colors.red);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
