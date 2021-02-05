import 'package:flutter/material.dart';
import 'package:tapau_application/PAGES/BottomPage/home/3inOneCombo/threeInOne.dart';
import 'package:tapau_application/PAGES/BottomPage/home/2inOneCombo/twoInOne.dart';
import 'package:tapau_application/PAGES/BottomPage/home/1inOneCombo/oneInOne.dart';
import 'package:tapau_application/PAGES/DrawerPage/myProfile.dart';
import 'package:tapau_application/PAGES/DrawerPage/mySubscription.dart';
import 'package:tapau_application/PAGES/DrawerPage/packages.dart';
import 'package:tapau_application/PAGES/DrawerPage/referral.dart';
import 'package:tapau_application/PAGES/DrawerPage/GuestPage/guest.dart';
import 'package:tapau_application/PAGES/DrawerPage/myAddress.dart';
import 'package:tapau_application/PAGES/DrawerPage/MealPlannerPage/mealPlanner.dart';
import 'package:tapau_application/PAGES/RegistrationPage/loginPage.dart';
import 'package:flutter/painting.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:http/http.dart' as http;
import 'package:tapau_application/PAGES/BottomPage/home/gift.dart';

class PageHome extends StatefulWidget {
  // final String title;
  // PageHome(this.title) : assert(title != null);
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {

  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/PageHome',);
  }

  Widget _threeComboOffer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 50,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children : [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>ThreeInOne()));
                      },
                      child: Container(
                        margin: EdgeInsets.zero,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(
                                colors: [ Color(0xfff3f3f4),Color(0xfff3f3f4),]
                            )),
                        child:  Center(
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AspectRatio(
                                  aspectRatio: 7.5,
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Image(image: AssetImage("images/Group 688.png"),))),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text("Rs.2500", textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink[900],fontSize: 13),),),
                              SizedBox(height: 10,),
                              Text("3 in One Combo", style: TextStyle( fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,),
                              SizedBox(height: 10,),
                              Center(
                                child: Text("Lorem ipsum dolor sit amet, consecteturerty adipiscing elit. "
                                    "Integer non lectus eu urna euismod ullamcorper in ac nulla. "
                                    "Curabitur auctor consectetur lacus eu hendrerit.",
                                  style: TextStyle( fontSize: 8,color: Colors.black),
                                  textAlign: TextAlign.center,),),
                            ],),
                        ),
                      ),),
                    Positioned(
                      bottom: 80,
                      top: -50,
                      right: 40,
                      child:CircleAvatar(
                        radius: 60.0, backgroundImage: AssetImage('images/website.jpg'),),),
                  ],
                  overflow: Overflow.visible,
                ),
                Stack(
                  children : [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => TwoInOne()));
                      },
                      child: Container(
                        margin: EdgeInsets.zero,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(
                                colors: [ Color(0xfff3f3f4),Color(0xfff3f3f4),]
                            )),
                        child:  Center(
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AspectRatio(
                                  aspectRatio: 7.5,
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Image(image: AssetImage("images/Group 688.png"),))),
                              // SizedBox(height: 30,),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text("Rs.2500", textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink[900],fontSize: 13),),),
                              SizedBox(height: 10,),
                              Text("2 in One Combo", style: TextStyle( fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,),
                              SizedBox(height: 10,),
                              Center(
                                child: Text("Lorem ipsum dolor sit amet, consecteturerty adipiscing elit. "
                                    "Integer non lectus eu urna euismod ullamcorper in ac nulla. "
                                    "Curabitur auctor consectetur lacus eu hendrerit.",
                                  style: TextStyle( fontSize: 8,color: Colors.black),
                                  textAlign: TextAlign.center,),),
                            ],),
                        ),
                      ),),
                    Positioned(
                      bottom: 80,
                      top: -50,
                      right: 40,
                      child:CircleAvatar(
                        radius: 60.0, backgroundImage: AssetImage('images/website.jpg'),),),
                  ],
                  overflow: Overflow.visible,
                ),
              ]),
          SizedBox(height: 70,),
          Stack(
            children : [
              InkWell(
                onTap: (){
                  // Navigator.pushNamed(context, '/oneinone');routeBuilders[TabNavigatorRoutes.detail](context)
                  Navigator.push(context,MaterialPageRoute(builder: (context) => OneInOne()));
                },
                child: Container(
                  margin: EdgeInsets.zero,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                          colors: [ Color(0xfff3f3f4),Color(0xfff3f3f4),]
                      )),
                  child:  Center(
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AspectRatio(
                            aspectRatio: 7.5,
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Image(image: AssetImage("images/Group 688.png"),))),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text("Rs.2500", textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink[900],fontSize: 13),),),
                        SizedBox(height: 10,),
                        Text("1 in One Combo", style: TextStyle( fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,),
                        SizedBox(height: 10,),
                        Center(
                          child: Text("Lorem ipsum dolor sit amet, consecteturerty adipiscing elit. "
                              "Integer non lectus eu urna euismod ullamcorper in ac nulla. "
                              "Curabitur auctor consectetur lacus eu hendrerit.",
                            style: TextStyle( fontSize: 8,color: Colors.black),
                            textAlign: TextAlign.center,),),
                      ],),
                  ),
                ),),
              Positioned(
                bottom: 80,
                top: -50,
                right: 40,
                child:CircleAvatar(
                  radius: 60.0, backgroundImage: AssetImage('images/website.jpg'),),),
            ],
            overflow: Overflow.visible,
          ),
        ],),
    );
  }

  Widget _sliderWidget() {
    return Container(
        height: 200.0,
        width: double.infinity,
        child: Carousel(
          images: [
            Image.asset(
                "images/groceries.jpg",
                // height: 150,
                fit:BoxFit.cover
            ),
            Image.asset(
              "images/grtwo.jpg",
              fit:BoxFit.cover ,
              // height: 150,
            ),
            Image.asset(
              "images/home.jpg",
              // height: 150,
              fit:BoxFit.cover ,
            ),
          ],
          dotSize: 6.0,
          dotSpacing: 15.0,
          dotColor: Colors.pink[900],
          overlayShadowColors: Colors.black26,
          indicatorBgPadding: 1.0,
          dotBgColor: Colors.white.withOpacity(0.2),
          moveIndicatorFromBottom: 100.0,
          noRadiusForIndicator: true,
        ));
  }

  Widget _widgetForDrawer() {
    return Container(
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Text('Panda',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                Text('5566 | Location', style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 12, color: Colors.white),),
              ],),
            Expanded(
              child : CircleAvatar(
                radius: 60.0, backgroundImage: AssetImage('images/website.jpg'),),
            ),

          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_widgetForDrawer()],
              ),
              decoration: BoxDecoration(
                color: Colors.pink[900],
                // borderRadius: BorderRadius.all(Radius.circular(30)),
                // :  Rect.fromLTWH(50.0, 50.0, 220.0, 90.0),
              ),),
            ListTile(
              title: Text('Profile', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.pink[900]),),
              leading: Icon(Icons.person_pin ,color: Colors.pink[900],),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()),);}
            ),
            ListTile(
              title: Text('My Subscription', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.pink[900]),),
              leading:Icon(Icons.add_chart,color: Colors.pink[900],),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MySubscription()),);}
              ),
            ListTile(
              title: Text('Meal Planner', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.pink[900]),),
              leading:Icon(Icons.article_outlined ,color: Colors.pink[900],),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MealPlanner()),);
              }),
            ListTile(
              title: Text('My Address', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.pink[900]),),
              leading:Icon(Icons.location_on_outlined ,color: Colors.pink[900],),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyAddressPage()),);
              }),
            ListTile(
              title: Text('Package', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.pink[900]),),
              leading:Icon(Icons.assignment ,color: Colors.pink[900],),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PackagePage()),);
              }),
            ListTile(
              title: Text('Referral', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.pink[900]),),
              leading: Icon(Icons.menu_book_outlined ,color: Colors.pink[900],),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ReferralPage()),);
              }),
            ListTile(
              title: Text('Guest', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.pink[900]),),
              leading: Icon(Icons.person_outline,color: Colors.pink[900],),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => GuestPage()),);},
            ),
            ListTile(
              title: Text('My QR Codes' , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.pink[900]),),
              leading: Icon(Icons.qr_code,color: Colors.pink[900],),
              onTap: () {
                print('Button Clicked.');
                // Navigator.push(context,
                //   MaterialPageRoute(builder: (context) => ProfilePage()),);
              },),
            ListTile(
              title: Text('Logout', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.pink[900]),),
              leading: Icon(Icons.logout,color: Colors.pink[900],),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);
  }),
          ],),),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.pink[900],
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20)
            ),
          ),
          child: AppBar(
              backgroundColor: Colors.transparent,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.shopping_cart),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>GiftPage()));}),
              ]),
        ),),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _sliderWidget(),
                Container(
                    margin: EdgeInsets.symmetric( horizontal: 40,vertical: 30),
                    child: _threeComboOffer())
              ]),
        )),
    );
  }
}
