import 'package:b2b/Utility/color.dart';
import 'package:b2b/category-jeson.dart';
import 'package:b2b/view/foods/Category.dart';
import 'package:b2b/view/foods/category-foods.dart';
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

import '../../widgets/drower.dart';
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
        appBar: AppBar(
          leading: Builder(
            builder: (context) => InkWell(
              child: Image.asset("assets/images/menu.png"),
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Marketplace",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "ThemeFont",
              color: appColors.blackText,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Bounce(
                    onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart())),
                    duration: Duration(milliseconds: 80),
                    child: Icon(
                      Icons.shopping_cart_rounded,
                      size: 30,
                      color: appColors.blackText,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 3,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
        drawer: AppDrawer().buildDrawer(height),
        body: SingleChildScrollView(
          child: Column(
            children: [

              buildFoodSliderHome(width: width, height: height),

              SizedBox(height: 20,),

              //################################
              //#####################----------------
              //----- Category screen
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
                          onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CategroyList())),
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

              //################################
              //#####################----------------
              //----- Vegetables screen
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20,),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Vegetables",
                          style: TextStyle(
                              fontFamily: "ThemeFont",
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: appColors.blackText
                          ),
                        ),

                        TextButton(
                          onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryFoods())),
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
                      width: width,
                      height: 300,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (_, index){
                            return Column(
                              children: [
                                Bounce(
                                  duration: Duration(milliseconds: 80),
                                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleFoods(thumbnil: "assets/images/f2.png"))),
                                  child: buildListOFlood(
                                    width: width,
                                    img: 'assets/images/f2.png',
                                     title: "Veg Loaded",
                                    category: "Vegetables",
                                    price: 11.40,


                                  ),
                                ),
                                  Bounce(
                                  duration: Duration(milliseconds: 80),
                                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleFoods(thumbnil: "assets/images/f2.png"))),
                                    child:  buildListOFlood(
                                          width: width,
                                          img: 'assets/images/f2.png',
                                          title: "Veg Loaded",
                                          category: "Vegetables",
                                          price: 11.40,
                                          isAdded: true

                                ),
                                  )
                              ],
                            );
                          }
                      ),
                    )
                  ],
                ),
              ),
              //HomeSliderFood


              //################################
              //#####################----------------
              //----- Vegetables screen
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20,),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("My Favorite",
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
                      width: width,
                      height: 120,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: CategoryJson().FoodList.length,
                          itemBuilder: (_, index){
                            return  Bounce(
                              duration: Duration(milliseconds: 80),
                              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleFoods(thumbnil: CategoryJson().FoodList[index]["image"].toString()))),
                              child: buildListOFlood(
                                width: width,
                                img: '${CategoryJson().FoodList[index]["image"]}',
                                title: "Veg Loaded",
                                category: "Vegetables",
                                price: 11.40,
                                isFav: true,
                              ),
                            );
                          }
                      ),
                    )
                  ],
                ),
              ),
              //HomeSliderFood


              SizedBox(height: 20),

              //################################
              //#####################----------------
              //----- Vegetables screen
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20,),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Featured products",
                          style: TextStyle(
                              fontFamily: "ThemeFont",
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: appColors.blackText
                          ),
                        ),

                        IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 15.sp,
                            )
                        ),
                      ],
                    ),

                    SizedBox(height: 3,),
                    Container(
                      width: width,
                      height: 240,
                      margin: EdgeInsets.only(bottom: 30,),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: CategoryJson().FoodList.length,
                          itemBuilder: (_, index){
                            return  Bounce(
                              duration: Duration(milliseconds: 80),
                              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleFoods(thumbnil: "assets/images/f.png"))),
                              child: Container(
                                width: width/2.3,
                                margin: EdgeInsets.only(right: 20, bottom: 10, left: 3),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 3,
                                        spreadRadius: 2,
                                        color: Colors.grey.shade200,
                                        offset: Offset(0,2)
                                    )
                                  ],
                                ),
                                //padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 20,),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("${CategoryJson().FoodList[index]["image"]}", height: 70, width: 70,),
                                        ),
                                        SizedBox(height: 20,),
                                        SizedBox(
                                          width: width*.33,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text("\$23.00",
                                                style:TextStyle(
                                                    fontSize: 13.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: appColors.mainColors
                                                ),
                                              ),
                                              Text("${CategoryJson().FoodList[index]["title"]}",
                                                style:TextStyle(
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text("category",
                                                style:TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              SizedBox(height: 5,),

                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Divider(height: 1, color: Colors.grey,),
                                        SizedBox(height: 10,),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.shopping_cart_rounded, color: appColors.mainColors,),
                                            SizedBox(width: 4,),
                                            Text("Add to cart",)
                                          ],

                                        )



                                      ],
                                    ),
                                    index == 1 ? Container(
                                      width: 50,
                                      height: 25,
                                      padding: EdgeInsets.all(5),
                                      color: appColors.mainColors.withOpacity(0.5),
                                      child: Center(
                                        child: Text("New"),
                                      ),
                                    ): Center(),

                                    Positioned(
                                      right:0,
                                      top: 0,
                                      child: IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.favorite_border_outlined, color: Colors.grey,),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    )
                  ],
                ),
              ),
              //HomeSliderFood





            ],


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
      margin: EdgeInsets.only(bottom: 20, right: 20),
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
                          child: Image.asset("${img}", height: 70, width: 70,),
                        ),
                         SizedBox(width: 20,),
                         SizedBox(
                           width: width*.33,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("${title}e",
                                style:TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                               ),
                               Text("${category}",
                                 style:TextStyle(
                                   fontSize: 10.sp,
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
            onPressed: () {}, //Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleFoods(thumbnil: CategoryJson().FoodList[index]['images'],))),
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
      ],
    );
  }
}
