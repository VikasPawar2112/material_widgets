import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Count Demo'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            alignment: Alignment(0.0, 0.0),
            padding: const EdgeInsets.all(8),
            child: const Text('Grird 1'),
            color: Colors.amber,
          ),
          Container(
            alignment: Alignment(0.0, 0.0),
            padding: const EdgeInsets.all(8),
            child: const Text('Grird 2'),
            color: Colors.blue,
          ),
          Container(
            alignment: Alignment(0.0, 0.0),
            padding: const EdgeInsets.all(8),
            child: const Text('Grird 3'),
            color: Colors.brown,
          ),
          Container(
            alignment: Alignment(0.0, 0.0),
            padding: const EdgeInsets.all(8),
            child: const Text('Grird 4'),
            color: Colors.cyanAccent,
          ),
          Container(
            alignment: Alignment(0.0, 0.0),
            padding: const EdgeInsets.all(8),
            child: const Text('Grird 5'),
            color: Colors.deepPurpleAccent,
          ),
          Container(
            alignment: Alignment(0.0, 0.0),
            padding: const EdgeInsets.all(8),
            child: const Text('Grird 6'),
            color: Colors.pink,
          ),
          Container(
            alignment: Alignment(0.0, 0.0),
            padding: const EdgeInsets.all(8),
            child: const Text('Grird 6'),
            color: Colors.green,
          ),
          Container(
            alignment: Alignment(0.0, 0.0),
            padding: const EdgeInsets.all(8),
            child: const Text('Grird 6'),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
