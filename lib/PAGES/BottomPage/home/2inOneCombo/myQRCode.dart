import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:http/http.dart' as http;

class MyQRCodePage extends StatefulWidget {
  @override
  _MyQRCodePageState createState() => _MyQRCodePageState();
}

class _MyQRCodePageState extends State<MyQRCodePage> {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/myqrCode',);
  }
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
          'Scan QR Code',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Widget _chooseThePlace() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RaisedButton(
            child: Text(" Home "),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),),
            onPressed: isEnabled ? () => sampleFunction() : null,
            color: pressAttention ? Colors.purple : Colors.white,
            padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
          ),
          SizedBox(width: 50,),
          RaisedButton(
            child: Text(" Office"),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),),
            onPressed: enableButton,
            color: pressAttention ? Colors.purple : Colors.white,
            padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
          ),
          SizedBox(width: 10,),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title:Center(child: Text("My QR code",style: TextStyle(fontWeight: FontWeight.bold),textAlign:TextAlign.center,)),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 50,horizontal: 30),
          child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Container(
                    height: 210,
                    width: 350,
                    child: _chooseThePlace()),
                // SizedBox(height: 100,),
                Container(
                    height: 100,
                    width: 180,
                    child: DottedBorder(
                      color: Colors.black,
                      strokeWidth: 180,
                      child:Center(child: Text("XUYE895W",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold))),
                    )),
                SizedBox(height: 135,),
                Text("Scan this code to finish your delivery",style: TextStyle(fontSize:18),textAlign:TextAlign.center,),
                SizedBox(height: 30,),
                _subscribeButton(),
              ])),
    );
  }
}
