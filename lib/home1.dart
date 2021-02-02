// import 'package:tapau_application/PAGES/BottomPage/guest.dart';
// import 'package:tapau_application/PAGES/BottomPage/donate.dart';
// import 'package:tapau_application/PAGES/BottomPage/mySubscriptions.dart';
// import 'package:tapau_application/PAGES/BottomPage/pageHome.dart';
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   // This navigator state will be used to navigate different pages
//   final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
//   int _currentTabIndex = 3;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Navigator(
//           key: _navigatorKey,
//           onGenerateRoute: generateRoute,
//         ),
//         bottomNavigationBar: _bottomNavigationBar(),
//       ),
//     );
//   }
//
//   Widget _bottomNavigationBar() {
//     return BottomNavigationBar(
//       unselectedItemColor: Color.fromRGBO(67, 72, 155, 0.5),
//       selectedItemColor: Color.fromRGBO(67, 72, 155, 1.0),
//       type: BottomNavigationBarType.shifting,
//       items: [
//         BottomNavigationBarItem(
//           icon: Container(
//             height: 30.0,
//             width: 30.0,
//             child: Image.asset('assets/images/flags.png'),
//           ),
//           title: Text("Your plan"),
//         ),
//         BottomNavigationBarItem(
//           icon: Container(
//             height: 30.0,
//             width: 30.0,
//             child: Image.asset('assets/images/medicine1.png'),
//           ),
//           title: Text("Your Care"),
//         ),
//         BottomNavigationBarItem(
//           icon: Container(
//             height: 30.0,
//             width: 30.0,
//             child: Image.asset('assets/images/lightbulb.png'),
//           ),
//           title: Text("Tips & Strategies"),
//         ),
//         BottomNavigationBarItem(
//           icon: Container(
//             height: 25.0,
//             width: 25.0,
//             child: Image.asset('assets/images/user1.png'),
//           ),
//           title: Text("Your Profile"),
//         ),
//       ],
//       onTap: _onTap,
//       currentIndex: _currentTabIndex,
//     );
//   }
//
//   _onTap(int tabIndex) {
//     switch (tabIndex) {
//       case 0:
//         _navigatorKey.currentState.pushReplacementNamed("Your Plan");
//         break;
//       case 1:
//         _navigatorKey.currentState.pushReplacementNamed("Your Care");
//         break;
//       case 2:
//         _navigatorKey.currentState.pushReplacementNamed("Tips");
//         break;
//       case 3:
//         _navigatorKey.currentState.pushReplacementNamed("Your Profile");
//         break;
//     }
//     setState(() {
//       _currentTabIndex = tabIndex;
//     });
//   }
//
//   Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case "Your Plan":
//         return MaterialPageRoute(builder: (context) => PageHome());
//       case "Account":
//         return MaterialPageRoute(builder: (context) => GuestPageBottom());
//       case "Tips":
//         return MaterialPageRoute(builder: (context) => DonateBottom(),);
//       default:
//         return MaterialPageRoute(builder: (context) => MySubscriptionBottom());
//     }
//   }
// }
//
// import 'package:flutter/material.dart';
// import 'package:tapau_application/PAGES/BottomPage/guest.dart';
// import 'package:tapau_application/PAGES/BottomPage/donate.dart';
// import 'package:tapau_application/PAGES/BottomPage/mySubscriptions.dart';
// import 'package:tapau_application/PAGES/BottomPage/pageHome.dart';
//
// class Home extends StatefulWidget {
//   Home({Key key}) : super(key: key);
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int _selectedIndex = 0;
//   void setTabIndex(index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   List<Widget> __widgetOptions = [
//     PageHome(),
//     GuestPageBottom(),
//     DonateBottom(),
//     MySubscriptionBottom()
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: __widgetOptions.elementAt(_selectedIndex),
//       bottomNavigationBar : Container(
//         decoration: BoxDecoration(
//           color: Colors.pink[900],
//           borderRadius: BorderRadius.vertical(
//               top: Radius.circular(20)
//           ),
//         ),
//         child: BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             backgroundColor: Colors.transparent,
//             currentIndex: _selectedIndex,
//             onTap:setTabIndex,
//             selectedItemColor: Colors.amber,
//             elevation: 0,
//             items: [
//               BottomNavigationBarItem(label: ('Home'),icon: Icon(Icons.home_rounded,)),
//               BottomNavigationBarItem(label: ('My Subscription'), icon:Icon(Icons.add_chart,)),
//               BottomNavigationBarItem(label: ('Donate'), icon: Icon(Icons.dry_outlined ),),
//               BottomNavigationBarItem(label: ('Add Guest'), icon: Icon(Icons.person_add_outlined ),),
//             ]),
//       ),
//     );
//   }
//
//
// }
//
//
//
//
//
