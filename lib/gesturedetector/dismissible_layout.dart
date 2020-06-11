import 'package:flutter/material.dart';

class DismissibleLayout extends StatelessWidget {
  List<String> items = List<String>.generate(30, (index) => "列表No${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('滑动删除示例'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
              key: Key(item),
              onDismissed: (direction) {
                items.removeAt(index);
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('$item被删除了')));
              },
              child: ListTile(
                title: Text('$item'),
              ));
        },
        itemCount: items.length,
      ),
    );
  }
}
