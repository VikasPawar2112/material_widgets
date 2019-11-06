import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder Demo'),
      ),
      body: ListView.builder(
        itemCount: 100,
        // If We removed this method list view become a infinite.
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Text('List Item : $index'),
          );
        },
      ),
    );
  }
}
