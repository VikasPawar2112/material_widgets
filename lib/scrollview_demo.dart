import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll View Demo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                'Scroll View',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                ),
              ),
              Text(
                'A box in which a single widget can be scrolled. This widget is useful when you have a single box that will normally be entirely visible, for example a clock face in a time picker, but you need to make sure it can be scrolled if the container gets too small in one axis (the scroll direction).It is also useful if you need to shrink-wrap in both axes (the main scrolling direction as well as the cross axis), as one might see in a dialog or pop-up menu. In that case, you might pair the SingleChildScrollView with a ListBody child.When you have a list of children and do not require cross-axis shrink-wrapping behavior, for example a scrolling list that is always the width of the screen, consider ListView, which is vastly more efficient that a SingleChildScrollView containing a ListBody or Column with many children.Sometimes a layout is designed around the flexible properties of a Column, but there is the concern that in some cases, there might not be enough room to see the entire contents. This could be because some devices have unusually small screens, or because the application can be used in landscape mode where the aspect ratio is not what was originally envisioned, or because the application is being shown in a small window in split-screen mode. In any case, as a result, it might make sense to wrap the layout in a SingleChildScrollView.Simply doing so, however, usually results in a conflict between the Column, which typically tries to grow as big as it can, and the SingleChildScrollView, which provides its children with an infinite amount of space.To resolve this apparent conflict, there are a couple of techniques, as discussed below. These techniques should only be used when the content is normally expected to fit on the screen, so that the lazy instantiation of a sliver-based ListView or CustomScrollView is not expected to provide any performance benefit. If the viewport is expected to usually contain content beyond the dimensions of the screen, then SingleChildScrollView would be very expensive.',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
