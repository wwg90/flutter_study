import 'package:flutter/material.dart';

class ClipPathWDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ClipPath路径剪裁示例',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ClipPath(
          clipper: TriangleClipper(),
          child: SizedBox(
            width: 100.0,
            height: 100.0,
            child: Image.asset(
              'images/5.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(50.0, 50.0); //起始点
    path.lineTo(50.0, 10.0); //终止点
    path.lineTo(100.0, 50.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
