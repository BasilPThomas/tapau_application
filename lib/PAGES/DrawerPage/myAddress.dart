import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyAddressPage extends StatefulWidget {
  @override
  _MyAddressPageState createState() => _MyAddressPageState();
}

class _MyAddressPageState extends State<MyAddressPage> with
  TickerProviderStateMixin {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/myAddress',);
  }
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }


  Widget _subscribeButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyAddressPage()));
      },
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFF880E4F), Color(0xFF880E4F),]
            )
        ),
        child: Text(
          'Save',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Widget _breakfastLunchPage() {
    return Container(
      child: DefaultTabController(
          length: 3, // length of tabs
          initialIndex: 0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: TabBar(
                    labelColor: Colors.pink[900],
                    controller: _tabController,
                    indicatorColor: Colors.teal,
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      Tab(text: 'Breakfast'),
                      Tab(text: 'Lunch'),
                      Tab(text: 'Dinner'),
                    ],),),
                SizedBox(height: 40,),
                Container(height: 80,
                    width: 250,
                    child: TabBarView(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20,),
                                  height: 80,
                                  width: 250,
                                  child: Text(
                                    'Jibu Raju, flat no 12 b skyline, kakkanadu, ernakulam , 682018',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),),
                                ),
                                Container(
                                  height: 30,width: 60,color: Colors.white,
                                  child: Center(child: Text("Edit",textAlign: TextAlign.center,)),
                                ),
                              ],),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20,),
                                  height: 80,
                                  width: 250,
                                  child: Text(
                                      'Jibu Raju, flat no 12 b skyline, kakkanadu, ernakulam , 682018',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),),
                                ),
                                Container(
                                  height: 30,width: 60,color: Colors.white,
                                  child: Center(child: Text("Edit",textAlign: TextAlign.center,)),
                                ),
                              ],),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20,),
                                height: 80,
                                width: 250,
                                child: Text(
                                  'Jibu Raju, flat no 12 b skyline, kakkanadu, ernakulam , 682018',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),),
                              ),
                              Container(
                                height: 30,width: 60,color: Colors.white,
                                child: Center(child: Text("Edit",textAlign: TextAlign.center,)),
                              ),
                            ],),
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
        title: Center(child: Text(
          "My Address", style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,)),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _breakfastLunchPage(),
                  SizedBox(height: 40,),
                  _subscribeButton(),
                ])),
      ),
    );
  }
}