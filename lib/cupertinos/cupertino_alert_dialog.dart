import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoAlertDialogTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoAlertDialogTest'),
      ),
      body: Center(
        child: CupertinoAlertDialog(
          title: Text('提示'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [Text('是否要删除？'), Text('一旦删除数据不可恢复！')],
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('确定'),
              onPressed: () {},
            ),
            CupertinoDialogAction(
              child: Text('取消'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
