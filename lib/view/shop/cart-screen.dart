import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/shop/address-screen.dart';
import 'package:b2b/view/shop/checkout-screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sizer/sizer.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height =MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: appColors.blackText,),
        ),
        title: Text("Your Cart", style: TextStyle(color: appColors.blackText),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: width,
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 2, color: Colors.grey.shade200, )
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset("assets/images/p4.png",
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 20,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width*.5,
                                child: Text("Product name there",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp,
                                      color: appColors.blackText
                                  ),
                                ),
                              ),

                              InkWell(
                                  onTap: (){},
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: Colors.grey.shade400,
                                    size: 30,
                                  )
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width*.38,
                                child: Text("\$230.90",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                      color: Colors.red
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Bounce(
                                      onPressed: (){},
                                      duration: Duration(milliseconds: 80),
                                      child: Container(
                                        color: Colors.grey.shade200,
                                        child: Icon(
                                          Icons.add,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
                                        color: Colors.white,
                                        child: Text("1")
                                    ),
                                    Bounce(
                                      onPressed: (){},
                                      duration: Duration(milliseconds: 80),
                                      child: Container(
                                        color: Colors.grey.shade200,
                                        child: Icon(
                                          Icons.remove,
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              )

                            ],
                          ),
                        ],
                      )

                    ],
                  ),
                ),
                Container(
                  width: width,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 2, color: Colors.grey.shade200, )
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset("assets/images/p1.jpeg",
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 20,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width*.5,
                                child: Text("Product name there",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp,
                                      color: appColors.blackText
                                  ),
                                ),
                              ),

                              InkWell(
                                  onTap: (){},
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: Colors.grey.shade400,
                                    size: 30,
                                  )
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width*.38,
                                child: Text("\$230.90",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                      color: Colors.red
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Bounce(
                                      onPressed: (){},
                                      duration: Duration(milliseconds: 80),
                                      child: Container(
                                        color: Colors.grey.shade200,
                                        child: Icon(
                                          Icons.add,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
                                        color: Colors.white,
                                        child: Text("1")
                                    ),
                                    Bounce(
                                      onPressed: (){},
                                      duration: Duration(milliseconds: 80),
                                      child: Container(
                                        color: Colors.grey.shade200,
                                        child: Icon(
                                          Icons.remove,
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              )

                            ],
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 50,),

            DottedBorder(
              color: Colors.grey,
              strokeWidth: 1,
                dashPattern: [6,2],
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shipping Address:",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF9B9B9B)
                          ),
                        ),

                        SizedBox(height: 20,),
                        Text("xxxxxxxxxxxxxxxxxxxx",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          ),
                        )
                      ],
                    ),
                    Bounce(
                      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopingAddress())),
                      duration: Duration(milliseconds: 80),
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: appColors.mainColors,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: appColors.blackText,
                            ),
                            Text("Change",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: appColors.blackText,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 40,),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Items (1)",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: appColors.blackText,
                      ),
                    ),

                    Text("\$500.56",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: appColors.blackText,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shopping",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: appColors.blackText,
                      ),
                    ),

                    Text("\$40.00",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: appColors.blackText,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Divider(height: 1,color: Colors.grey.shade400,),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Price",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp,
                        color: Colors.black,
                      ),
                    ),

                    Text("\540.00",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: Colors.redAccent,
                      ),
                    )
                  ],
                ),
              ],
            ),


            SizedBox(height: 40,),
            Bounce(
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> CheckOut())),
              duration: Duration(milliseconds: 80),
              child: Container(
                width: 100,
                height: 50,
                margin: EdgeInsets.only(left: width*.10, right: width*.10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: appColors.mainColors,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text("CHECKOUT",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )



          ],

        ),
      ),


    );
  }
}
