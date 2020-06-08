import 'package:flutter/material.dart';

class AlertDialogTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alertdialog'),
      ),
      body: Center(
        child: AlertDialog(
          title: Text('提示'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[Text('是否要删除'), Text('一旦删除无法恢复！')],
            ),
          ),
          actions: <Widget>[
            FlatButton(onPressed: () {}, child: Text('确认')),
            FlatButton(onPressed: () {}, child: Text('取消')),
          ],
        ),
      ),
    );
  }
}
