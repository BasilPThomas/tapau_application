import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';


class MyQRCodePage extends StatefulWidget {
  @override
  _MyQRCodePageState createState() => _MyQRCodePageState();
}

class _MyQRCodePageState extends State<MyQRCodePage> {
  final List<String> categoryList = [
    'Home',
    'Office',
  ];
  int selectedCategoryIndex = 0;
  Color pink = Colors.pink[900];
  Color white = Colors.white;

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

  Widget _buildCategory(BuildContext context, int index){
      return GestureDetector(
        onTap: (){
          setState(() {
            selectedCategoryIndex = index;
          });
        },
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: selectedCategoryIndex == index ?
            pink : white,
          ),
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                  fontWeight: selectedCategoryIndex == index ? FontWeight.bold : FontWeight.normal,
                  color: selectedCategoryIndex == index ? white : pink
              ),
            ),
          ),
        ),
      );
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title:Center(child: Text("My QR code",style: TextStyle(fontWeight: FontWeight.bold),textAlign:TextAlign.center,)),
      ),

      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  height: 55,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList.length,
                      itemBuilder: (context,index){
                        return _buildCategory(context,index);
                      }
                  ),
                ),
                SizedBox(height: 120,),
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
