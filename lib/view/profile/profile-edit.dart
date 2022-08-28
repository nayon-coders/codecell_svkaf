import 'package:b2b/Utility/color.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {

  //input controler
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _dob = TextEditingController();
  final _gender = TextEditingController();
  final _number = TextEditingController();
  final _location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.black,),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Text("Profile Edit",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "ThemeFont",
              color: appColors.blackText,
              fontSize: 12.sp
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 30, bottom: 30, right: 20),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/images/profile-upload.png", height: 100, width: 100, fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 20,),

                  Text("Profile Upload",
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),

            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildProfileInput(title: "Name", hint: "Name", controller: _name),
                  buildProfileInput(title: "Email", hint: "Email", controller: _name),
                  buildProfileInput(title: "Phone Number", hint: "Phone Number", controller: _name),
                  buildProfileInput(title: "Phone", hint: "Phone Number", controller: _name),
                  buildProfileInput(title: "DATE OF BIRTH", hint: "dd-mm-yy", controller: _name),
                  buildProfileInput(title: "location", hint: "Location", controller: _name),

                  SizedBox(height: 20,),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: appColors.mainColors,
                    ),
                    child: Center(child: Text("Update")),
                  ),

                  SizedBox(height: 40,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildProfileInput({
  required String title,
    required String hint,
    required TextEditingController controller,
}) {
    return Container(
                  margin: EdgeInsets.only(left: 20, bottom: 30, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$title",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 9.sp,
                          fontFamily: "ThemeFont",
                          color: Colors.black54
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        controller: controller,
                        decoration: InputDecoration(
                          hintText: "$hint",
                          hintStyle: TextStyle(
                            fontFamily: "ThemeFont",
                            fontSize: 10.sp
                          ),
                          contentPadding: EdgeInsets.only(left: 20, right: 20),
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                          )
                        ),
                      )
                    ],
                  ),
                );
  }
}
