import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MaterialWidgetDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MaterialWidgetStateDemo();
  }
}

class MaterialWidgetStateDemo extends State<MaterialWidgetDemo> {
  static const List<String> choices = ['Settings', 'Profile', 'SignOut'];
  static const textStyle = TextStyle(
      fontSize: 12.0,
      color: Colors.white,
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w600);

  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green)
  ];

  onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  _onTapOtherAccounts(BuildContext context) {
    Navigator.of(context).pop();
    showDialog<Null>(
      context: context,
      child: AlertDialog(
        title: const Text('Account switching not implemented.'),
        actions: <Widget>[
          FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
//          titleSpacing: 50,
//          centerTitle: true,
          brightness: Brightness.light,
          actionsIconTheme:
              IconThemeData(color: Colors.green, size: 60, opacity: 20),
          leading: Icon(
            Icons.account_circle,
            color: Colors.white,
            size: 30,
            semanticLabel: 'account_circle',
            textDirection: TextDirection.ltr,
          ),
          backgroundColor: Colors.pink,
          elevation: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          primary: true,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.greenAccent,
              fontSize: 20.0,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.orange,
          ),
          toolbarOpacity: 1.0,
          bottomOpacity: 1.0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            )
          ],
          title: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "TabBar View Demo",
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  "SubTile",
                  style: TextStyle(fontSize: 14.0),
                )
              ],
            ),
          ),
          bottom: TabBar(
            dragStartBehavior: DragStartBehavior.down,
            unselectedLabelColor: Colors.deepOrange,
            unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 5.0),
              insets: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            indicatorPadding: EdgeInsets.all(20),
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: textStyle.copyWith(
                fontSize: 20.0,
                color: Color(0xFFc9c9c9),
                fontWeight: FontWeight.w700),
            indicatorColor: Colors.cyanAccent,
            indicatorWeight: 3,
            isScrollable: true,
            labelColor: Colors.deepPurpleAccent,
            labelPadding: EdgeInsets.only(left: 50, right: 50),
            tabs: <Widget>[
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_boat)),
              Tab(icon: Icon(Icons.directions_bus)),
              Tab(icon: Icon(Icons.directions_walk)),
            ],
          ),
        ),
        body:
            //_children[_currentIndex],
            TabBarView(
          dragStartBehavior: DragStartBehavior.down,
          children: <Widget>[
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_boat),
            Icon(Icons.directions_bus),
            Icon(Icons.directions_walk)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          tooltip: 'Add',
          elevation: 20,
          backgroundColor: Colors.cyan,
          focusColor: Colors.black,
          disabledElevation: 40,
          foregroundColor: Colors.black,
          hoverColor: Colors.deepPurple,
          splashColor: Colors.green,
          focusElevation: 50,
          isExtended: false,
          autofocus: true,
//          mini: true,
          hoverElevation: 60,
          highlightElevation: 90,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 3),
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50), top: Radius.elliptical(20, 20)),
          ),
          focusNode: FocusNode(
            canRequestFocus: true,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTapped,
          //
          elevation: 20,
          backgroundColor: Colors.cyanAccent,
          iconSize: 25,
          selectedFontSize: 20,
          unselectedFontSize: 12,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.amber,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
          selectedIconTheme:
              IconThemeData(color: Colors.deepPurple, size: 30, opacity: 10),
          unselectedIconTheme:
              IconThemeData(color: Colors.green, size: 20, opacity: 10),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Business'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('School'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text('Messages'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favourites'),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                arrowColor: Colors.red,
                accountName: Text("Vikas Pawar"),
                accountEmail: Text("vikaspawar2112@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg'),
                  foregroundColor: Colors.pink,
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                  /*  child: ClipOval(
                    child: Image.network(
                      'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg',
                    ),
                  ),*/
                ),
                otherAccountsPictures: <Widget>[
                  GestureDetector(
                    onTap: () => _onTapOtherAccounts(context),
                    child: Semantics(
                      label: 'Switch Account',
                      child: CircleAvatar(
                        backgroundColor: Colors.brown,
                        child: Text('MB'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _onTapOtherAccounts(context),
                    child: Semantics(
                      label: 'Switch Account',
                      child: CircleAvatar(
                        backgroundColor: Colors.brown,
                        child: Text('PM'),
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.directions),
                trailing: Icon(Icons.arrow_right),
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.arrow_right),
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                leading: Text('Label'),
                trailing: Text('Edit'),
              ),
              ListTile(
                leading: Icon(Icons.label),
                title: Text('Expense'),
              ),
              ListTile(
                leading: Icon(Icons.label),
                title: Text('Inspiration'),
              ),
              ListTile(
                leading: Icon(Icons.label),
                title: Text('Personal'),
              ),
              ListTile(
                leading: Icon(Icons.label),
                title: Text('Work'),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text('Create  label'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.archive),
                title: Text('Archive'),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help & feedback'),
              )
            ],
          ),
        ),
        drawerScrimColor: Colors.deepOrangeAccent,
//        backgroundColor: Colors.white,
//      drawerEdgeDragWidth: 100,
        drawerDragStartBehavior: DragStartBehavior.down,
//        endDrawer: Drawer(),
        bottomSheet: Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('Music'),
                  onTap: () => {}),
              ListTile(
                leading: Icon(Icons.videocam),
                title: Text('Video'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.movie),
                title: Text('Movie'),
                onTap: () => {},
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: true,
        resizeToAvoidBottomPadding: true,
        persistentFooterButtons: <Widget>[
          Icon(Icons.apps),
          Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
