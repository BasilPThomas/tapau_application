import 'package:flutter/material.dart';
import 'package:tapau_application/PAGES/BottomPage/GuestPage/guestCalendar.dart';
import 'package:http/http.dart' as http;

class GuestPageBottom extends StatefulWidget {
  @override
  _GuestPageBottomState createState() => _GuestPageBottomState();
}

class _GuestPageBottomState extends State<GuestPageBottom> {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/guest',);
  }

  Widget _breakFastLunch() {
    return Container(
      padding: EdgeInsets.symmetric( vertical: 40,horizontal:30 ),
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
          width: double.infinity,
          height: 130,
          child: Row(
            children: [
            Image(
              image: AssetImage('images/nonveg.jpg'),fit: BoxFit.contain,),
              SizedBox(width: 30,),
              Text("Break Fast",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
            ],),
            ),
          SizedBox(height: 30,),
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
            height: 130,
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(
                  'images/veg.jpg',
                  fit:BoxFit.contain,
                ),
                SizedBox(width: 30,),
                Text("Lunch",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
              ],),
            // color: Colors.black,
          ),
          SizedBox(height: 30,),
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
            height: 130,
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(
                  'images/eggs.jpg',
                  fit:BoxFit.contain,
                ),
                SizedBox(width: 30,),
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
        // width: MediaQuery
        //     .of(context)
        //     .size
        //     .width,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
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
        title:Text("Guest",style: TextStyle(fontFamily:'Poppins-Light',),textAlign:TextAlign.center,),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                _breakFastLunch(),
                SizedBox(height: 40,),
                _nextButton()
              ]),
        ),
      ),
    );
  }
}