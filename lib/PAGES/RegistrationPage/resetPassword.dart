import 'package:flutter/material.dart';
import 'package:tapau_application/PAGES/RegistrationPage/loginPage.dart';
import 'package:http/http.dart' as http;


class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/resetpassword',);
  }

  Widget _submitButton()  {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>LoginPage()));
      },
      child: Container(
        // width: MediaQuery.of(context).size.width,
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
          'Continue',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color: Colors.white),
        ),
      ),
    );
  }

  Widget _detailWidgetForPassword() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 50 , horizontal: 10),
        child: Column(
            children:[
              TextField(
                decoration: InputDecoration(
                    hintText: "Enter OTP",
                    border: OutlineInputBorder(
                        gapPadding: 30,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)))),
            ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: "New Password",
                    border: OutlineInputBorder(
                        gapPadding: 30,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)))),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                        gapPadding: 30,
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
              SizedBox(height: 50,),
              AspectRatio(
                aspectRatio: 1.7,
                child: Image(
                  image: AssetImage('images/tapau-logo-retrace.png'),),),
              _detailWidgetForPassword(),
              _submitButton(),
              _createAccountLabel()
            ],
          ),
          // Positioned(top: 40, left: 0, child: _backButton()),
        ),
      ),
    );
  }
}
