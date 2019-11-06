import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Builder Demo'),
      ),
      body: GridView.builder(
        itemCount: 50,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: GridTile(
                footer: Text(
                  'Item $index',
                  textAlign: TextAlign.end,
                ),
                header: Text(
                  'SubItem $index',
                  textAlign: TextAlign.center,
                ),
                child:
                    Icon(Icons.access_alarm, size: 40.0, color: Colors.white30),
              ),
            ),
            color: Colors.pink[400],
            margin: EdgeInsets.all(1.0),
          );
        },
      ),
    );
  }
}
