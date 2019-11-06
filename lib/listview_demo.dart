import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Text(
              'List View',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Image.network(
              'https://picsum.photos/250?image=9',
            ),
            Text(
              'A ListView in Flutter is a linear list of scrollable items. We can use it to make a list of items scrollable or make a list of repeating items.This is the default constructor of the ListView class. A ListView simply takes a list of children and makes it scrollable.Usually this should be used with a small number of children as the List will also construct the invisible elements in the list and a large amount of elements may render this inefficient.A scrollable list of widgets arranged linearly.ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the ListView.',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
