import 'package:b2b/Utility/color.dart';
import 'package:b2b/category-jeson.dart';
import 'package:b2b/view/foods/foods-home.dart';
import 'package:b2b/view/notification.dart';
import 'package:b2b/view/reminder.dart';
import 'package:b2b/view/shop/product-json.dart';
import 'package:b2b/view/shop/shop-main.dart';
import 'package:b2b/widgets/bottom-navigation-bar.dart';
import 'package:b2b/widgets/drower.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List sliderList = [
    "assets/images/p1.jpeg",
    "assets/images/p2.jpg",
    "assets/images/p3.jpeg",
  ];


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => InkWell(
           child: Image.asset("assets/images/menu.png"),
            onTap: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("XYZ",
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
                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen())),
                  duration: Duration(milliseconds: 80),
                  child: Icon(
                    Icons.notifications_none,
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
            
            Container(
              child: CarouselSlider.builder(
                itemCount: sliderList.length,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            width: width,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(sliderList[itemIndex],),
                                fit: BoxFit.cover,
                              )
                            ),
                             child:Center(child: Text("Find Your Best Poduct",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "ThemeFont",
                                fontWeight: FontWeight.w400,
                                fontSize: 20
                              ),
                             ))
                          )
                        ],
                      ),
                    ),
                  options: CarouselOptions(
                    aspectRatio: 16/9,
                    viewportFraction: 0.7,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                  ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: sliderList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : appColors.mainColors)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),

            SizedBox(height: 20),

            Text("Services",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: "ThemeFont",
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width:width,
              height:100,
              margin: EdgeInsets.only(left: width*.10, right:width*.10, ),
              alignment: Alignment.center,
              child: ListView(
                padding: EdgeInsets.only(left: 20, right: 20),
                scrollDirection: Axis.horizontal,
                  children: [
                    Bounce(
                      duration: Duration(milliseconds: 80),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Remainder())),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2, color: appColors.mainColors),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Image.asset("assets/images/remember.png",)
                          ),
                          SizedBox(height: 5,),
                          Center(
                            child: Text("Remember",
                              style: TextStyle(
                                fontFamily: "ThemeFont",
                                fontWeight: FontWeight.w200,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Bounce(
                      duration: Duration(milliseconds: 80),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>AppBottomNavigationBar(index: 1,))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2, color: appColors.mainColors),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Image.asset("assets/images/marketplace.png",)
                          ),
                          SizedBox(height: 5,),
                          Center(
                            child: Text("Market Place",
                              style: TextStyle(
                                fontFamily: "ThemeFont",
                                fontWeight: FontWeight.w200,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Bounce(
                      duration: Duration(milliseconds: 80),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>AppBottomNavigationBar(index: 2))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2, color: appColors.mainColors),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Image.asset("assets/images/foods.png",)
                          ),
                          SizedBox(height: 5,),
                          Center(
                            child: Text("Foods",
                              style: TextStyle(
                                fontFamily: "ThemeFont",
                                fontWeight: FontWeight.w200,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),

                  ],
            ),
            ),

            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nanny Service",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ThemeFont",
                    ),
                  ),

                  Text("Near from you",
                    style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "ThemeFont",
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width:width,
              height:120,
              padding: EdgeInsets.only(left: 10,),
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Bounce(
                        duration: Duration(milliseconds: 80),
                        onPressed: () {},//Navigator.push(context, MaterialPageRoute(builder: (context)=>Remainder())),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 70,
                                height: 70,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 2, color: appColors.mainColors),
                                    borderRadius: BorderRadius.circular(100)
                                ),
                                child: Image.asset("assets/images/s1.png",)
                            ),
                            SizedBox(height: 5,),
                            Column(
                              children: [
                                Text("House",
                                  style: TextStyle(
                                    fontFamily: "ThemeFont",
                                    fontWeight: FontWeight.w200,
                                    fontSize: 8.sp,
                                  ),
                                ),
                                Text("Orchad House",
                                  style: TextStyle(
                                    fontFamily: "ThemeFont",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                  ),
                                ),
                                Text("30.76\$",
                                  style: TextStyle(
                                    fontFamily: "ThemeFont",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                    ],
                  );
                },

                scrollDirection: Axis.horizontal, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10);
              },

              ),
            ),

            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trash Cleaning",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ThemeFont",
                    ),
                  ),

                  Text("Near from you",
                    style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "ThemeFont",
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width:width,
              height:120,
              padding: EdgeInsets.only(left: 10, ),
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Bounce(
                        duration: Duration(milliseconds: 80),
                        onPressed: () {},//Navigator.push(context, MaterialPageRoute(builder: (context)=>Remainder())),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 70,
                                height: 70,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 2, color: appColors.mainColors),
                                    borderRadius: BorderRadius.circular(100)
                                ),
                                child: Image.asset("assets/images/s1.png",)
                            ),
                            SizedBox(height: 5,),
                            Column(
                              children: [
                                Text("House",
                                  style: TextStyle(
                                    fontFamily: "ThemeFont",
                                    fontWeight: FontWeight.w200,
                                    fontSize: 8.sp,
                                  ),
                                ),
                                Text("Orchad House",
                                  style: TextStyle(
                                    fontFamily: "ThemeFont",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                  ),
                                ),
                                Text("30.76\$",
                                  style: TextStyle(
                                    fontFamily: "ThemeFont",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                    ],
                  );
                },

                scrollDirection: Axis.horizontal, separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 10);
              },

              ),
            ),

            SizedBox(height: 30,),
            Text("Marketplace",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                fontFamily: "ThemeFont",
              ),
            ),
            SizedBox(height: 10,),

            Container(
              width: width,
              height: 300,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width/2.3,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:  Stack(
                      children: [

                        CarouselSlider.builder(
                          itemCount: sliderList.length,
                          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                              Container(
                                child: Stack(
                                  children: [
                                    Container(
                                        width: width,
                                        height: 300,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: AssetImage(sliderList[itemIndex],),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                    )
                                  ],
                                ),
                              ),
                          options: CarouselOptions(
                            height: 300,
                            aspectRatio: 16/9,
                            viewportFraction: 1,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 1),
                            autoPlayAnimationDuration: Duration(milliseconds: 100),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            },
                          ),
                        ),
                        Container(
                          width: width/2.2,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.5),
                          ),

                        ),

                        Positioned(
                          top: 10,
                          left: 10,
                          child: SizedBox(
                            width: 100,
                            child: Text("A Gift They Actually Want",
                              style: TextStyle(
                                fontFamily: "ThemeFont",
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                color: Colors.white

                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60,
                          right: 10,
                          child: SizedBox(
                            child: RotatedBox(
                                quarterTurns: -1,
                                child:Text("Shop Gifts",
                                  style: TextStyle(
                                      fontFamily: "ThemeFont",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                      color: Colors.white
                                  ),
                                ),
                            ),

                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: sliderList.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () => _controller.animateToPage(entry.key),
                                child: Container(
                                  width: 12.0,
                                  height: 12.0,
                                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness == Brightness.dark
                                          ? Colors.white
                                          : appColors.mainColors)
                                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                                ),
                              );
                            }).toList(),
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(width: 5,),

                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: width/2.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/s2.png")
                                )
                            ),
                          ),
                          SizedBox(height: 3,),
                          Text("New uploded",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "ThemeFont",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: width/2.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/s2.png")
                                )
                            ),
                          ),
                          SizedBox(height: 3,),
                          Text("All Category",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "ThemeFont",
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Old Market",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ThemeFont",
                    ),
                  ),

                  Text("Near from you",
                    style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "ThemeFont",
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width:width,
              height:120,
              padding: EdgeInsets.only(left: 10,),
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Bounce(
                        duration: Duration(milliseconds: 80),
                        onPressed: () {},//Navigator.push(context, MaterialPageRoute(builder: (context)=>Remainder())),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 70,
                                height: 70,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 2, color: appColors.mainColors),
                                    borderRadius: BorderRadius.circular(100)
                                ),
                                child: Image.asset("assets/images/s1.png",)
                            ),
                            SizedBox(height: 5,),
                            Column(
                              children: [
                                Text("House",
                                  style: TextStyle(
                                    fontFamily: "ThemeFont",
                                    fontWeight: FontWeight.w200,
                                    fontSize: 8.sp,
                                  ),
                                ),
                                Text("Orchad House",
                                  style: TextStyle(
                                    fontFamily: "ThemeFont",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                  ),
                                ),
                                Text("30.76\$",
                                  style: TextStyle(
                                    fontFamily: "ThemeFont",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                    ],
                  );
                },

                scrollDirection: Axis.horizontal, separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 10);
              },

              ),
            ),

            SizedBox(height: 30,),
            Text("All Services",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                fontFamily: "ThemeFont",
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: buildProduct(width),
            ),

         ],
        ),
      )
    );
  }


  Container buildProduct(double width) {
    return Container(
        width: width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildSingleProduct(0),
                buildSingleProduct(1),
              ],
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildSingleProduct(0),
                buildSingleProduct(1),
              ],
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildSingleProduct(0),
                buildSingleProduct(1),
              ],
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildSingleProduct(0),
                buildSingleProduct(1),
              ],
            ),
            SizedBox(height: 20,),

          ],
        )
    );
  }

  Container buildSingleProduct(int index) {
    return Container(
      width: MediaQuery.of(context).size.width/2.3,
      height: 310,
      child: Container(
        width: 150,
        height: 310,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("${ProductJson().ProductsList[index]["image"]}",
                    width: 170,
                    height: 210,
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  bottom: 10,
                    left:10,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: Text("Marketplace",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11.sp,
                        color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
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
      ),
    );
  }
  
  Widget DrawerItems(String? text, IconData? icon){
    return ListTile(
      leading: Icon(icon, color: Colors.white, size: 25,),
      title: Text("$text",
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontFamily: "ThemeFont"
        ),
      ),
    );
  }
}
