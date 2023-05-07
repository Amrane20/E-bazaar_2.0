import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountType.dart';
import 'package:flutter_application_1/buyer/buyer_sign_up.dart';
import 'package:flutter_application_1/login_screan.dart';
import 'package:flutter_application_1/models/seller_model.dart';
import 'package:flutter_application_1/seller/seller_sign_up.dart';
import 'package:flutter_application_1/widget/PhoneNumberFieldwidget.dart';
import 'package:flutter_application_1/widget/adressFieldWidget.dart';
import 'package:flutter_application_1/widget/emailFieldWidget.dart';
import 'package:flutter_application_1/widget/firsNameFiledWidget.dart';
import 'package:flutter_application_1/widget/lastNameFieldWidget.dart';
import 'package:flutter_application_1/widget/passwordFieldWidget.dart';
import 'package:flutter_application_1/widget/storeFieldWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class joinUsButton extends StatelessWidget {
  const joinUsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var response = accountType == Account.seller
            ? await signUp()
            : await buyer_signUp();
        // check the account type first then decide wich sign up function we'll use
        print("==============================");
        if (response != null) {
          seller.userId = response.user!.uid;
          buyer.userId = response.user!.uid;
          if (accountType == Account.seller) {
            createSellerDocument();
            seller.showInfo();
            Navigator.of(context).pushReplacementNamed('/logIn_Page');
          } else if (accountType == Account.buyer) {
            createBuyerDocument();
            buyer.showInfo();
            print(buyer.userId);
            Navigator.of(context).pushReplacementNamed('/logIn_Page');
          }
          print("/////////////////////");
          print("seller : ${seller.firstName}");
          print("buyer : ${buyer.firstName}");
          print("/////////////////////");

          print(isRegistered);
        }
        print("==============================");
      },
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          width: 150,
          height: 48.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffBD532A),
                  Color(0xff281F20),
                ]),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Join Us",
                style: GoogleFonts.montserrat(
                  fontSize: 16.0,
                  color: Colors.white54,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                Icons.arrow_right,
                color: Colors.white54,
              )
            ],
          )),
        ),
      ),
    );
  }
}
