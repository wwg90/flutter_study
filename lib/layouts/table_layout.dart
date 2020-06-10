import 'package:flutter/material.dart';

class TableLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table表格布局示例'),
      ),
      body: Center(
        child: Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(100.0),
            1: FixedColumnWidth(40.0),
            2: FixedColumnWidth(80.0),
            3: FixedColumnWidth(80.0),
          },
          border: TableBorder.all(color: Colors.black38,width: 2.0,style: BorderStyle.solid),
          children: const <TableRow>[
            TableRow(
                children: [
                  Text('姓名'),
                  Text('性别'),
                  Text('年龄'),
                  Text('身高'),
                ]
            ),
            TableRow(
                children: [
                  Text('张三'),
                  Text('男'),
                  Text('23'),
                  Text('178'),
                ]
            ),
            TableRow(
                children: [
              Text('李四'),
                  Text('女'),
                  Text('22'),
                  Text('162'),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
