import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/remember-open.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:sizer/sizer.dart';
import 'package:time_pickerr/time_pickerr.dart';

import 'notification.dart';

class CreateReminder extends StatefulWidget {
  const CreateReminder({Key? key}) : super(key: key);

  @override
  State<CreateReminder> createState() => _CreateReminderState();
}

class _CreateReminderState extends State<CreateReminder> {
  DateTime _dateTime = DateTime.now();

bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
        title:  Text("ADD REMINDER",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "ThemeFont",
            color: appColors.blackText,
            fontSize: 13.sp
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Bounce(
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>RememberOpen())),
                duration: Duration(milliseconds: 80),
                child:Text("Done",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black26
                  ),
                )
            ),
          )
        ],
      ),
      body:Stack( 
        children: [
          Positioned(
            top: 10,
            left: 40,
            child: SizedBox(
              height: height/2.5,
              child:  hourMinute12HCustomStyle(),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height/2.3,
              width: width,
              decoration:  const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/remember-bg.png", ),
                  fit: BoxFit.cover,
                ),

              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tomorrow - Sat, 4 Dec",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp,
                            ),
                          ),
                          IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.calendar_month, size: 15.sp,))
                        ],
                      ),
                      TextFormField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: "Alarm note",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 8.sp,
                          ),
                ),
            ),

                      SizedBox(height: 6,),

                      Column(
                        children:[
                          Container(
                            padding: EdgeInsets.only(top: 20, bottom: 10),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1, color: Colors.grey),
                              )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Alarm sound",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
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

                                SizedBox(height: 5,),
                                Text("Homecoming",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                    fontFamily: "ThemeFont",
                                    color: Colors.blue
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20, bottom: 10),
                            decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(width: 1, color: Colors.grey),
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Vibration",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
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

                                SizedBox(height: 5,),
                                Text("Basic call",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 9.sp,
                                      fontFamily: "ThemeFont",
                                      color: Colors.blue
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20, bottom: 10),
                            decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(width: 1, color: Colors.grey),
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Snooze",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
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

                                SizedBox(height: 5,),
                                Text("5 minutes, 3 times",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 9.sp,
                                      fontFamily: "ThemeFont",
                                      color: Colors.blue
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 30,),
                      ],
                      )

                    ],
    ),
            ),
              ),
          ),
          ),


      ],
      )
    );
  }


  Widget hourMinute12HCustomStyle(){
    return new TimePickerSpinner(

      is24HourMode: false,

      spacing: 50,
      itemHeight: 80,
      isForce2Digits: true,
      minutesInterval: 1,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }
}
