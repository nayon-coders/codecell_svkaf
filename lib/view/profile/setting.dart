import 'package:b2b/Utility/color.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Setting extends StatefulWidget {
  final String title;
  const Setting({Key? key, required this.title}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
        title:  Text("${widget.title}",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "ThemeFont",
              color: appColors.blackText,
              fontSize: 12.sp
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
