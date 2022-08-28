import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/profile/setting.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.black,),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Text("Profile Setting",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "ThemeFont",
              color: appColors.blackText,
              fontSize: 12.sp
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/images/profile.png", height: 100, width: 100,),
                  ),
                  SizedBox(width: 20,),

                  Column(
                    children: [
                      Text("Nayon Talukder",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "ThemeFont",
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10,),

                      Text("+98 92389423474",
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                          color: Colors.black54
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(height: 2, color: Colors.grey,),

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("General",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontFamily: "ThemeFont",
                          fontWeight: FontWeight.w600,
                        color: Colors.grey
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting(title: "Password Change"))),
                      child: Text("Password Change",
                        style: TextStyle(
                            fontSize: 11.sp,
                            fontFamily: "ThemeFont",
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 1, color: Colors.grey,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting(title: "Phone Number Change"))),
                      child: Text("Phone Number Change",
                        style: TextStyle(
                            fontSize: 11.sp,
                            fontFamily: "ThemeFont",
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 1, color: Colors.grey,)
                ],
              ),
            ),


            SizedBox(height: 10,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Legal",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontFamily: "ThemeFont",
                          fontWeight: FontWeight.w600,
                          color: Colors.grey
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: (){},
                      child: Text("Terms of Use",
                        style: TextStyle(
                            fontSize: 11.sp,
                            fontFamily: "ThemeFont",
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 1, color: Colors.grey,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: (){},
                      child: Text("Privacy Policy",
                        style: TextStyle(
                            fontSize: 11.sp,
                            fontFamily: "ThemeFont",
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 1, color: Colors.grey,)
                ],
              ),
            ),

            SizedBox(height: 10,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Personal",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontFamily: "ThemeFont",
                          fontWeight: FontWeight.w600,
                          color: Colors.grey
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting(title: "Privacy Policy"))),
                      child: Text("Privacy Policy",
                        style: TextStyle(
                            fontSize: 11.sp,
                            fontFamily: "ThemeFont",
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 1, color: Colors.grey,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting(title: "Logout"))),
                      child: Text("Logout",
                        style: TextStyle(
                            fontSize: 11.sp,
                            fontFamily: "ThemeFont",
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 1, color: Colors.grey,)
                ],
              ),
            ),

            SizedBox(height: 50,),

          ],

        ),
      ),

    );
  }
}
