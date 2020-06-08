import 'package:flutter/material.dart';

class DrawerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Widget'),
      ),
      body: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('wsir'),
              accountEmail: Text('wwg@163.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.deepPurple,
              ),
              onDetailsPressed: () {},
              otherAccountsPictures: <Widget>[
                Container(
                  child: Icon(Icons.access_alarms),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.color_lens),
              ),
              title: Text('lens'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.color_lens),
              ),
              title: Text('lens'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.color_lens),
              ),
              title: Text('lens'),
            ),
          ],
        ),
      ),
    );
  }
}
