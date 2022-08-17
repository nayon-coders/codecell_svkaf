import 'package:b2b/Utility/color.dart';
import 'package:b2b/category-jeson.dart';
import 'package:b2b/view/foods/single-foods.dart';
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

class FoodHome extends StatefulWidget {
  const FoodHome({Key? key}) : super(key: key);

  @override
  State<FoodHome> createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List sliderList = [
    Image.asset("assets/images/p4.png",),
    Image.asset( "assets/images/p1.jpeg",),
    Image.asset("assets/images/p2.jpg",),
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
              buildFoodSliderHome(width: width, height: height),

              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20,),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delicious Dishesh",
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
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: "ThemeFont",
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: appColors.blackText
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10,),
                    buildFoodHomeCategory(width: width),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20,),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delicious Dishesh",
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
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: "ThemeFont",
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: appColors.blackText
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 3,),
                    Container(
                      width: width/1.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 2,
                            color: Colors.grey.shade200,
                            offset: Offset(0,2)
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/f3.png", height: 70, width: 70,),
                          ),
                           SizedBox(width: 20,),
                           SizedBox(
                             width: width*.3
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Fresh Veggie",
                                  style:TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                 ),
                                 Text("In Pizza Mania",
                                   style:TextStyle(
                                     fontSize: 10.sp,
                                     fontWeight: FontWeight.w400,
                                   ),
                                 ),
                                  SizedBox(height: 5,),
                                 Text("\$2.4",
                                   style:TextStyle(
                                     fontSize: 13.sp,
                                     fontWeight: FontWeight.w600,
                                   ),
                                 ),
                               ],
                             ),
                           ),

                          Container(
                            child: Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.grey,)),
                                Bounce(
                                  onPressed: (){},
                                  duration: Duration(milliseconds: 80),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white, 
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(width: 1, color: Colors.grey.shade200)
                                    ),
                                    child: Row(
                                      children: [
                                        Text("Add",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize:  9.sp
                                          ),
                                        ),
                                        Icon(
                                          Icons.add,
                                          size: 15.sp,
                                          color: appColors.mainColors,
                                        )
                                      ],
                                    ),
                                  ),

                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //HomeSliderFood






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

class buildSingleProductHome extends StatelessWidget {
  const buildSingleProductHome({
    Key? key,
    required this.width,
    required this.image, required this.title,
  }) : super(key: key);

  final double width;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0,2),
          )
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("assets/images/${image}", height: 70, width: 70, fit: BoxFit.cover,),
          ),
          SizedBox(width: 10,),
          SizedBox(
            width: width/2.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${title}",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: "ThemeFonts",

                  ),
                ),
                Text("Pizza",
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: "ThemeFonts",

                  ),
                ),
                SizedBox(height: 10,),
                Text("\$50",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: "ThemeFonts",

                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 5,),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Text("Add",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.add, color: Colors.amber,),
              ],
            ),
          )

        ],
      ),
    );
  }
}

class buildFoodHomeCategory extends StatelessWidget {
  const buildFoodHomeCategory({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: CategoryJson().FoodList.length,
        itemBuilder: (context, index){
          return Bounce(
            duration: Duration(milliseconds: 80),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleFoods(thumbnil: CategoryJson().FoodList[index]['images'],))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 60,
                    height: 60,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        //border: Border.all(width: 2, color: appColors.mainColors),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Image.asset("${CategoryJson().FoodsCategory[index]["image"]}",)
                ),
                SizedBox(height: 5,),
                Center(
                  child: Text("${CategoryJson().FoodsCategory[index]["title"]}",
                    style: TextStyle(
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
        return SizedBox(width: 20,);
      },
      ),
    );
  }
}

class buildFoodSliderHome extends StatelessWidget {
  const buildFoodSliderHome({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        CarouselSlider(
            items: [
              Stack(
                children: [
                  Image.asset("assets/images/foodSlider.png", width: width, height: 250, fit: BoxFit.cover,),
                  Positioned(
                    bottom: 50,
                      left: 30,

                      child:
                     SizedBox(width: 200,
                    child: Text("20% off on your first purchase",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp,

                      ),
                    ),
                  )

                  )
                ],
              ),
              Stack(
                children: [
                  Image.asset("assets/images/foodSlider.png", width: width, height: 250, fit: BoxFit.cover,),
                  Positioned(
                      bottom: 50,
                      left: 30,

                      child:
                      SizedBox(width: 200,
                        child: Text("20% off on your first purchase",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp,

                          ),
                        ),
                      )

                  )
                ],
              ),
              Stack(
                children: [
                  Image.asset("assets/images/foodSlider.png", width: width, height: 250, fit: BoxFit.cover,),
                  Positioned(
                      bottom: 50,
                      left: 30,

                      child:
                      SizedBox(width: 200,
                        child: Text("20% off on your first purchase",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp,

                          ),
                        ),
                      )

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
                child: Text("Food Store",
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



      ],
    );
  }
}
