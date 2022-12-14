import 'package:b2b/Utility/color.dart';
import 'package:b2b/widgets/app-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sizer/sizer.dart';

class SingleFoods extends StatefulWidget {
  final String thumbnil;
  const SingleFoods({Key? key, required this.thumbnil}) : super(key: key);

  @override
  State<SingleFoods> createState() => _SingleFoodsState();
}

class _SingleFoodsState extends State<SingleFoods> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF363707),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height/2,
                child: Stack(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.pop(context),
                            child: Container(
                              width: 30,
                              height: 30,
                              padding: EdgeInsets.only(left: 7),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: appColors.blackText,
                                  size: 20,
                                ),
                              )
                              ),
                          ),
                          InkWell(
                            onTap: ()=>Navigator.pop(context),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: appColors.blackText,
                                  size: 20,
                                ),
                              )
                              ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      height:200,
                      margin: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(

                      ),
                      child: Image.asset("${widget.thumbnil}"),
                    ),

                    Positioned(
                      bottom: 10,
                      right: 20,
                      child: Row(
                        children: [
                          InkWell(
                            onTap:(){

                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.remove,
                                color: Colors.grey,
                              ),
                            ),
                          ),

                          SizedBox(width: 10,),
                          Text("2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap:(){

                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.remove,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    )


                  ],
                ),
              ),
              Container(
                height: height/2,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )
                ),
                child:Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tower Burger",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                    fontFamily: "ThemeFonts",
                                    color: appColors.blackText
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text("Double Patty Burger",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10.sp,
                                      fontFamily: "ThemeFonts",
                                      color: appColors.blackText
                                  ),
                                )
                              ],
                            ),

                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 3, color: Colors.grey.shade200)
                              ),
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),

                        Text("\$34.53",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              fontFamily: "ThemeFonts",
                              color: appColors.blackText
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Details",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp,
                              fontFamily: "ThemeFonts",
                              color: appColors.blackText
                          ),
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: width,
                          child: Text("Double Patty,cheese slice,green lettuce,bell pepper,tomato,onioninfuses hand-pulled espresso with rich chocolate sauce, sweet peppermint, topped with a cloud of whipped cream.",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 10.sp,
                                fontFamily: "ThemeFonts",
                                color: appColors.blackText
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Bounce(
                            duration: Duration(milliseconds: 80),
                            onPressed: (){},
                            child: AppButton(text: "Add to cart"),

                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
