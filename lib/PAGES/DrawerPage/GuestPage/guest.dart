import 'package:flutter/material.dart';
import 'package:tapau_application/PAGES/DrawerPage/GuestPage/guestCalendar.dart';
import 'package:http/http.dart' as http;

class GuestPage extends StatefulWidget {
  @override
  _GuestPageState createState() => _GuestPageState();
}

class _GuestPageState extends State<GuestPage> {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/guest',);
  }
  Widget _breakFastLunch() {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black38,
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xfff3f3f4),  Color(0xfff3f3f4)]
                )
            ),
            height: 120,
            width: 330,
            child: Row(
              children: [
                Image.asset(
                  'images/website.jpg',
                  height: 120,
                  width: 110,
                  fit:BoxFit.fitWidth,
                ),
                SizedBox(width: 80,),
                Text("Break Fast",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
              ],),
            // color: Colors.black,
          ),
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black38,
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xfff3f3f4),  Color(0xfff3f3f4)]
                )
            ),
            height: 120,
            width: 330,
            child: Row(
              children: [
                Image.asset(
                  'images/website.jpg',
                  height: 150,
                  width: 100,
                  fit:BoxFit.fitWidth,
                ),
                SizedBox(width: 80,),
                Text("Lunch",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
              ],),
            // color: Colors.black,
          ),
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black38,
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xfff3f3f4),  Color(0xfff3f3f4)]
                )
            ),
            height: 120,
            width: 330,
            child: Row(
              children: [
                Image.asset(
                  'images/website.jpg',
                  height: 150,
                  width: 100,
                  fit:BoxFit.fitWidth,
                ),
                SizedBox(width: 80,),
                Text("Dinner",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
              ],),
            // color: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget _nextButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => GuestCalender()));
      },
      child: Container(
        width:250,
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
          'Next',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title:Center(child: Text("Guest",style: TextStyle(fontFamily:'Poppins-Light',),textAlign:TextAlign.center,)),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 50,horizontal: 30),
            child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  _breakFastLunch(),
                  SizedBox(height: 40,),
                  _nextButton()
                  // _breakFastLunch()
                ])),
      ),
    );
  }
}