import 'package:flutter/material.dart';

class HeroAnimatedWDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面切换动画图一'),
      ),
      body: GestureDetector(
        child: Hero(
            tag: '第一张图片',
            child: Image.network(
                'https://p2.ssl.qhimgs1.com/sdr/400__/t016d7fdd276ca1af2c.jpg')),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return SecondPageDemo();
          }));
        },
      ),
    );
  }
}

class SecondPageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面切换动画图二'),
      ),
      body: GestureDetector(
        child: Hero(
            tag: '第二张图片',
            child: Image.network(
                'https://p2.ssl.qhimgs1.com/sdr/400__/t013b73aefbb422fe88.jpg')),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
