import 'package:flutter/material.dart';
import 'package:flutter_application_1/buyer/buyer_sign_up.dart';
import 'package:flutter_application_1/seller/seller_sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

enum Account {
  seller,
  buyer,
}

var accountType;

class accType extends StatelessWidget {
  accType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var wid = double.infinity;
    return Container(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white54,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo01.png",
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
              InkWell(
                onTap: () {
                  accountType = Account.seller;
                  Navigator.of(context)
                      .pushReplacementNamed('/seller_signUp_Page');
                  print(accountType);
                },
                child: Container(
                  width: 250,
                  height: 48.0,
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //     begin: Alignment.topLeft,
                    //     end: Alignment.bottomRight,
                    //     colors: [
                    //       Color(0xffBD532A),
                    //       Color(0xff281F20),
                    //     ]),
                    color: Color(0xffBD532A),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                      child: Text(
                    "Seller Account",
                    style: GoogleFonts.montserrat(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              InkWell(
                onTap: () {
                  accountType = Account.buyer;

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => buyerSignUpPage()));
                  print(accountType);
                },
                child: Container(
                  width: 250,
                  height: 48.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Color(0xffBD532A), width: 1.5)),
                  child: Center(
                      child: Text(
                    "Buyer Account",
                    style: GoogleFonts.montserrat(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// "the Moroccan culture & products \nin your pocket to all Moroccan \nlovers & admirers "