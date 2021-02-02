import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:tapau_application/PAGES/BottomPage/guest.dart';
import 'package:tapau_application/PAGES/BottomPage/donate.dart';
import 'package:tapau_application/PAGES/BottomPage/mySubscriptions.dart';
import 'package:tapau_application/PAGES/BottomPage/pageHome.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
    with SingleTickerProviderStateMixin {

  String pageTitle = 'Samrambhakar';
  TabController _tabController;
  int _currentIndex = 0;

  List<Widget> _tabList = [
    PageHome(),
    GuestPageBottom(),
    DonateBottom(),
    MySubscriptionBottom()
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
      body: Container(
          // height: ((MediaQuery.of(context).size.height * .9) - 60.0),
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: _tabList,
          )),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
          color: Colors.pink[900],
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(20)
          ),),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
              changeTitle(index);
            });
            _tabController.animateTo(_currentIndex);
          },
          items: [
                BottomNavigationBarItem(label: ('Home'),icon: Icon(Icons.home_rounded,)),
                BottomNavigationBarItem(label: ('My Subscription'), icon:Icon(Icons.add_chart,)),
                BottomNavigationBarItem(label: ('Donate'), icon: Icon(Icons.dry_outlined ),),
                BottomNavigationBarItem(label: ('Add Guest'), icon: Icon(Icons.person_add_outlined ),),
          ],
        ),
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
