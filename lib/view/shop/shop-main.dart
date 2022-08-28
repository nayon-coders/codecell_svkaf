import 'package:b2b/Utility/color.dart';
import 'package:b2b/category-jeson.dart';
import 'package:b2b/view/foods/single-foods.dart';
import 'package:b2b/view/shop/Search-product.dart';
import 'package:b2b/view/shop/cart-screen.dart';
import 'package:b2b/view/shop/categroy-list.dart';
import 'package:b2b/view/shop/new-upload.dart';
import 'package:b2b/view/shop/product-json.dart';
import 'package:b2b/widgets/bottom-navigation-bar.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sizer/sizer.dart';

import '../reminder.dart';

class MainShopeScreen extends StatefulWidget {
  const MainShopeScreen({Key? key}) : super(key: key);

  @override
  State<MainShopeScreen> createState() => _MainShopeScreenState();
}

class _MainShopeScreenState extends State<MainShopeScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List sliderList = [
    Image.asset("assets/images/p4.png",),
    Image.asset( "assets/images/p1.jpeg",),
    Image.asset("assets/images/p4.jpg",),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
           children: [
             Stack(
               children: [

                 CarouselSlider(
                     items: [
                       Stack(
                         children: [
                           Image.asset("assets/images/p4.png", width: width, height: 250, fit: BoxFit.cover,),
                           Container(
                             width: width,
                             height: 250,
                             decoration:BoxDecoration(
                               color: Colors.black54.withOpacity(0.5),
                               borderRadius: BorderRadius.only(
                                 bottomLeft: Radius.circular(5),
                                 bottomRight: Radius.circular(5),
                               ),

                             ),
                           ),




                         ],
                       ),
                       Stack(
                         children: [
                           Image.asset("assets/images/p1.jpeg", width: width, height: 250, fit: BoxFit.cover,),
                           Container(
                             width: width,
                             height: 250,
                             decoration:BoxDecoration(
                               color: Colors.black54.withOpacity(0.5),
                               borderRadius: BorderRadius.only(
                                 bottomLeft: Radius.circular(5),
                                 bottomRight: Radius.circular(5),
                               ),

                             ),
                           ),




                         ],
                       ),
                       Stack(
                         children: [
                           Image.asset("assets/images/p4.png", width: width, height: 250, fit: BoxFit.cover,),
                           Container(
                             width: width,
                             height: 250,
                             decoration:BoxDecoration(
                               color: Colors.black54.withOpacity(0.5),
                               borderRadius: BorderRadius.only(
                                 bottomLeft: Radius.circular(5),
                                 bottomRight: Radius.circular(5),
                               ),

                             ),
                           ),




                         ],
                       ),
                     ],
                     options: CarouselOptions(
                       height: 250,
                       aspectRatio: 16/9,
                       viewportFraction: 1,
                       initialPage: 0,
                       enableInfiniteScroll: true,
                       reverse: false,
                       autoPlay: true,
                       autoPlayInterval: Duration(seconds: 3),
                       autoPlayAnimationDuration: Duration(milliseconds: 10),
                       autoPlayCurve: Curves.fastOutSlowIn,
                       enlargeCenterPage: true,
                       scrollDirection: Axis.horizontal,
                     )
                 ),

                 Padding(
                   padding: const EdgeInsets.only(right: 20, top: 10, left: 20),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         padding: EdgeInsets.all(3),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(100),
                           color: Colors.grey.withOpacity(0.3),
                         ),
                         child: InkWell(
                           onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AppBottomNavigationBar(index: 0,)));
                           },
                           child: Icon(Icons.arrow_back, size: 25,color: Colors.white,),


                         ),
                       ),
                       Center(
                         child: Text("Market Place",
                           style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.w400,
                               fontFamily: "ThemeFont",
                             color: appColors.blackText
                           ),
                         ),
                       ),

                       Row(

                         children: [
                           Container(
                             padding: EdgeInsets.all(3),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(100),
                               color: Colors.grey.withOpacity(0.3),
                             ),
                             child: Icon(Icons.search, color: Colors.white, size: 25,),
                           ),
                           SizedBox(width: 7,),
                           InkWell(
                             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart())),
                             child: Container(
                               padding: EdgeInsets.all(3),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(100),
                                 color: Colors.grey.withOpacity(0.3),
                               ),
                               child: Icon(Icons.shopping_cart, color: Colors.white, size: 25,),
                             ),
                           )

                         ],
                         ),
                     ],
                   ),
                 ),

                 InkWell(
                   onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchProduct())),
                   child: Padding(
                       padding: EdgeInsets.only(left: width*.13, right: width*.13, top: height*.15),
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                           height: 40,
                           width: 220,
                           padding: EdgeInsets.only(left: 20, top: 10),
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.only(
                                 bottomLeft: Radius.circular(5),
                                 topLeft: Radius.circular(5),
                               ),
                             border: Border.all(width: 2, color: appColors.mainColors)
                           ),
                           child: Text("by Category", style: TextStyle(color: Colors.white, fontFamily: "ThemeFont", fontWeight: FontWeight.w400, fontSize: 12),),
                         ),
                         Container(
                           height: 40,
                           width: 60,
                           //padding: EdgeInsets.only(le top: 10),
                           decoration: BoxDecoration(
                             color: appColors.mainColors,
                               borderRadius: BorderRadius.only(
                                 bottomRight: Radius.circular(5),
                                 topRight: Radius.circular(5),
                               ),
                               border: Border.all(width: 2, color: appColors.mainColors)
                           ),
                           child:Center(child: Icon(Icons.search,color: Colors.white,)),
                         ),

                       ],
                     ),

                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.only(left: width*.13, right: width*.13, top: height*.25),
                   child: Center(
                     child: Text("Find your best services",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: "ThemeFont"
                      ),
                     ),
                   )

                 )


               ],
             ),


             Padding(
               padding: EdgeInsets.only(left: 20, right: 20,),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("New Uploaded",
                        style: TextStyle(
                          fontFamily: "ThemeFont",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: appColors.blackText
                        ),
                       ),
                       TextButton(
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>NewUploaded()));
                           },
                           child: Text("SEE ALL",
                             style: TextStyle(
                                 fontFamily: "ThemeFont",
                                 fontWeight: FontWeight.bold,
                                 fontSize: 10.sp,
                             ),
                           ))
                     ],
                   ),
                   SizedBox(height: 10,),
                   buildProduct(width)
                 ],
               ),
             ),

             SizedBox(height: 20,),
             Padding(
               padding: EdgeInsets.only(left: 20, right: 20,),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Category",
                         style: TextStyle(
                             fontFamily: "ThemeFont",
                             fontWeight: FontWeight.bold,
                             fontSize: 15,
                             color: appColors.blackText
                         ),
                       ),
                       TextButton(
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryList()));
                           },
                           child: Text("More Category",
                             style: TextStyle(
                               fontFamily: "ThemeFont",
                               fontWeight: FontWeight.bold,
                               fontSize: 10.sp,
                             ),
                           ))
                     ],
                   ),
                   Container(
                     height: 100,
                     width: width,
                     child: ListView.separated(
                       scrollDirection: Axis.horizontal,
                       itemCount: CategoryJson().categoryJson.length,
                         itemBuilder: (context, index){
                         return Bounce(
                           duration: const Duration(milliseconds: 80),
                           onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Remainder())),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Container(
                                   width: 60,
                                   height: 60,
                                   padding: const EdgeInsets.all(10),
                                   alignment: Alignment.center,
                                   decoration: BoxDecoration(
                                       border: Border.all(width: 2, color: appColors.mainColors),
                                       borderRadius: BorderRadius.circular(100)
                                   ),
                                   child: Image.asset("${CategoryJson().categoryJson[index]["image"]}", fit: BoxFit.cover,)
                               ),
                               const SizedBox(height: 5,),
                               Center(
                                 child: Text("${CategoryJson().categoryJson[index]["title"]}",
                                   style: const TextStyle(
                                     fontFamily: "ThemeFont",
                                     fontWeight: FontWeight.w200,
                                     fontSize: 12,
                                   ),
                                 ),
                               )
                             ],
                           ),
                         );
                         }, separatorBuilder: (BuildContext context, int index) {
                         return const SizedBox(width: 20,);
                     },
                     ),
                   ),
                 ],
               ),
             ),


             SizedBox(height: 20,),
             Padding(
               padding: EdgeInsets.only(left: 20, right: 20,),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("House",
                         style: TextStyle(
                             fontFamily: "ThemeFont",
                             fontWeight: FontWeight.bold,
                             fontSize: 15,
                             color: appColors.blackText
                         ),
                       ),
                       TextButton(
                           onPressed: (){},
                           child: Text("SEE ALL",
                             style: TextStyle(
                               fontFamily: "ThemeFont",
                               fontWeight: FontWeight.bold,
                               fontSize: 15,
                             ),
                           ))
                     ],
                   ),
                   SizedBox(height: 10,),
                   buildProduct(width)
                 ],
               ),
             ),

             SizedBox(height: 20,),
             Padding(
               padding: EdgeInsets.only(left: 20, right: 20,),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("House",
                         style: TextStyle(
                             fontFamily: "ThemeFont",
                             fontWeight: FontWeight.bold,
                             fontSize: 15,
                             color: appColors.blackText
                         ),
                       ),
                       TextButton(
                           onPressed: (){},
                           child: Text("SEE ALL",
                             style: TextStyle(
                               fontFamily: "ThemeFont",
                               fontWeight: FontWeight.bold,
                               fontSize: 15,
                             ),
                           ))
                     ],
                   ),
                   SizedBox(height: 10,),
                   buildProduct(width)
                 ],
               ),
             ),


             SizedBox(height: 20,),
             Container(
               width: width,
               height: 200,
               margin: EdgeInsets.only(left: 20, right: 20),
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/images/p2.jpg"),fit: BoxFit.cover
                 ),
                 borderRadius: BorderRadius.circular(10),

               ),
               child:Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Recommended Product",
                         style: TextStyle(
                           fontFamily: "ThemeFont",
                           fontWeight: FontWeight.bold,
                           fontSize: 30,
                           color: Colors.white
                         )
                     ),
                     SizedBox(height: 5,),
                     Text("We recommend the best for you",
                         style: TextStyle(
                             fontFamily: "ThemeFont",
                             fontWeight: FontWeight.w400,
                             fontSize: 12,
                             color: Colors.white
                         )
                     ),
                   ],
                 ),
               )
             ),

             SizedBox(height: 20,),
             Padding(
               padding: EdgeInsets.only(left: 20, right: 20,),
               child:  buildProduct(width)
               ),
           ],


          ),
        ),
      ),
    );
  }

  Container buildProduct(double width) {
    return Container(
                 width: width,
                 height: 320,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   //shrinkWrap: true,
                   itemCount: ProductJson().ProductsList.length,
                     itemBuilder: (context, index){
                     return buildSingleProduct(index);
                     }
                 ),
               );
  }

  Container buildSingleProduct(int index) {
    return Container(
                       width: 150,
                        height: 310,
                        margin: EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(10),
                             child: Image.asset("${ProductJson().ProductsList[index]["image"]}",
                              width: 170,
                              height: 210,
                              fit: BoxFit.cover,
                             ),
                           ),
                            SizedBox(height: 8,),
                            Text("${ProductJson().ProductsList[index]["cat"]}",
                                style: TextStyle(
                                    color: appColors.blackText,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "ThemeFont"),
                            ),
                            SizedBox(height: 3,),
                            Text("${ProductJson().ProductsList[index]["name"]}",
                              style: TextStyle(
                                  color: appColors.blackText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "ThemeFont"),
                            ),
                            SizedBox(height: 3,),
                            Text("${ProductJson().ProductsList[index]["price"]}",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "ThemeFont"),
                            )
                            ,

                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.star, color: Colors.grey, size: 15,),
                                SizedBox(width: 5,),
                                Text("${ProductJson().ProductsList[index]["sp1"]}",
                                  style: TextStyle(
                                      color: appColors.blackText,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "ThemeFont"),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.grey,size: 15,),
                                SizedBox(width: 5,),
                                Text("${ProductJson().ProductsList[index]["sp1"]}",
                                  style: TextStyle(
                                      color: appColors.blackText,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "ThemeFont"),
                                )
                              ],
                            )

                          ],

                        ),
                     );
  }
}
