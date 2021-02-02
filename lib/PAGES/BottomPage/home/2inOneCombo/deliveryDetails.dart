import 'package:flutter/material.dart';
import 'package:tapau_application/PAGES/BottomPage/home/2inOneCombo/pickDates.dart';
import 'package:http/http.dart' as http;

class DeliveryDetails extends StatefulWidget {
  @override
  _DeliveryDetailsState createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/deliveryDetails',);
  }
  Widget _subscribeButton()  {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>  PickDate ()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
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
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Widget _entryField() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 2),
      child: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  )),),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                  hintText: "Address",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  )),),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                  border:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),),
                  hintText: 'Place'
              ),),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                  border:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),),
                  hintText: 'Landmark'
              ),),
          ]),
    );
  }

  Widget _breakfastLunchPage() {
    return Container(
      child: DefaultTabController(
          length: 3, // length of tabs
          initialIndex: 0,
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: TabBar(
                    labelColor: Colors.pink[900],
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Breakfast'),
                      Tab(text: 'Lunch'),
                      Tab(text: 'Dinner'),
                    ],),),
                SizedBox(height: 10,),
                Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                    child: TabBarView(children: <Widget>[
                      Container(
                        child: Center(
                            child: Column(
                              children: [
                                _entryField(),
                              ],)
                        ),),
                      Container(
                        child: Center(
                            child: Column(
                              children: [
                                _entryField(),
                              ],)
                        ),),
                      Container(
                        child: Center(
                            child: Column(
                              children: [
                                _entryField(),
                              ],)
                        ),),
                    ])
                )
              ])
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title:Center(child: Text("Delivery details",style: TextStyle(fontWeight: FontWeight.bold),textAlign:TextAlign.center,)),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                _breakfastLunchPage(),
                _subscribeButton(),
              ])),
    );
  }
}