import 'package:flutter/material.dart';

class GridViewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Container> _buildGridTitleList(int count) {
      return List<Container>.generate(count, (index) =>
          Container(child: Image.asset('images/${index + 1}.png'),));
    }
    Widget buildGrid() {
      return GridView.extent(
        maxCrossAxisExtent: 150.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _buildGridTitleList(9),);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView示例'),
      ),
      body: Center(
        child: buildGrid(),
      ),
    );
  }
}
