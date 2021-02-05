import 'package:flutter/material.dart';
import 'package:tapau_application/PAGES/BottomPage/GuestPage/mYQRcode.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _currentIndex = 0 ;
  bool pressAttention = false;
  bool isEnabled = true ;
  enableButton () {
    setState(() { isEnabled = true; }); }
  disableButton(){
    setState(() { isEnabled = false; }); }
  sampleFunction(){
    print('Clicked'); }


  Widget _subscribeButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyQRCodePage()));
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
                colors: [Color(0xFF880E4F),Color(0xFF880E4F),]
            )
        ),
        child: Text(
          'Subscribe',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Widget _payment() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),),
                  onPressed: isEnabled ? () => sampleFunction() : null,
                  color: pressAttention ? Colors.purple : Colors.white,
                  padding: EdgeInsets.fromLTRB(70, 40, 70, 40),
                ),
                SizedBox(width: 50,),
                RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),),
                  onPressed: enableButton,
                  color: pressAttention ? Colors.purple : Colors.white,
                  padding: EdgeInsets.fromLTRB(70, 40, 70, 40),
                ),
              ]),
          SizedBox(height: 30,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),),
                  onPressed: isEnabled ? () => sampleFunction() : null,
                  color: pressAttention ? Colors.purple : Colors.white,
                  padding: EdgeInsets.fromLTRB(70, 40, 70, 40),
                ),
                SizedBox(width: 50,),
                RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),),
                  onPressed: enableButton,
                  color: pressAttention ? Colors.purple : Colors.white,
                  padding: EdgeInsets.fromLTRB(70, 40, 70, 40),
                ),
              ]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title:Center(child: Text("Payment",style: TextStyle(fontFamily:'Poppins-Light',),textAlign:TextAlign.center,)),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (value) {
            // Respond to item press.
            setState(() => _currentIndex = value);
          },
          items: [
            BottomNavigationBarItem(label: ('Home'),icon: Icon(Icons.school_rounded),
              // icon: ImageIcon(
              //     AssetImage("images/Group 547.png",)),
            ),
            BottomNavigationBarItem(label: ('Subscriptions'), icon: Icon(Icons.school_rounded),),
            BottomNavigationBarItem(label: ('Donate'), icon: Icon(Icons.collections),),
            BottomNavigationBarItem(label: ('Add Guest'), icon: Icon(Icons.collections),),
          ]),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 30,horizontal: 20  ),
            child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  SizedBox(height: 120,),
                  _payment(),
                  SizedBox(height: 130,),
                  _subscribeButton()
                  // _breakFastLunch()
                ])),
      ),
    );
  }
}
