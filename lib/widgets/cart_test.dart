import 'package:flutter/material.dart';

class CardTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = SizedBox(
      height: 250.0,
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home,color: Colors.lightBlue,),
              title: Text('河南郑州市区',style: TextStyle(fontWeight: FontWeight.w300),),
              subtitle: Text('哈哈科技公司'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home,color: Colors.lightBlue,),
              title: Text('河南郑州市区',style: TextStyle(fontWeight: FontWeight.w300),),
              subtitle: Text('哈哈科技公司'),
            ),
            Divider(),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Card test'),
      ),
      body: card,
    );
  }
}
