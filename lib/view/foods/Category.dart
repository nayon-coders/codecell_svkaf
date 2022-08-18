import 'package:b2b/Utility/color.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../shop/cart-screen.dart';

class CategroyList extends StatefulWidget {
  const CategroyList({Key? key}) : super(key: key);

  @override
  State<CategroyList> createState() => _CategroyListState();
}

class _CategroyListState extends State<CategroyList> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade200,
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, size: 25,color: Colors.black,),


                    ),
                  ),
                  Center(
                    child: Text("Menu",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w800,
                          fontFamily: "ThemeFont",
                          color: appColors.blackText
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart())),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.grey.shade200,
                      ),
                      child: Icon(Icons.tune, color: Colors.black, size: 25,),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:width /3.2,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFBFB),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/c (5).png",height: 70, width: 70,),
                      SizedBox(height: 10,),
                      Text("category",
                        style: TextStyle(
                          fontSize: 9.sp,
                          color: Colors.black54
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width:width /3.2,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFBFB),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/c (2).png",height: 70, width: 70,),
                      SizedBox(height: 10,),
                      Text("category",
                        style: TextStyle(
                            fontSize: 9.sp,
                            color: Colors.black54
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width:width /3.2,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFBFB),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/c (3).png",height: 70, width: 70,),
                      SizedBox(height: 10,),
                      Text("category",
                        style: TextStyle(
                            fontSize: 9.sp,
                            color: Colors.black54
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:width /3.2,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFBFB),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/c (4).png" , height: 70, width: 70,),
                      SizedBox(height: 10,),
                      Text("category",
                        style: TextStyle(
                            fontSize: 9.sp,
                            color: Colors.black54
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width:width /3.2,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFBFB),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/c (5).png", height: 70, width: 70,),
                      SizedBox(height: 10,),
                      Text("category",
                        style: TextStyle(
                            fontSize: 9.sp,
                            color: Colors.black54
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width:width /3.2,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFBFB),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/c (6).png", height: 70, width: 70,),
                      SizedBox(height: 10,),
                      Text("category",
                        style: TextStyle(
                            fontSize: 9.sp,
                            color: Colors.black54
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),




          ],
        ),
      ),
    );
  }
}
