import 'package:flutter/material.dart';
import 'package:tapau_application/home.dart';
import 'package:tapau_application/PAGES/RegistrationPage/loginPage.dart';
import 'package:http/http.dart' as http;


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/signup',);
  }

  bool checkedValue =true;

  Widget _submitButton()  {
    return InkWell(
    onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFF880E4F),Color(0xFF880E4F),]
            )
        ),
        child: Text(
          'Sign Up',
          style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _detailWidgetForSignIn() {
    return Container(
      // padding: EdgeInsets.all(50),
        margin: EdgeInsets.symmetric(vertical: 50 , horizontal: 10),
        child: Column(
            children:[
              TextField(decoration: InputDecoration(
                  hintText: "Full Name",
                  border: OutlineInputBorder(
                      gapPadding: 20,
                      borderRadius: BorderRadius.all(Radius.circular(40.0)))),
              ),
              SizedBox(height: 10,),
              TextField(decoration: InputDecoration(
                  hintText: "Phone Number",
                  border: OutlineInputBorder(
                      gapPadding: 30,
                   borderRadius: BorderRadius.all(Radius.circular(30.0)))),
              ),
              SizedBox(height: 10,),
              TextField(decoration: InputDecoration(
                  hintText: "E-mail",
                  border: OutlineInputBorder(
                      gapPadding: 30,
                   borderRadius: BorderRadius.all(Radius.circular(30.0)))),
              ),
              SizedBox(height: 10,),
              TextField(decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      gapPadding: 10,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)))),
              ),
              SizedBox(height: 10,),
              TextField(decoration: InputDecoration(
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(
                      gapPadding: 10,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)))),
              ),
              SizedBox(height: 10,),
              TextField(decoration: InputDecoration(
                  hintText: "Referrel Code ",
                  border: OutlineInputBorder(
                      gapPadding: 10,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)))),
              ),
            ])
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Already have an account ?',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
            Text('Log in',style: TextStyle(color: Colors.pink[900], fontSize: 13, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20,),
              AspectRatio(
                aspectRatio: 3/1,
                child: Image(
                  image: AssetImage('images/tapau-logo-retrace.png'),),),
              _detailWidgetForSignIn(),
              _submitButton(),
              _createAccountLabel(),
            ],
          ),
          // Positioned(top: 40, left: 0, child: _backButton()),
        ),
      ),
    );
  }
}
