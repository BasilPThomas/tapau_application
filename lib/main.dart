import 'package:flutter/material.dart';
import 'package:tapau_application/PAGES/WelcomePage.dart';
import 'package:tapau_application/PAGES/getStarted.dart';
import 'package:tapau_application/PAGES/RegistrationPage/loginPage.dart';
import 'package:tapau_application/PAGES/RegistrationPage/forgotPassword.dart';
import 'package:tapau_application/home.dart';
import 'package:tapau_application/PAGES/BottomPage/home/1inOneCombo/oneInOne.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => WelcomePage(),
        '/getStarted':(context) => GetStarted(),
        '/login':(context) => LoginPage(),
        '/forgotPassword':(context) => ForgotPassword(),
        '/home': (context) => Home(),
        // '/MyApp': (context) => MyHomePage(),
        '/oneineone': (context) => OneInOne(),
      },);
  }
}
