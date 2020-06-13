import 'package:flutter/material.dart';

class BoxDecorationOneWDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxDecoration装饰盒子-边框阴影'),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey, //阴影颜色
                blurRadius: 8.0, //模糊值
                spreadRadius: 8.0, //扩展阴影半径
                offset: Offset(-1.0, 1.0), //x,y方向偏移量
              )
            ],
          ),
          child: Text(
            'BoxShadow阴影效果',
            style: TextStyle(color: Colors.black, fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}
