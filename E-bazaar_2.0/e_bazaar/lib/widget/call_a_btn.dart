import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountType.dart';
import 'package:flutter_application_1/buyer/home_page.dart';
import 'package:flutter_application_1/login_screan.dart';
import 'package:flutter_application_1/widget/emailFieldWidget.dart';
import 'package:flutter_application_1/widget/passwordFieldWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class callActionBtn extends StatefulWidget {
  final btnTxt;
  const callActionBtn({super.key, required this.btnTxt});

  @override
  State<callActionBtn> createState() => _callActionBtnState();
}

class _callActionBtnState extends State<callActionBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Color(0xffBD532A)),
        ),
        onPressed: () async {
          var response = await signIn();
          if (response != null) {
            if (accountType == Account.buyer) {
              Navigator.of(context).pushReplacementNamed('/buyer_home_page');
            } else if (accountType == Account.seller) {
              Navigator.of(context).pushReplacementNamed('/seller_home_page');
            } else {
              null;
            }

            print(email);
            print(password);
            print("=============");
            print(response.user!.uid);
            print(accountType);
            print("=============");

          }
        },
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Text(widget.btnTxt,
              style: GoogleFonts.montserrat(
                  fontSize: 16.0, fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
