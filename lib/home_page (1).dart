import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:samrambhakar/add/landing_page.dart';
import 'package:samrambhakar/feeds/landing_page.dart';
import 'package:samrambhakar/messages/landing_page.dart';
import 'package:samrambhakar/notifications/landing_page.dart';
import 'package:samrambhakar/profile/landing_page.dart';
import 'package:samrambhakar/search/landing_page.dart';
import 'package:samrambhakar/shared_pages/app_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  String pageTitle = 'Samrambhakar';

  TabController _tabController;

  int _currentIndex = 0;

  List<Widget> _tabList = [
    FeedsPage(),
    SearchPage(),
    AddPage(),
    NotificationsPage(),
    MessagesPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: _tabList.length, vsync: this);

    _tabController.animateTo(_currentIndex);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: const Color(0xFF144169),
        statusBarIconBrightness: Brightness.light));

    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(pageTitle),
      ),
      drawer: new Drawer(
        child: AppDrawer(),
      ),
      body: Container(
          height: ((MediaQuery.of(context).size.height * .9) - 60.0),
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: _tabList,
          )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            changeTitle(index);
          });
          _tabController.animateTo(_currentIndex);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, size: 30.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none, size: 30.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline, size: 30.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30.0,
            ),
            title: Container(),
          ),
        ],
      ),
    );
  }

  void changeTitle(int index) {
    var newTitle = '';
    switch (index) {
      case 0:
        {
          newTitle = 'Samrambhakar';
          break;
        }
      case 1:
        {
          newTitle = 'Search';
          break;
        }
      case 2:
        {
          newTitle = 'Text Here';
          break;
        }
      case 3:
        {
          newTitle = 'Activities';
          break;
        }
      case 4:
        {
          newTitle = 'Messages';
          break;
        }
      case 5:
        {
          newTitle = 'Profile';
          break;
        }
    }
    setState(() {
      pageTitle = newTitle;
    });
  }
}
