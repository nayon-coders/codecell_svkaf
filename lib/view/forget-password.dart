import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/OTP.dart';
import 'package:b2b/view/sign-up.dart';
import 'package:b2b/widgets/app-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _number = TextEditingController();
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

              Text("Password Recovery",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "ThemeFont",
                  fontWeight: FontWeight.bold,
                  color: appColors.blackText,
                ),
              ),
              Text("Enter your Phone number to recover your password",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "ThemeFont",
                  fontWeight: FontWeight.w300,
                  color: appColors.blackText,
                ),
              ),

              SizedBox(height: 50,),

              Form(
                key: _loginFormKey,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Phone Number",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontFamily: "RobotoSmall",
                        color: appColors.blackText,
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey.shade300)
                        )
                      ),
                      child: InternationalPhoneNumberInput(
                        textFieldController: _number,
                        onInputChanged: (value){},
                        hintText: "000000000",
                        selectorButtonOnErrorPadding: 10,
                        selectorTextStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        inputBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),

                      ),
                    ),

                  ],
                ),
              ),


              SizedBox(height: 80,),


              Bounce(
                duration: Duration(milliseconds: 110),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));
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
