import 'package:flutter/material.dart';

class StackPositionedLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('层叠定位布局示例'),
      ),
      body: Center(
        child: Stack(
          children: [
            Image.network(
                'https://p0.ssl.qhimgs1.com/sdr/400__/t015289d413853b7c96.jpg'),
            Positioned(
              bottom: 50.0,
              right: 50.0,
              child: Text(
                'hahahahei',
                style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'serif',
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
