import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/profile/profile-edit.dart';
import 'package:b2b/view/profile/profile-setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sizer/sizer.dart';

import '../notification.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height =MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.black,),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Text("Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "ThemeFont",
            color: appColors.blackText,
            fontSize: 12.sp
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Bounce(
                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileSetting())),
                  duration: Duration(milliseconds: 80),
                  child: Icon(
                    Icons.settings,
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


      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width,
              height: 300,
              child: Stack(
                children: [
                  Image.asset("assets/images/profile.png", height: 300, width: width, fit: BoxFit.cover,),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: width,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.1),
                            Colors.white.withOpacity(0.7),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NAYON TALUKDER",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "ThemeFont",
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text("nayon.coders@gmail.com",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "ThemeFont",
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileEdit()));
                              },
                              child: Container(
                                transform: Matrix4.translationValues(0.0, 50.0, 0.0),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xFFAEDC81),
                                ),
                                child: const Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )


                ],
              )
            ),

            SizedBox(height: 30,),
            Padding(padding:EdgeInsets.only(left: 20, right: 20),
             child: Text(
                "Info",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "ThemeFont",
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: Colors.black

                ),
              ),

            ),
            Padding(padding:EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildInfoList(title: "Name", text: "NAYON TALUKDER"),
                  buildInfoList(title: "Email", text: "nayon.coders@gmail.com"),
                  buildInfoList(title: "Contact Number", text: "+938 93983 93432"),
                  buildInfoList(title: "DATE OF BIRTH", text: "10 Oct 2001"),
                  buildInfoList(title: "Gender", text: "Mail"),
                  buildInfoList(title: "Location", text: "Sector 3, Magarpatta city, Pune, 462034"),



                ],
              ),

            )

          ],
        ),
      ),

    );
  }

  Container buildInfoList({
  required String title,
    required String text,
}) {
    return Container(
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 25),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$title",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 9.sp,
                            fontFamily: "ThemeFont",
                            color: Colors.black

                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "$text",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: "ThemeFont",
                            fontWeight: FontWeight.w600,
                            fontSize: 10.sp,
                            color: Colors.black

                        ),
                      ),
                    ],
                  ),
                );
  }
}
