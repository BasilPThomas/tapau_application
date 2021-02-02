import 'package:flutter/material.dart';
// import 'package:demoflutter/subpages/index.dart';


class Home extends StatefulWidget {
  Home({Key key}): super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  static  List __widgetOptions = [
    // IndexPage(),
    Text('home 2'),
    Text('home 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: __widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,), label: 'Home',),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: Colors.amber,
          ),
        )

    );
  }
}
