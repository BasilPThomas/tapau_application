import 'package:flutter/material.dart';
import 'package:tapau_application/home.dart';
import 'package:tapau_application/PAGES/RegistrationPage/signupPage.dart';
import 'package:tapau_application/PAGES/RegistrationPage/forgotPassword.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/login',);
  }
  bool checkedValue = false;

  Widget _submitButton()  {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>Home()));
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
          'Log In',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Widget _detailWidget() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 50 , horizontal: 10),
        child: Column(
            children:[
              TextField(decoration: InputDecoration(
                  hintText: "Phone",
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
            ])
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>SignUpPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Don't have an account ?",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
            Text('sign up',style: TextStyle(color: Colors.pink[900], fontSize: 13, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }

  Widget _forgotPassword() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>ForgotPassword()));
      },
      child: Container(
        // margin: EdgeInsets.symmetric(vertical: 20),
        // padding: EdgeInsets.all(15),
        alignment: Alignment.topRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'Forgot Password ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600,color:Colors.pink[900]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _checkBox() {
    return Container(
        child: Row(
            children :[
              Checkbox(
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue;
                  });
                },),
              Text("Remember Me"),
            ])
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 70,),
              AspectRatio(
                aspectRatio: 1.8,
                child: Image(
                  image: AssetImage('images/tapau-logo-retrace.png'),),),
              _detailWidget(),
              Row(
                children: [
                  _checkBox(),
                  SizedBox(width: 100),
                  _forgotPassword()
                ],),
              SizedBox(height: 30,),
              _submitButton(),
              _createAccountLabel(),
            ],
          ),
        ),
      ),
    );
  }
}