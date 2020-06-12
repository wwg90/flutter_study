import 'package:flutter/material.dart';
import 'package:myflutterstudy/pages.dart';

class FirstPageWithData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面跳转返回数据示例'),
      ),
      body: Center(
        child: RouteWButton(),
      ),
    );
  }
}

class RouteWButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        _navigateToSecondPage(context);
      },
      child: Text('跳转到第二个页面'),
    );
  }
}

_navigateToSecondPage(BuildContext context) async {
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => SecondPage()));
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('$result'),
  ));
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('请选择数据'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'hi google');
                },
                child: Text('hi google'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'hi flutter');
                },
                child: Text('hi flutter'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
