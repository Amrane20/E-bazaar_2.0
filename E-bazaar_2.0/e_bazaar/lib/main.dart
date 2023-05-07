import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountType.dart';
import 'package:flutter_application_1/admin/all_product.dart';
import 'package:flutter_application_1/admin/all_sellers.dart';
import 'package:flutter_application_1/admin/more_datails.dart';
import 'package:flutter_application_1/buyer/buyer_history.dart';
import 'package:flutter_application_1/buyer/buyer_setting_Page.dart';
import 'package:flutter_application_1/buyer/buyer_sign_up.dart';
import 'package:flutter_application_1/buyer/buyer_card_info.dart';
import 'package:flutter_application_1/buyer/favorites.dart';
import 'package:flutter_application_1/buyer/history_test.dart';
import 'package:flutter_application_1/buyer/home.dart';
import 'package:flutter_application_1/buyer/placing_order_page.dart';
import 'package:flutter_application_1/buyer/home_page.dart';
import 'package:flutter_application_1/firebase_testing.dart';
import 'package:flutter_application_1/intro1.dart';
import 'package:flutter_application_1/login_screan.dart';
import 'package:flutter_application_1/buyer/product_cart.dart';
import 'package:flutter_application_1/buyer/product_detail.dart';
import 'package:flutter_application_1/seller/home.dart';
import 'package:flutter_application_1/seller/myShop.dart';
import 'package:flutter_application_1/seller/notifications.dart';
import 'package:flutter_application_1/seller/payment_history.dart';
import 'package:flutter_application_1/seller/sales_history.dart';
import 'package:flutter_application_1/seller/seller_card_info.dart';
import 'package:flutter_application_1/seller/seller_profile.dart';
import 'package:flutter_application_1/seller/seller_setting_page.dart';
import 'package:flutter_application_1/seller/seller_sign_up.dart';
import 'package:flutter_application_1/seller/upload_product.dart';
import 'package:flutter_application_1/tes.dart';
import 'package:flutter_application_1/widget/error.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: accType(),
    routes: {
      '/home_page': (BuildContext context) => homePage(),
      '/seller_signUp_Page': (BuildContext context) => sellerSignUpPage(),
      '/logIn_Page': (BuildContext context) => loginPage(),
      '/Acc_type_page': (BuildContext context) => accType(),
      '/seller_home_page': (BuildContext context) => sellerHome(),
      '/buyer_home_page': (BuildContext context) => buyerHome(),
      '/myApp_page': (BuildContext context) => MyApp(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // final double p = (double.infinity - (double.infinity - 35.0));
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: LiquidSwipe(
        enableLoop: false, // defaoult value true
        slideIconWidget: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xffE7E7E7),
          size: 40,
        ),
        positionSlideIcon: 0.825,
        waveType: WaveType.liquidReveal,
        // enableSideReveal: true,
        pages: [
          intro1(
            imageUrl: "assets/images/intro1.png",
            headerTiltle: "E-bazaar Shop",
            subHeader:
                "the Moroccan culture & products \nin your pocket to all Moroccan \nlovers & admirers ...",
          ),
          intro1(
            imageUrl: "assets/images/intro2.png",
            headerTiltle: "E-bazaar Shop",
            subHeader:
                "the Moroccan culture & products \nin your pocket to all Moroccan \nlovers & admirers ...",
          ),
          accType(),
        ],
      ),
    );
  }
}
