import 'package:flutter/material.dart';
import 'package:tapau_application/PAGES/RegistrationPage/loginPage.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 60),
            // padding: EdgeInsets.all(58),
            child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 110,),
                  Text(
                      'Are you tired of cooking? Get in touch!',
                      style: TextStyle(
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 22),
                      textAlign: TextAlign.center),
                  SizedBox(height: 30,),
                  Text(
                    "We offer your food on time Time.",
                    style: TextStyle(
                      fontFamily:'Poppins-Light',
                      // color:Color(89898A)
                    ),),
                  SizedBox(height: 30,),
                  AspectRatio(
                    aspectRatio: 3/3,
                    child: Image(
                      image: AssetImage('images/Layer 12.png'),),),
                  SizedBox(height: 30,),
                  Container(
                      child:RaisedButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0))),
                        child : Text('Get Started', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        textColor: Colors.white,
                        color: Colors.pink[900],))
                ])
        ));
  }
}

