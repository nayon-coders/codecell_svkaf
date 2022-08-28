import 'package:b2b/Utility/color.dart';
import 'package:b2b/category-jeson.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/bottom-navigation-bar.dart';
import '../reminder.dart';
import '../shop/cart-screen.dart';

class CategoryFoods extends StatefulWidget {
  const CategoryFoods({Key? key}) : super(key: key);

  @override
  State<CategoryFoods> createState() => _CategoryFoodsState();
}

class _CategoryFoodsState extends State<CategoryFoods> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List sliderList = [
    Image.asset("assets/images/p4.png",),
    Image.asset( "assets/images/p1.jpeg",),
    Image.asset("assets/images/p2.jpg",),
  ];

  void addtocart(){
    setState(() {
      isAddtoCart = true;
    });
  }

  late bool isAddtoCart = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, top: 10, left: 20),
            child: Column(
              children: [


                Row(
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
                SizedBox(height: 30,),


                //###############################
                //############-------------------
                //--------- Lit of product
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: CategoryJson().FoodList.length,
                    itemBuilder: (_, index){
                      return buildListOFlood(width: width,
                          img:  CategoryJson().FoodList[index]['image'],
                          title: CategoryJson().FoodList[index]['title'],
                          category: "category",
                          price: 12.87,
                          isAdded : index == 2 ? true:false,
                      );
                    }
                )




              ],


            ),
          ),
        ),
        bottomNavigationBar:isAddtoCart? Container(
          height: 50,
          padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: appColors.mainColors,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: "2 ",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Items",
                    style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )),

              Text("View Cart",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp
                ),
              ),

              Text("\$20.49",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp
                ),
              )
            ],
          ),
        ) :Container(height: 1,),
      ),
    );
  }

  Container buildListOFlood({
    required double width,
    required String img,
    required String title,
    required String category,
    required double price,
    bool isAdded = false,
    bool isFav = false,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, ),
      width: width,
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
            child: Image.asset("${img}", height: 70, width: 70,),
          ),
          SizedBox(width: 20,),
          SizedBox(
            width: width/3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${title}e",
                  style:TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("${category}",
                  style:TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5,),
                Text("\$${price}",
                  style:TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          isAdded ?Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: appColors.mainColors,
                  borderRadius: BorderRadius.circular(100),
                  //border: Border.all(width: 1, color: Colors.grey.shade200)
                ),
                child: Row(
                  children: [
                    Text("Added",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize:  10.sp
                      ),
                    ),
                    Icon(
                      Icons.check,
                      size: 15.sp,
                      color: appColors.blackText,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: appColors.white,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 1, color: Colors.grey.shade200)
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.remove,
                      size: 15.sp,
                      color: appColors.blackText,
                    ),
                    SizedBox(width: 5,),
                    Text("2",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize:  10.sp
                      ),
                    ),
                    SizedBox(width: 5,),
                    Icon(
                      Icons.add,
                      size: 15.sp,
                      color: appColors.blackText,
                    )
                  ],
                ),
              ),
            ],
          )
              : Container(
            child: Column(
              children: [
                isFav ? Center() : IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.grey,)),
                Bounce(
                  onPressed: ()=>addtocart(),
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
                              fontSize:  12.sp
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
          ),
        ],
      ),
    );
  }
}

