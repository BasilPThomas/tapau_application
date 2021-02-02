import 'package:flutter/material.dart';
import 'package:tapau_application/PAGES/BottomPage/Home/3inOneCombo/deliveryDetails.dart';
import 'package:http/http.dart' as http;

class ThreeInOne extends StatefulWidget {
  @override
  _ThreeInOneState createState() => _ThreeInOneState();
}

class Photo {
  Photo({
    this.assetName,
    this.assetPackage,
    this.title,
    this.caption,
  });
  final String assetName;
  final String assetPackage;
  final String title;
  final String caption;
}

class _ThreeInOneState extends State<ThreeInOne>  with SingleTickerProviderStateMixin {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/threeInOne',);
  }
  double appPadding = 20.0;
  Color pink = Colors.pink[900];
  Color white = Colors.white;
  Color black = Colors.black;
  final List<String> categoryList = [
    'Break Fast',
    'Lunch',
    'Dinner',
  ];
  List<Photo> photos = <Photo>[
    Photo(assetName: 'images/veg.jpg', title: 'Idli, Chutney',),
    Photo(assetName: 'images/frozen.jpg', title: 'Dosa, Sambar',),
    Photo(assetName: 'images/bev.jpg', title: 'Idiyappam, Egg',),
    Photo(assetName: 'images/brand_f.jpg', title: 'Brannded Food',),
    Photo(assetName: 'images/be.jpg', title: 'Chapathi, Egg Curry',),
    Photo(assetName: 'images/home.jpg', title: 'Porotta, Veg',),
  ];

  final List<String> items = <String>['Single','Group','Family '];
  String selectedItem = 'Single';
  int selectedCategoryIndex = 0;

    Widget _buildCategory(BuildContext context, int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Container(
        width: 120,
        // padding: EdgeInsets.symmetric(horizontal: appPadding / 5),
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

    Widget _subscribeButton()  {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DeliveryDetails()));
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
          'Subscribe',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

    Widget _vegAndNonVeg() {
      return Container(
          child: DefaultTabController(
              length: 2, // length of tabs
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                Container(
                  child: TabBar(
                    labelColor: Colors.pink[900],
                    unselectedLabelColor: Colors.black,
                    tabs: [
                    Tab(text: 'Veg'),
                    Tab(text: 'Non-Veg'),
            ],),),
                  SizedBox(height: 10,),
                  Container(
                      height: 560.0,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(2, 4),
                                blurRadius: 5,
                                spreadRadius: 2)
                          ],
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xfff3f3f4), Color(0xfff3f3f4)]
                          )
                      ),
                      child: TabBarView(children: <Widget>[
                        Container(
                          child: Center(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Breakfast package items (RANDOM)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    height: 500.0,
                                    child: new GridView.builder(
                                        itemCount: photos.length,
                                        primary: false,
                                        physics: NeverScrollableScrollPhysics(),
                                        padding: const EdgeInsets.all(10.0),
                                        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2),
                                        itemBuilder: (BuildContext context, int index) {
                                          return new GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> ThreeInOne()));
                                              },

                                              child: new Container(
                                                  margin: EdgeInsets.all(5.0),
                                                  child: new Card(
                                                    // shape: shapeBorder,
                                                    elevation: 3.0,
                                                    child: new Container(
                                                      //  mainAxisSize: MainAxisSize.max,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: <Widget>[
                                                          SizedBox(
                                                            height: 130.0,
                                                            child: Stack(
                                                              children: <Widget>[
                                                                Positioned.fill(
                                                                    child: Image.asset(
                                                                      photos[index].assetName,
                                                                      fit: BoxFit.cover,
                                                                    )),
                                                                Container(
                                                                  color: Colors.black38,
                                                                ),
                                                                Container(
                                                                  //margin: EdgeInsets.only(left: 10.0),
                                                                  padding: EdgeInsets.only(left: 3.0, bottom: 3.0),
                                                                  alignment: Alignment.bottomLeft,
                                                                  child: new GestureDetector(
                                                                    onTap: () {
                                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ThreeInOne()));
                                                                    },
                                                                    child: new Text(
                                                                      photos[index].title,
                                                                      style: TextStyle(
                                                                          fontSize: 12.0,
                                                                          color: Colors.white,
                                                                          fontWeight:
                                                                          FontWeight.bold),
                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ),
                                                          ),

                                                          // new Text(photos[index].title.toString()),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                              )

                                          );
                                        }),
                                  )
                                ],)
                          ),),
                        Container(
                          child: Center(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Breakfast package items (RANDOM)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    height: 500.0,
                                    child: new GridView.builder(
                                        itemCount: photos.length,
                                        primary: false,
                                        physics: NeverScrollableScrollPhysics(),
                                        padding: const EdgeInsets.all(10.0),
                                        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2),
                                        itemBuilder: (BuildContext context, int index) {
                                          return new GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> ThreeInOne()));
                                              },

                                              child: new Container(
                                                  margin: EdgeInsets.all(5.0),
                                                  child: new Card(
                                                    // shape: shapeBorder,
                                                    elevation: 3.0,
                                                    child: new Container(
                                                      //  mainAxisSize: MainAxisSize.max,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: <Widget>[
                                                          SizedBox(
                                                            height: 130.0,
                                                            child: Stack(
                                                              children: <Widget>[
                                                                Positioned.fill(
                                                                    child: Image.asset(
                                                                      photos[index].assetName,
                                                                      fit: BoxFit.cover,
                                                                    )),
                                                                Container(
                                                                  color: Colors.black38,
                                                                ),
                                                                Container(
                                                                  //margin: EdgeInsets.only(left: 10.0),
                                                                  padding: EdgeInsets.only(left: 3.0, bottom: 3.0),
                                                                  alignment: Alignment.bottomLeft,
                                                                  child: new GestureDetector(
                                                                    onTap: () {
                                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ThreeInOne()));
                                                                    },
                                                                    child: new Text(
                                                                      photos[index].title,
                                                                      style: TextStyle(
                                                                          fontSize: 12.0,
                                                                          color: Colors.white,
                                                                          fontWeight:
                                                                          FontWeight.bold),
                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ),
                                                          ),

                                                          // new Text(photos[index].title.toString()),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                              )

                                          );
                                        }),
                                  )
                                ],)
                          ),),
                      ])
                  )
      ])
      )
      );
    }

    Widget _dropdownVaules() {
      return  Container(
       decoration: BoxDecoration(
         color: Colors.pink[900],
         borderRadius: BorderRadius.circular(60.0),
       ),
       padding: EdgeInsets.only(left: 40.0,right: 38,top: 1,bottom: 1),
       child:  DropdownButtonHideUnderline(
         child: DropdownButton<String>(
          value: selectedItem,
          focusColor: Colors.pink[900],
          iconEnabledColor: Colors.white,
          onChanged: (String string) => setState(() => selectedItem = string),
          selectedItemBuilder: (BuildContext context) {
           return items.map<Widget>((String item) {
           return Center(child: Text('$item',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)));
           }).toList();
           },
           items: items.map((String item) {
           return DropdownMenuItem<String>(
           child: Center(child: Text('$item',style: TextStyle(color: Colors.pink[900],fontWeight: FontWeight.bold))),
           value: item,
            );
            }).toList(),
            ),
       ),
          );
    }

    Widget _mealPackOfThree(){
      return SizedBox(
        height: 160,
        child: Column(
          children: [
            Row(
              children: [
                Text("3 in 1 Meal Pack", style: TextStyle(fontSize: 21, fontFamily:'Poppins',fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                _dropdownVaules(),
              ],
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                  " Integer non lectus eu urna euismod ullamcorper in ac nulla. "
                  "Curabitur auctor consectetur lacus eu hendrerit.", style: TextStyle(fontSize: 12, fontFamily:'Poppins',fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      );
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: AppBar(
            title: Align(
                alignment: Alignment.bottomLeft,
                child: Text("3 in One Combo",style: TextStyle(fontSize: 22,fontFamily: 'Poppins-SemiBold',))),
            backgroundColor: Colors.pink[900] ,
          ),),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 15 , horizontal: 16),
            child: Column(
              children: [
                _mealPackOfThree(),
                Container(
                  height: 35,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList.length,
                      itemBuilder: (context,index){
                        return _buildCategory(context,index);
                      }
                  ),
                ),
                _vegAndNonVeg(),
                SizedBox(height: 20,),
                _subscribeButton()
              ],),
          ),
        ),);
    }
  }
