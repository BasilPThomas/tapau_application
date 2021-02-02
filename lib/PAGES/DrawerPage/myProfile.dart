import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/myProfile',);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title:Center(child: Text("My profile",style: TextStyle(fontWeight: FontWeight.bold),textAlign:TextAlign.center,)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.symmetric(vertical: 90,horizontal: 15),
              child:Column(
                  children:[
                    // SizedBox(height: 100,),
                    Stack(
                      children:[
                        Container(
                          // margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          height: 500,
                          width: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              gradient: LinearGradient(
                                  colors: [Color(0xFF880E4F), Color(0xFF880E4F),]
                              )),
                          child: ListView(
                            children: [
                              SizedBox(height: 100,),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                  Icon(Icons.perm_identity ,color: Colors.white,),
                                  SizedBox(width: 20,),
                                  Text("Name",
                                    style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white,fontFamily:'Poppins-SemiBold',),
                                  ),
                                  SizedBox(width: 40,),
                                  Text("Jibu Raju",style: TextStyle(
                                      fontSize: 17, color: Colors.white,fontFamily:'Poppins-Light',),),
                                ],),
                              ),
                              SizedBox(height: 60,),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.phone_iphone ,color: Colors.white,),
                                    SizedBox(width: 20,),
                                    Text("Phone",
                                      style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white,fontFamily:'Poppins-SemiBold',),
                                    ),
                                    SizedBox(width: 40,),
                                    Text("8976514901",style: TextStyle(
                                      fontSize: 17, color: Colors.white,fontFamily:'Poppins-Light',),),
                                  ],),
                              ),
                              SizedBox(height: 60,),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.email_outlined ,color: Colors.white,),
                                    SizedBox(width: 20,),
                                    Text("Email",
                                      style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white,fontFamily:'Poppins-SemiBold',),
                                    ),
                                    SizedBox(width: 40,),
                                    Text("michael03@gmail.com",style: TextStyle(
                                      fontSize: 17, color: Colors.white,fontFamily:'Poppins-Light',),),
                                  ],),
                              ),
                              SizedBox(height: 60,),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on_outlined ,color: Colors.white,),
                                    SizedBox(width: 20,),
                                    Text("Address",
                                      style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white,fontFamily:'Poppins-SemiBold',),
                                    ),
                                    SizedBox(width: 20,),
                                    Container(
                                      width: 150,
                                      height: 30,
                                      // color: Colors.white,
                                      child: Center(
                                        child: Text("Jibu Raju, flat no 12 b skyline, ernakulam 682018",style: TextStyle(
                                           color: Colors.white,fontFamily:'Poppins-Light',),textAlign: TextAlign.center,),
                                      ),
                                    ),
                                  ],),
                              ),
                            ],),
                        ),
                        Positioned(

                          bottom: 450,
                          top: -70,
                          right: 50,
                          left: 50,
                          // top:-20,
                          child:CircleAvatar(
                            radius: 60.0, backgroundImage: AssetImage('images/website.jpg'),),),
                      ],
                      overflow: Overflow.visible,
                    ),
                  ])),
        ),
      ),
    );
  }
}