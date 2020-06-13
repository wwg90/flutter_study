import 'package:flutter/material.dart';

class ClipOvalWDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ClipOval圆形剪裁示例',
          style: TextStyle(color: Colors.white),
        ),
      ),
//      body: Center(child: WClipOval()),
//      body: Center(child: WClipRRect()),
      body: Center(child: WClipRect()),
    );
  }
}

class WClipRect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      clipper: RectClipper(),
      child: SizedBox(
        width: 300.0,
        height: 300.0,
        child: Image.asset(
          'images/8.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class RectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(100.0, 100.0, size.width - 100.0, size.height - 100.0);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}

class WClipOval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
        width: 300.0,
        height: 300.0,
        child: Image.asset(
          'images/3.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class WClipRRect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      child: SizedBox(
        width: 300.0,
        height: 300.0,
        child: Image.asset(
          'images/4.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
