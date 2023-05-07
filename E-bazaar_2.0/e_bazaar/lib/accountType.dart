import 'package:flutter/material.dart';
import 'package:flutter_application_1/buyer/buyer_sign_up.dart';
import 'package:flutter_application_1/seller/seller_sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

enum Account {
  seller,
  buyer,
  guest,
}

var accountType; // to cheak wich account is selected

class accType extends StatelessWidget {
  accType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var wid = double.infinity;
    return Scaffold(
      backgroundColor: Color(0xffE7E7E7),
      body: Column(
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
              Navigator.of(context).pushReplacementNamed('/seller_signUp_Page');
              print(accountType);
            },
            child: Container(
              width: 250,
              height: 48.0,
              decoration: BoxDecoration(
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => buyerSignUpPage()));
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
          const SizedBox(
            height: 48.0,
          ),
          InkWell(
            onTap: () {
              accountType = Account.guest;
              Navigator.of(context).pushNamed('/home_page');
              print(accountType);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Skip for now",
                  style: GoogleFonts.montserrat(fontSize: 18.0),
                ),
                SizedBox(
                  width: 7.0,
                ),
                Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}

// "the Moroccan culture & products \nin your pocket to all Moroccan \nlovers & admirers "