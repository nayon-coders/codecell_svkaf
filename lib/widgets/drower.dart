import 'package:b2b/Utility/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class AppDrawer{
  Drawer buildDrawer(double height) {
    return Drawer(
      width: 250,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20)
        ),
      ),
      child: Container(
        width: 250,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF171717),
                Color(0xFF171717).withOpacity(0.6),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: ListView(
          children:  [
            SizedBox(height: 30,),
            Center(
              child: Text(
                "XYZ",
                style: TextStyle(
                    fontFamily: "ThemeFont",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 200,
              margin: EdgeInsets.only(right: 40),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  )
              ),
              child: ListTile(
                leading: Icon(Icons.home_outlined, color: appColors.blackText, size: 25,),
                title: Text("Home",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: appColors.blackText,
                      fontFamily: "ThemeFont"
                  ),
                ),
              ),
            ),

            Bounce(
              duration: Duration(milliseconds: 80),
              onPressed: (){},
              child: DrawerItems("Profile", Icons.person_outline),
            ),

            Bounce(
              duration: Duration(milliseconds: 80),
              onPressed: (){},
              child: DrawerItems("Nearby", Icons.location_on_outlined),
            ),

            SizedBox(height: 20,),
            Divider(height: 1, color: Colors.grey.shade300,),
            SizedBox(height: 20,),

            Bounce(
              duration: Duration(milliseconds: 80),
              onPressed: (){},
              child: DrawerItems("Bookmark", Icons.bookmark_border),
            ),

            Bounce(
              duration: Duration(milliseconds: 80),
              onPressed: (){},
              child: DrawerItems("Notification", Icons.notifications_none),
            ),

            Bounce(
              duration: Duration(milliseconds: 80),
              onPressed: (){},
              child: DrawerItems("Reminder", Icons.remember_me_outlined),
            ),

            SizedBox(height: 20,),
            Divider(height: 1, color: Colors.grey.shade300,),
            SizedBox(height: 20,),

            Bounce(
              duration: Duration(milliseconds: 80),
              onPressed: (){},
              child: DrawerItems("Nanny Service", Icons.support_agent_outlined),
            ),
            Bounce(
              duration: Duration(milliseconds: 80),
              onPressed: (){},
              child: DrawerItems("Trash Cleaning", Icons.cleaning_services_outlined),
            ),

            SizedBox(height: 20,),
            Divider(height: 1, color: Colors.grey.shade300,),
            SizedBox(height: 20,),
            Bounce(
              duration: Duration(milliseconds: 80),
              onPressed: (){},
              child: DrawerItems("Setting", Icons.settings),
            ),
            Bounce(
              duration: Duration(milliseconds: 80),
              onPressed: (){},
              child: DrawerItems("Help", Icons.help_outline),
            ),
            Bounce(
              duration: Duration(milliseconds: 80),
              onPressed: (){},
              child: DrawerItems("Logout", Icons.logout_outlined),
            ),





          ],
        ),
      ),
    );
  }


  Widget DrawerItems(String? text, IconData? icon){
    return ListTile(
      leading: Icon(icon, color: Colors.white, size: 25,),
      title: Text("$text",
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontFamily: "ThemeFont"
        ),
      ),
    );
  }
}
