import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/shop/address-screen.dart';
import 'package:b2b/widgets/app-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sizer/sizer.dart';

class AddShopingAddress extends StatefulWidget {
  const AddShopingAddress({Key? key}) : super(key: key);

  @override
  State<AddShopingAddress> createState() => _AddShopingAddressState();
}

class _AddShopingAddressState extends State<AddShopingAddress> {

  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: appColors.blackText,),
        ),
        title: Text("Add Address",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            fontFamily: "ThemeFont",
            color: appColors.blackText,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // actions: [
        //   IconButton(onPressed: (){}, icon: Icon(Icons.add, color: appColors.blackText,))
        // ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Form(
          key: formKey,
          child: ListView(
            children: [

              buildInput(title: 'Country or region', hintText: 'United States'),
              buildInput(title: 'First Name', hintText: '--'),
              buildInput(title: 'Last Name', hintText: '--'),
              buildInput(title: 'Street Address', hintText: ''),
              buildInput(title: 'Street Address 2 (Optional)', hintText: ''),
              buildInput(title: 'City', hintText: ''),
              buildInput(title: 'State/Province/Region', hintText: ''),
              buildInput(title: 'Zip Code', hintText: ''),
              buildInput(title: 'Phone Number', hintText: '--'),

              SizedBox(height: 30,),
              Bounce(
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopingAddress())),
                duration: Duration(milliseconds: 80),
                child: AppButton(text: "Add Address",),


              ),


              SizedBox(height: 50,),



            ],
          ),
        ),
      ),
    );
  }

  Column buildInput({required String title, required String hintText}) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    fontFamily:"ThemeFon",
                    color: appColors.blackText
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "$hintText",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      fontFamily:"ThemeFon",
                      color: appColors.blackText
                  ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )

                  ),
                ),
                SizedBox(height: 20,),
              ],
            );
  }
}
