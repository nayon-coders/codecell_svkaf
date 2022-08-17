import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/flash-screen.dart';
import 'package:b2b/view/login.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: "Roboto",
            primaryColor: appColors.mainColors,


          ),
          home: FlashScreen(),
        );
      },

    );
  }
}
