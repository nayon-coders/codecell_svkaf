import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/creat-reminder.dart';
import 'package:b2b/view/reminder-list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

import 'notification.dart';

class Remainder extends StatefulWidget {
  const Remainder({Key? key}) : super(key: key);

  @override
  State<Remainder> createState() => _RemainderState();
}

class _RemainderState extends State<Remainder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => InkWell(
            child: Icon(Icons.arrow_back, color: appColors.blackText,),
            onTap: () => Navigator.pop(context),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Reminder",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "ThemeFont",
            color: appColors.blackText,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Bounce(
                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen())),
                  duration: Duration(milliseconds: 80),
                  child: Icon(
                    Icons.notifications_none,
                    size: 30,
                    color: appColors.blackText,
                  ),
                ),
                Positioned(
                  right: 5,
                  top: 3,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70),
            child: DigitalClock(
              digitAnimationStyle: Curves.elasticOut,
              is24HourTimeFormat: false,
              areaDecoration: BoxDecoration(
                color: Colors.transparent,
              ),
              hourMinuteDigitTextStyle: TextStyle(
                color: appColors.blackText,
                fontSize: 50,
              ),
              amPmDigitTextStyle: TextStyle(color: appColors.blackText, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(height: 30,),

          Center(
            child: Text("Friday, August 5, 2022",
              style: TextStyle(
                fontSize: 15,
                fontFamily: "ThemeFont",
                fontWeight: FontWeight.w400
              ),
            ),
          ),

          SizedBox(height: 100,),

          Bounce(
              duration: Duration(milliseconds: 80),
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateReminder())),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: appColors.mainColors,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 1,
                  blurRadius: 20,
                  offset: Offset(2, 3), // changes position of shadow
                ),
              ],
            ),
            child: Icon(
              Icons.add,
              color: appColors.blackText,
              size: 50,
            ),
          )
          ,)
        ],
      ),


    );
  }
}
