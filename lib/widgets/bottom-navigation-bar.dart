import 'package:b2b/Utility/color.dart';
import 'package:b2b/view/foods/foods-home.dart';
import 'package:b2b/view/home.dart';
import 'package:b2b/view/shop/shop-main.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../view/profile/profile.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final int index;
  const AppBottomNavigationBar({Key? key, this.index=0}) : super(key: key);

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {

  int _currentIndex = 1;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  List pages = [
    HomeScreen(),
    MainShopeScreen(),
    FoodHome(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Home', style: TextStyle(color: appColors.blackText, fontFamily: "ThemeFont", fontWeight: FontWeight.w400),),
            icon: Icon(Icons.home_outlined, color: appColors.blackText,),
            activeColor:Colors.green,

          ),
          BottomNavyBarItem(
            title: Text('Market', style: TextStyle(color: appColors.blackText, fontFamily: "ThemeFont", fontWeight: FontWeight.w400),),
            icon: Icon(Icons.shopping_cart_checkout_outlined, color: appColors.blackText,),
            activeColor:Colors.green,

          ),
          BottomNavyBarItem(
            title: Text('Foods', style: TextStyle(color: appColors.blackText, fontFamily: "ThemeFont", fontWeight: FontWeight.w400),),
            icon: Icon(Icons.food_bank_outlined, color: appColors.blackText,),
            activeColor:Colors.green,

          ),
          BottomNavyBarItem(
            title: Text('Profile', style: TextStyle(color: appColors.blackText, fontFamily: "ThemeFont", fontWeight: FontWeight.w400),),
            icon: Icon(Icons.person_outline, color: appColors.blackText,),
            activeColor:Colors.green,

          ),

        ],
      ),
    );
  }
}
