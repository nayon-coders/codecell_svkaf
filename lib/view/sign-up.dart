import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/login.dart';
import 'package:b2b/widgets/bottom-navigation-bar.dart';
import 'package:b2b/view/sign-up.dart';
import 'package:b2b/widgets/app-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _email = TextEditingController();
  final _pass = TextEditingController();
  final _number = TextEditingController();

  //form key
  final _loginFormKey = GlobalKey<FormState>();
  late bool _passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    _passwordVisible = false;
  }
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
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

                SizedBox(height: 60,),

                Text("Getting Started",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "ThemeFont",
                    fontWeight: FontWeight.bold,
                    color: appColors.blackText,
                  ),
                ),
                Text("Create an account to continue!",
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
                      Text("Email",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          fontFamily: "RobotoSmall",
                          color: appColors.blackText,
                        ),
                      ),

                      TextFormField(
                        controller: _email,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_outline,
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w200
                            )
                        ),
                      ),

                      SizedBox(height: 30,),


                      Text("Phone Number",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          fontFamily: "RobotoSmall",
                          color: appColors.blackText,
                        ),
                      ),

                      InternationalPhoneNumberInput(
                          textFieldController: _number,
                          onInputChanged: (value){},
                          hintText: "000000000",
                        selectorButtonOnErrorPadding: 10,
                          selectorTextStyle: TextStyle(
                            color: Colors.grey,
                          ),

                      ),

                      SizedBox(height: 30,),
                      Text("Username or Email",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          fontFamily: "RobotoSmall",
                          color: appColors.blackText,
                        ),
                      ),

                      TextFormField(
                        controller: _email,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_outline,
                            ),
                            hintText: "User Name",
                            hintStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w200
                            )
                        ),
                      ),


                      SizedBox(height: 30,),

                      Text("Password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          fontFamily: "RobotoSmall",
                          color: appColors.blackText,
                        ),
                      ),

                      TextFormField(
                        obscureText: !_passwordVisible,
                        controller: _pass,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible ?  Icons.visibility_outlined : Icons.visibility_off_outlined,
                                color: appColors.blackText,
                              ), onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w200
                            )
                        ),
                      ),
                      SizedBox(height: 20,),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/1.5,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(text: 'By creating an account, you agree to our ', style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w100,
                                        fontFamily: "ThemeFont"
                                    )),
                                    TextSpan(text:
                                    "Term & Conditions ", style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "ThemeFont"
                                    )
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),


                SizedBox(height: 40,),


                Bounce(
                  duration: Duration(milliseconds: 70),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AppBottomNavigationBar()));
                  },
                  child: AppButton(text: "Sign Up"),
                ),

                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                        "I already have an account?", style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w100,
                        fontFamily: "ThemeFont"
                    )
                    ),
                    SizedBox(width: 5,),
                    TextButton(
                      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())),
                      child: const Text('Sign In', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: "ThemeFont"
                      )),
                    )
                  ],
                ),




SizedBox(height: 30,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
