import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/shop/product-json.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

import 'cart-screen.dart';

class NewUploaded extends StatefulWidget {
  const NewUploaded({Key? key}) : super(key: key);

  @override
  State<NewUploaded> createState() => _NewUploadedState();
}

class _NewUploadedState extends State<NewUploaded> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => InkWell(
            child: Icon(Icons.arrow_back, color: appColors.blackText,),
            onTap: () => Navigator.pop(context),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("New Upload",
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
                    Icons.shopping_cart_outlined,
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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Text("New Uploaded",
                    //   style: TextStyle(
                    //       fontFamily: "ThemeFont",
                    //       fontWeight: FontWeight.bold,
                    //   FappF    fontSize: 15,
                    //       color: appColors.blackText
                    //   ),
                    // ),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NewUploaded()));
                        },
                        child: Text("Category",
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
        ],
      ),
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
      width: MediaQuery.of(context).size.width/2.4,
      height: 310,
      child: Container(
        width: 150,
        height: 310,
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
      ),
    );
  }
}
