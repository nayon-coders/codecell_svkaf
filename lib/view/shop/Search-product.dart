import 'package:b2b/Utility/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

import '../notification.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
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
        title: Container(
          margin: EdgeInsets.only(top: 30, bottom: 30),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search Products",
              contentPadding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: Colors.grey, width: 1)
              )
            ),
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
                    Icons.shopping_cart,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/search.png"),
        ],
      ),

    );
  }
}
