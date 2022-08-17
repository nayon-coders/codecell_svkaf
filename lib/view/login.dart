import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/forget-password.dart';
import 'package:b2b/view/sign-up.dart';
import 'package:b2b/widgets/app-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
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

                SizedBox(height: 100,),

                    Text("Let’s Sign You In",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "ThemeFont",
                        fontWeight: FontWeight.bold,
                        color: appColors.blackText,
                      ),
                    ),
                    Text("Welcome back, you’ve been missed!",
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
                          )

                        ],
                      ),
                    ),


                    SizedBox(height: 40,),


                      Bounce(
                          duration: Duration(milliseconds: 50),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                          },
                          child: AppButton(text: "Sign In"),
                      ),

                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp())),
                          child: Text(
                              "Don't have an account?", style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w100,
                              fontFamily: "ThemeFont"
                          )
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text('Sign up', style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "ThemeFont"
                        ))
                      ],
                    ),
                Center(
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                    },
                    child: Text(
                        "Forget Paassword?", style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w100,
                        fontFamily: "ThemeFont"
                    )
                    ),
                  ),
                ),
                Divider(height: 2, color: Colors.grey.shade400,)







              ],
            ),
          ),
        ),
      ),
    );
  }
}
