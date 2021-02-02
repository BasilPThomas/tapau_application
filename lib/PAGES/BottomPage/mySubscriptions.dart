import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MySubscriptionBottom extends StatefulWidget {
  @override
  _MySubscriptionBottomState createState() => _MySubscriptionBottomState();
}

class _MySubscriptionBottomState extends State<MySubscriptionBottom> {

  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/Subscription',);
  }

  Widget _Subscribed() {
    return Container(
      padding: EdgeInsets.all(28),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children :[
            Stack(
              overflow : Overflow.clip,
              children:[
                Container(
                  padding: EdgeInsets.all(8),
                  height: 300,
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
                          CircleAvatar(
                            radius: 50.0, backgroundImage: AssetImage('images/website.jpg'),),
                          SizedBox(width: 30,),
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
                )
              ],),
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
