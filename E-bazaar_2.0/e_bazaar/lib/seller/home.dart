
import 'package:flutter/material.dart';
import 'package:flutter_application_1/buyer/buyer_history.dart';
import 'package:flutter_application_1/buyer/buyer_setting_Page.dart';
import 'package:flutter_application_1/buyer/favorites.dart';
import 'package:flutter_application_1/buyer/home_page.dart';
import 'package:flutter_application_1/login_screan.dart';
import 'package:flutter_application_1/seller/myShop.dart';
import 'package:flutter_application_1/seller/seller_setting_page.dart';
import 'package:flutter_application_1/seller/upload_product.dart';
import 'package:flutter_application_1/widget/favorite_item_cart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class sellerHome extends StatefulWidget {
  const sellerHome({super.key});

  @override
  State<sellerHome> createState() => _sellerHomeState();
}

class _sellerHomeState extends State<sellerHome> {
 int _currentPageIndex = 0;
 final screens = [
   myShopPage(),
   uploadPage(),
   sellerSettingPage(),
   //loginPage(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: screens[_currentPageIndex],
          bottomNavigationBar: Container(
          color: Color(0xffD9D9D9),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
            child: GNav(
              textStyle: GoogleFonts.montserrat(
                fontSize: 16.0,
                fontWeight: FontWeight.w500
              ),
              onTabChange: (value) {
              setState(() {
              //_currentPageIndex = value;
              if ( value != 3) {
                _currentPageIndex = value;
              }
               });
              print(_currentPageIndex);
            },
              backgroundColor: Color(0xffD9D9D9),
              gap: 13,
              color: Color(0xff2F4858),
              tabBackgroundColor: Colors.white,
              padding: EdgeInsets.all(13),
              tabs: [
                GButton(icon: Icons.home,text: "Home",),
                GButton(icon: Icons.favorite_border_rounded,text: "Favorite",),
                GButton(icon: Icons.person_outline_rounded,text: "Profile",),
                GButton(icon: Icons.logout_outlined,text: "Logout",),
              ],
            ),
          ),
        ),
    );
  }
}