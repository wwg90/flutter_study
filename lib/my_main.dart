import 'package:flutter/material.dart';
import 'bottom_appbar_demo.dart';
import 'bottom_navigation_widget.dart';
import 'pages.dart';
import 'pages/frosted_glass_demo.dart';
import 'my_home_page.dart';
import 'search_bar_demo.dart';
import 'warp_demo.dart';
import 'expansion_tile.dart';
import 'expansion_panel_list.dart';
import 'home_page.dart';
import 'splash_screen.dart';
import 'right_back_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: RightBackDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  @override
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep Alive Demo'),
        bottom: TabBar(controller: _controller, tabs: [
          Tab(
            icon: Icon(Icons.directions_car),
          ),
          Tab(
            icon: Icon(Icons.directions_transit),
          ),
          Tab(
            icon: Icon(Icons.directions_bike),
          ),
        ]),
      ),
      body: TabBarView(controller: _controller, children: <Widget>[
        MyHomePage(),
        MyHomePage(),
        MyHomePage(),
      ]),
    );
  }
}
