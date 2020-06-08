import 'package:flutter/material.dart';

class ContainerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget container = Container(
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0))),
                margin: const EdgeInsets.all(4.0),
                child: Image.asset('images/1.png'),
              )),
              Expanded(
                  child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0))),
                margin: const EdgeInsets.all(4.0),
                child: Image.asset('images/2.png'),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        border: Border.all(width: 10.0, color: Colors.blueGrey),
                        borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0))),
                    margin: const EdgeInsets.all(4.0),
                    child: Image.asset('images/3.png'),
                  )),
              Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        border: Border.all(width: 10.0, color: Colors.blueGrey),
                        borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0))),
                    margin: const EdgeInsets.all(4.0),
                    child: Image.asset('images/4.png'),
                  ))
            ],
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Container示例'),
      ),
      body: container,
    );
  }
}
