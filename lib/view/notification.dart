import 'package:b2b/Utility/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body:Container(
            alignment: Alignment.topCenter,
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage("assets/images/notification-bg.png"),
            //       fit: BoxFit.contain
            //     )
            // ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset("assets/images/notification-bg.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Bounce(
                            duration: Duration(milliseconds: 80),
                              onPressed: ()=>Navigator.pop(context),
                              child: Icon(Icons.arrow_back, color: appColors.blackText,)),
                          Text("Notification",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: "ThemeFont",
                              color: appColors.blackText,
                            ),
                          ),
                          Bounce(
                            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen())),
                            duration: Duration(milliseconds: 80),
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: appColors.mainColors, 
                                borderRadius: BorderRadius.circular(100)
                              ),
                              child: Icon(
                                Icons.settings,
                                size: 30,
                                color: appColors.blackText,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 80),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      //transform: Matrix4.translationValues(0.0, -280.0, 0.0),
                      child: Column(
                        children: [
                          TabBar(
                            tabs: [
                              Tab(icon: Text("General",
                                style: TextStyle(
                                  fontFamily: "ThemeFont",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),),
                              Tab(icon: Row(
                                children: [
                                  Text("Recomanded",
                                    style: TextStyle(
                                      fontFamily: "ThemeFont",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: Colors.redAccent,
                                    ),
                                    child: Center(child: Text("12", style: TextStyle(fontSize: 10, color: Colors.white),)),
                                  )
                                ],
                              ),),



                            ],
                          ),

                          Container(
                            width: width,
                            height: height/1.3,
                            child: TabBarView(
                                children: [
                                  GenarelNotification(),
                                  GenarelNotification(),
                                ]
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}


class GenarelNotification extends StatelessWidget {
  const GenarelNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          return ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/p2.jpg"),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 4, color: appColors.blackText)
              ),
            ),

            title: Text("XYZ",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: "ThemeFont"
              ),
            ),
            subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elitdolor sit amet.",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  fontFamily: "ThemeFont"
              ),
            ),

            trailing: Text("1m ago.",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  fontFamily: "ThemeFont"
              ),
            ),


          );
        },

      ),
    );
  }
}

