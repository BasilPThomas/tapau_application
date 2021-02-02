import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:tapau_application/PAGES/BottomPage/home/2inOneCombo/payment.dart';
import 'package:http/http.dart' as http;

class PickDate extends StatefulWidget {
  @override
  _PickDateState createState() => _PickDateState();
}

class _PickDateState extends State<PickDate> {
  Future<http.Response> fetchPost() {
    return http.post('https://jsonplaceholder.typicode.com/posts/myqrCode',);
  }
  Widget _mealPlannerButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>PaymentPage()));
      },
      child: Container(
        width: 350,
        padding: EdgeInsets.symmetric(vertical: 22,),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFF880E4F),Color(0xFF880E4F),]
            )
        ),
        child: Text(
          'Continue',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  DateTime _currentDate = DateTime(2021, 2, 22);
  DateTime _currentDate2 = DateTime(2021, 2, 22);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2021, 2, 22));
  DateTime _targetDateTime = DateTime(2021, 2, 22);
//  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2019, 2, 10): [
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  CalendarCarousel _calendarCarousel, _calendarCarouselNoHeader;

  @override
  Widget build(BuildContext context) {

    /// Example Calendar Carousel without header and custom prev & next button
    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.pink[900],
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      // daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
//      firstDayOfWeek: 4,
      markedDatesMap: _markedDateMap,
      height: 340.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder: CircleBorder(
          side: BorderSide(color: Colors.yellow)
      ),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      showHeader: false,
      todayTextStyle: TextStyle(
          color: Colors.pink[900],fontWeight: FontWeight.bold
      ),
      // markedDateShowIcon: true,
      // markedDateIconMaxShown: 2,
      // markedDateIconBuilder: (event) {
      //   return event.icon;
      // },
      // markedDateMoreShowTotal:
      //     true,
      todayButtonColor: Colors.white,
      selectedDayTextStyle: TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold
      ),
      selectedDayButtonColor: Colors.pink[900],
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.pinkAccent,
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.pink[900],
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.pink[900],
          title:Center(child: Text("Pick Dates",style: TextStyle(fontWeight: FontWeight.bold),textAlign:TextAlign.center,)),
        ),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //custom icon
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
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
                        colors: [Color(0xfff3f3f4),  Color(0xfff3f3f4)]
                    )
                ),
                margin: EdgeInsets.only(
                  top: 45.0,
                  // bottom: 3.0,
                  left: 13.0,
                  right: 13.0,
                ),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      child: Text('PREV'),
                      onPressed: () {
                        setState(() {
                          _targetDateTime = DateTime(_targetDateTime.year, _targetDateTime.month -1);
                          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                        });},),
                    SizedBox(width: 40,),
                    Expanded(
                        child: Text(
                          _currentMonth,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),)),
                    FlatButton(
                        child: Text('NEXT'),
                        onPressed: () {
                          setState(() {
                            _targetDateTime = DateTime(_targetDateTime.year, _targetDateTime.month +1);
                            _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                          });}),

                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
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
                        colors: [Color(0xfff3f3f4),  Color(0xfff3f3f4)]
                    )
                ),
                margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    _calendarCarouselNoHeader,
                  ],
                ),
              ),
              SizedBox(height: 20,),
              _mealPlannerButton()
            ],
          ),
        ));
  }
}
