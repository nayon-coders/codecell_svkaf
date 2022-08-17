import 'package:b2b/Utility/color.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  bool _isBank = true;
  bool _isCard = false;
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
        title: Text("Payments",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            fontFamily: "ThemeFont",
            color: appColors.blackText,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,

      ),
      
      body: Column(
        children: [
          InkWell(
            onTap: ()=> checkPay("Card"),
            child: Container(
              width: width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                 color: _isCard ? appColors.mainColors : Colors.transparent ,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.credit_card,
                    size: 20.sp,
                  ),
                  SizedBox(width: 10,),
                  Text("Credit Card Or Debit",
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ThemeFont",
                      color: appColors.blackText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: ()=>checkPay("Bank"),
            child: Container(
              width: width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: _isBank ? appColors.mainColors : Colors.transparent ,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.credit_card,
                    size: 20.sp,
                  ),
                  SizedBox(width: 10,),
                  Text("Credit Card Or Debit",
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ThemeFont",
                      color: appColors.blackText,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  checkPay(pay) {
    setState(() {
      if(pay == "Card"){
        _isCard = true;
      }else{
        _isCard = false;
      }

      if(pay == "Bank"){
        _isBank = true;
      }else{
        _isBank = false;
      }
    });
  }
}
