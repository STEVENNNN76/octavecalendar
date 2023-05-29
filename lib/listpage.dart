import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import 'main.dart';
import 'settings.dart';

CalendarFormat format = CalendarFormat.month;
DateTime _selectedDay = DateTime.now();
DateTime _focusedDay = DateTime.now();
Color a = Color(0xFFEDDEE3);
Color b = Color(0xFF002C23);
Color c = Color(0xFF000F0B);
Color d = Color(0xFFB3CDC5);
Color e = Color(0xFF40826D);
bool val = true;

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calendar(),
    );
  }
}

class Calendar extends StatefulWidget{
  @override
  State<Calendar> createState()=>_CalendarState();

}

class _CalendarState extends State<Calendar> {
  String date1 = "${_focusedDay.day}";
  String week1 = "${_focusedDay.weekday}";
  String week2 = '';

  _CalendarState()
  {
    change();
    //addwidget();
  }

  void change()
  {
    if(week1=='1')
    {
      week2='MON'+'\n'+date1;
    }
    else if(week1=='2')
    {
      week2='TUE'+'\n'+date1;
    }
    else if(week1=='3')
    {
      week2='WED'+'\n'+date1;
    }
    else if(week1=='4')
    {
      week2='THU'+'\n'+date1;
    }
    else if(week1=='5')
    {
      week2='FRI'+'\n'+date1;
    }
    else if(week1=='6')
    {
      week2='SAT'+'\n'+date1;
    }
    else if(week1=='7')
    {
      week2='SUN'+'\n'+date1;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children: [
              Positioned( //<-- SEE HERE
                  left: MediaQuery.of(context).size.width/5.2,
                  top: MediaQuery.of(context).size.height/10.9,
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width/1.4,
                    height: MediaQuery.of(context).size.height/11.3,
                    child: Text(
                      '  hi, pavithra',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'OldStandardTT',
                        letterSpacing: 1.5,
                        color: val? e : d,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: val? d : b,
                      border: Border.all(
                        color: val? d : b,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(4, 4), // changes position of shadow
                        ),
                      ],
                    ),
                  )
              ),

              Positioned( //<-- SEE HERE
                left: MediaQuery.of(context).size.width/11,
                top: MediaQuery.of(context).size.height/10.9,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.height/11.3,
                  height:MediaQuery.of(context).size.height/11.3,
                  child: Text(
                    week2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      //fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: 'BebasNeue',
                      color: val? d : b,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: val? e : d,
                    border: Border.all(
                      color: val? e : d,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(2, 2), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),

              Positioned( //bLOGO
                left: MediaQuery.of(context).size.width/4.73,
                bottom: 42,
                child: Icon(
                    Icons.circle,
                    color: val? e : d,
                    size: 70.0
                ),
              ),

              Positioned( //sLOGO
                left: MediaQuery.of(context).size.width/4.2,
                bottom: 44,
                child: Icon(
                    Icons.circle,
                    color: val? a : c,
                    size: 58.0
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Row(
                    children: [
                      Container(
                          height: 400,
                          width: MediaQuery.of(context).size.height/35,
                      ),
                      Container(
                    height: MediaQuery.of(context).size.height/1.855,
                    width: MediaQuery.of(context).size.width/1.15,
                    child: ListView(
                        shrinkWrap: true,
                        padding: EdgeInsets.all(8),
                        children: <Widget>[
                          for(int i=1; i<=5; i++)
                                  Column(
                                      children: [ Container(
                                      width: MediaQuery.of(context).size.width/1.15,
                                      height: 100,
                                      //color: val? d : b,
                                      child: Text(
                                        '\nRandom ass text',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                          fontSize: 25,
                                          color: val? e : d,
                                          fontFamily: 'OldStandardTT',
                                      )
                                      ),
                                      decoration: BoxDecoration(
                                          color: val? d : b.withOpacity(0.5),
                                        border: Border.all(
                                          color: val? d : b,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                  ),
                                  Container(
                                    height: 6,
                                    width: 18,
                                  ),
                                  ],
                                  ),
                        ],

                    ),
                ),
        ]
                  ),
              ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.favorite_border_outlined),
                          color: val? e : d,
                          iconSize: 34.5,
                          onPressed: () {

                          },
                        ),

                        IconButton(
                            icon: Icon(Icons.list),
                            color: val? e : d,
                            iconSize: 35.0,
                            onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context){
                                    return ListApp();
                                  }));
                            }
                        ),

                        IconButton(
                          icon: Icon(Icons.home),
                          color: val? e : d,
                          iconSize: 35.0,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context){
                                  return MyApp();
                                }));
                          },
                        ),

                        IconButton(
                          color: val? e : d,
                          iconSize: 34.0,
                          onPressed: () {
                            val = !val;
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context){
                                  return ListApp();
                                }));
                          },
                          icon: val ? Icon(Icons.nightlight_round_rounded) : Icon(Icons.sunny),
                        ),

                        IconButton(
                          icon: Icon(Icons.settings),
                          color: val? e : d,
                          iconSize: 32.0,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context){
                                  return SettingsApp();
                                }));
                          },
                        ),
                      ]
                ),
                Container(
                  height: 50,
                )
               ],
              ),


           ],
        ),
      backgroundColor: val? a : c,
    );
  }
}

//0xFFEDDEE3