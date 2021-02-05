import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tapau_application/PAGES/BottomPage/GuestPage/guest.dart';
import 'package:tapau_application/PAGES/BottomPage/donate.dart';
import 'package:tapau_application/PAGES/BottomPage/mySubscriptions.dart';
import 'package:tapau_application/PAGES/BottomPage/pageHome.dart';

class Home extends StatefulWidget {
  final BuildContext menuScreenContext;
  Home({Key key, this.menuScreenContext}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  BuildContext testContext;
  PersistentTabController _controller;
  bool _hideNavBar;
  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }
  List<Widget> _buildScreens() {
    return [
      PageHome(),
      GuestPageBottom(),
      DonateBottom(),
      MySubscriptionBottom()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home_rounded,),
          title: ("home"),
          activeColor: Colors.pink[900],
          inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
      icon:Icon(Icons.add_chart,),
        title: ('My Subscription'),
        activeColor: Colors.pink[900],
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.dry_outlined ),
        title: ('Donate'),
        activeColor: Colors.pink[900],
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.person_add_outlined ),
          title: ('Add Guest'),
          activeColor: Colors.pink[900],
          inactiveColor: Colors.grey,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        popActionScreens: PopActionScreensType.once,
        bottomScreenMargin: 0.0,
        onWillPop: () async {
          await showDialog(
            context: context,
            useSafeArea: true,
            builder: (context) => Container(
              height: 50.0,
              width: 50.0,
              color: Colors.pink[900],
              child: RaisedButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
          return false;
        },
        selectedTabScreenContext: (context) {
          testContext = context;
        },
        hideNavigationBar: _hideNavBar,
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.indigo,
            borderRadius: BorderRadius.vertical(
             top: Radius.circular(20)
        )),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
        NavBarStyle.style6, // Choose the nav bar style with this property
      ),
    );
  }
}