import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class PackagePage extends StatefulWidget {
  @override
  _PackagePageState createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/package',);
  }
  Widget _Subscribed() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 90,horizontal: 45),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children :[
            Stack(
              children:[
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                          colors: [ Color(0xfff3f3f4),Color(0xfff3f3f4),]
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("3 in One Combo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                            Text("Rs. 2,500",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.pink[900])),
                          ],),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Lorem ipsum dolor sit amet, consecteturerty adipiscing elit."
                            " Integer non lectus eu urna euismod ullamcorper in ac nulla."
                            " Curabitur auctor consectetur lacus eu hendrerit.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 90,
                  top: -40,
                  right: 55,
                  left: 45,
                  // top:-20,
                  child:CircleAvatar(
                    radius: 60.0, backgroundImage: AssetImage('images/website.jpg'),),),
              ],
              overflow : Overflow.visible,
            ),
            SizedBox(height: 60,),
            Stack(
              children:[
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                          colors: [ Color(0xfff3f3f4),Color(0xfff3f3f4),]
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("2 in One Combo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                            Text("Rs. 2,500",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.pink[900])),
                          ],),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Lorem ipsum dolor sit amet, consecteturerty adipiscing elit."
                            " Integer non lectus eu urna euismod ullamcorper in ac nulla."
                            " Curabitur auctor consectetur lacus eu hendrerit.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 90,
                  top: -40,
                  right: 55,
                  left: 45,
                  // top:-20,
                  child:CircleAvatar(
                    radius: 60.0, backgroundImage: AssetImage('images/website.jpg'),),),
              ],
              overflow : Overflow.visible,
            ),
            SizedBox(height: 60,),
            Stack(
              children:[
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                          colors: [ Color(0xfff3f3f4),Color(0xfff3f3f4),]
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("2 in One Combo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                            Text("Rs. 2,500",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.pink[900])),
                          ],),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Lorem ipsum dolor sit amet, consecteturerty adipiscing elit."
                            " Integer non lectus eu urna euismod ullamcorper in ac nulla."
                            " Curabitur auctor consectetur lacus eu hendrerit.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 90,
                  top: -40,
                  right: 55,
                  left: 45,
                  // top:-20,
                  child:CircleAvatar(
                    radius: 60.0, backgroundImage: AssetImage('images/website.jpg'),),),
              ],
              overflow : Overflow.visible,
            ),
              ],),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title:Center(child: Text("Packages",style: TextStyle(fontWeight: FontWeight.bold),textAlign:TextAlign.center,)),
        ),
        body:SingleChildScrollView(
            child :Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _Subscribed()
                ],
              ),
            )
        )
    );
  }
}
