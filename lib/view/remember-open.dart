import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sizer/sizer.dart';

class RememberOpen extends StatefulWidget {
  const RememberOpen({Key? key}) : super(key: key);

  @override
  State<RememberOpen> createState() => _RememberOpenState();
}

class _RememberOpenState extends State<RememberOpen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/remember-open-bg.png"),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text("6 : 00 AM",
              style: TextStyle(
                  fontFamily: "Roboto",
                fontSize: 25.sp,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 5,),
            Text("Fri, 3 Dec",
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 9.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 100,),
            Text("Get Alarm note",
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 100,),

            Bounce(
              onPressed: ()=>Navigator.pop(context),
              duration: Duration(milliseconds: 800),
              child: Container(
                width: 100,
                  height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/open.png"),
                  )
                ),
                child: Center(
                  child: Text("OPEN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
