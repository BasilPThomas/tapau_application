import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:http/http.dart' as http;

class ReferralPage extends StatefulWidget {
  @override
  _ReferralPageState createState() => _ReferralPageState();
}

class _ReferralPageState extends State<ReferralPage> {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/referral',);
  }
  Widget _ReferralButton()  {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ReferralPage()));
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
          'Refer now',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title:Center(child: Text("Referral",style: TextStyle(fontWeight: FontWeight.bold),textAlign:TextAlign.center,)),
          backgroundColor: Colors.pink[900],
        ),),
      body:SafeArea(
          child: SingleChildScrollView(
            child:Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1.5,
                    child:Image(image: AssetImage('images/Group 692.png'),),),
                  // SizedBox(height: 15,),
                  Text('Refer now & earn up to Rs. 500',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(height: 10,),
                  Text("Send a referral link to your friends via SMS/Email/Whatsapp",style: TextStyle(fontSize: 17,fontFamily: 'Poppins-Light',fontWeight: FontWeight.w300),textAlign: TextAlign.center,),
                  SizedBox(height: 35,),
                  Text("How does it work?",style: TextStyle(fontSize: 27,color: Colors.pink[900],fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  SizedBox(height: 45,),
                  Text("REFERRAL CODE",style: TextStyle(fontSize: 19,color: Colors.black38,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  SizedBox(height: 10,),
                  Container(
                      height: 50,
                      width: 180,
                      color: Colors.black12,
                      child: DottedBorder(
                        color: Colors.black,
                        strokeWidth: 1,
                        child:Center(child: Text("XUYE895W",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold))),)),
                  SizedBox(height: 45,),
                  _ReferralButton(),
                ],),
            ),
          )
      ),
    );
  }
}
