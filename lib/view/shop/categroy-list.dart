import 'package:b2b/Utility/color.dart';
import 'package:b2b/category-jeson.dart';
import 'package:b2b/view/shop/cart-screen.dart';
import 'package:b2b/view/shop/single-category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
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
          title: const Text(" Category ",
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
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart())); },
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
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: ListView.builder(
          itemCount: CategoryJson().categoryJson.length,
            itemBuilder: (context, index){
              return Column(
                children: [
                  Bounce(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleCategoryProduct(CatName: CategoryJson().categoryJson[index]["title"])));
                    },
                    duration: Duration(milliseconds: 80),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(bottom: 5, top: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: appColors.mainColors),
                          ),
                          child: Image.asset("${CategoryJson().categoryJson[index]["image"]}", height: 40, width: 40,),

                        ),
                        SizedBox(width: 20,),
                        Text("${CategoryJson().categoryJson[index]["title"]}",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: "ThemeFont"
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 1,color: Colors.grey.shade200,),
                  SizedBox(height: 10,),
                ],
              ); 
            }
        ),
      ),
    );
  }
}
