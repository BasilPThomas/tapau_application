import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class MySubscription extends StatefulWidget {
  @override
  _MySubscriptionState createState() => _MySubscriptionState();
}

class _MySubscriptionState extends State<MySubscription> {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/subscription',);
  }
  Widget _Subscribed() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 110,horizontal: 35),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children :[
            Stack(
              children:[
                Container(
                  padding: EdgeInsets.all(8),
                  height: 160,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                          colors: [ Color(0xfff3f3f4),Color(0xfff3f3f4),]
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 178,),
                          Align(
                            alignment: Alignment.bottomLeft,
                              child: Text("Subscribed",style: TextStyle(fontFamily: 'Poppins-Poppins',fontSize: 20,color: Colors.green))),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("3 in One Combo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                          Text("Rs. 2,500",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.pink[900])),
                        ],
                      ),
                      Text("Lorem ipsum dolor sit amet, consecteturerty adipiscing elit."
                          " Integer non lectus eu urna euismod ullamcorper in ac nulla."
                          " Curabitur auctor consectetur lacus eu hendrerit."),
                    ],
                  ),
                ),
              Positioned(
                bottom: 120,
                top: -70,
                right: 55,
                left: 45,
                // top:-20,
                child:CircleAvatar(
                  radius: 60.0, backgroundImage: AssetImage('images/website.jpg'),),),
            ],
              overflow : Overflow.visible,
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title:Center(child: Text("My subscriptions",style: TextStyle(fontWeight: FontWeight.bold),textAlign:TextAlign.center,)),
        ),
        body:SafeArea(
            child: SingleChildScrollView(
                child :Column(
                  children: [
                    _Subscribed()
                  ],
                )
            )
        )
    );
  }
}
