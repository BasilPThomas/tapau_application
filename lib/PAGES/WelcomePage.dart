import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          margin: EdgeInsets.symmetric(vertical: 30 , horizontal: 70),
          // padding: EdgeInsets.all(58),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30,),
              Image(image: AssetImage('images/tapau-logo-retrace.png'),),
              Text('E-mess', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              SizedBox(height: 10,),
              Center(
                child:Text(
                  'Delicious and homely cooked food Lots of varieties and No repeats',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily:'Poppins'),),),
              SizedBox(height: 63,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/getStarted');
                },
                child: AspectRatio(
                  aspectRatio: 4,
                  child: Image(
                    image: AssetImage('images/Group 618.png'),),),)
            ],),
        ));
  }
}

