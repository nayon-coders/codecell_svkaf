import 'package:b2b/Utility/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'notification.dart';

class ReminderList extends StatefulWidget {
  const ReminderList({Key? key}) : super(key: key);

  @override
  State<ReminderList> createState() => _SetReminderState();
}

class _SetReminderState extends State<ReminderList> {
  bool state = false;
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
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
        title: const Text("Reminder Setting",
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
            margin: EdgeInsets.only(top: 30),
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

          SizedBox(height: 30,),

          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: width,
            height: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(2, 3), // changes position of shadow
                ),
              ],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("0:6 AM",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    Text("Friday, August 5",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                        color: appColors.blackText
                      ),
                    )
                  ],
                ),
                Container(
                  child: Switch(
                    value: isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                ),
              ],
            ),


          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: width,
            height: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(2, 3), // changes position of shadow
                ),
              ],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("0:6 AM",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    Text("Friday, August 5",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 15,
                          color: appColors.blackText
                      ),
                    )
                  ],
                ),
                Container(
                  child: Switch(
                    value: state,
                    onChanged: (bool value) {
                      setState(() {
                        state = value;
                      });
                    },
                  ),
                ),
              ],
            ),


          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: width,
            height: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(2, 3), // changes position of shadow
                ),
              ],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("0:6 AM",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    Text("Friday, August 5",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 15,
                          color: appColors.blackText
                      ),
                    )
                  ],
                ),
                Container(
                  child: Switch(
                    value: state,
                    onChanged: (bool value) {
                      setState(() {
                        state = value;
                      });
                    },
                  ),
                ),
              ],
            ),


          ),
          SizedBox(height: 30,),
          Bounce(
            duration: Duration(milliseconds: 80),
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ReminderList())),
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
