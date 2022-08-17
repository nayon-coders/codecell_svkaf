import 'package:b2b/Utility/color.dart';
import 'package:b2b/widgets/bottom-navigation-bar.dart';
import 'package:b2b/view/sign-up.dart';
import 'package:b2b/widgets/app-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final _otp = TextEditingController();
  final _pass = TextEditingController();

  //form key
  final _loginFormKey = GlobalKey<FormState>();
  late bool _passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: appColors.blackText,
                  ),
                  Text("Location",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                    ),
                  )
                ],
              ),

              SizedBox(height: 100,),

              Text("OTP Authentication",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "ThemeFont",
                  fontWeight: FontWeight.bold,
                  color: appColors.blackText,
                ),
              ),
              SizedBox(height: 8,),
              SizedBox(
                width: 300,
                child: Text("An authentication code has been sent to (+00) 999 999 999",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "ThemeFont",
                    fontWeight: FontWeight.w300,
                    color: appColors.blackText,
                  ),
                ),
              ),

              SizedBox(height: 50,),

              Form(
                key: _loginFormKey,
                child: OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 80,
                  style: TextStyle(
                      fontSize: 17
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
              ),


              SizedBox(height: 80,),


              Bounce(
                duration: Duration(milliseconds: 110),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AppBottomNavigationBar()));
                },
                child: AppButton(text: "Continue"),
              ),

              SizedBox(height: 20,),







            ],
          ),
        ),
      ),
    );
  }
}
