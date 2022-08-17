import 'package:b2b/view/login.dart';
import 'package:b2b/widgets/app-button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sizer/sizer.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {

  int _current = 0;
  final CarouselController _controller = CarouselController();

  List sliderList = [
    "assets/images/flash-item.png",
    "assets/images/flash-item.png",
    "assets/images/flash-item.png",
    "assets/images/flash-item.png",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            height: height/1.5,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/flash-bg.png",),
                fit: BoxFit.cover,
              )
            ),
            child: CarouselSlider.builder(
              itemCount: sliderList.length,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          width: width,
                          height: 400,
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
                height: 350,
                aspectRatio: 16/9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
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

          SizedBox(height: 20,),
          Text("Welcome to Xyz !",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: "ThemeFont",
            ),
          ),
          SizedBox(height: 10,),

          Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
            child:  Center(
              child: Text("With long experience in the industry, we create the best option for you.",
               textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  fontFamily: "ThemeFont",
                ),
              ),
            ),
          ),

          SizedBox(height: 30,),
          Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
            child: Bounce(
              duration: Duration(milliseconds: 800),
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())),
                child: AppButton(text: "Get Start")),
          ),

        ],

      ),
    );
  }
}
