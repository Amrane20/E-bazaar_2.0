import 'package:flutter/material.dart';
import 'package:flutter_application_1/buyer/buyer_card_info.dart';
import 'package:flutter_application_1/buyer/buyer_history.dart';
import 'package:flutter_application_1/seller/seller_profile.dart';
import 'package:flutter_application_1/widget/settings_item.dart';
import 'package:google_fonts/google_fonts.dart';

class buyerSettingsPage extends StatelessWidget {
  const buyerSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false; // this will stop or block going back to the previous page
      },
      child: Scaffold(
        backgroundColor: Color(0xffE7E7E7),
        appBar: AppBar(
          backgroundColor: Color(0xffE7E7E7),
          title: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              "Geniral",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
          centerTitle: true,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 48.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/images/profile.jpg",
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 18.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Amrane Boufakri",
                        style: GoogleFonts.montserrat(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "boufakriamrane@gmail.com",
                        style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, top: 49.0, bottom: 4.0),
              child: Text(
                "Account",
                style: GoogleFonts.montserrat(
                    fontSize: 12.0, fontWeight: FontWeight.w300),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sellerProfilePage()),
                );
              },
              child: settingItem(
                itmText: "Profile Data",
                itmIcon: Icons.person_outline,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => buyerCardInfo()),
                );
              },
              child: settingItem(
                itmText: "Payment Details",
                itmIcon: Icons.payments_outlined,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => buyerHistoryPage()),
                );
              },
              child: settingItem(
                itmText: "History",
                itmIcon: Icons.shopping_bag_outlined,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, top: 49.0, bottom: 4.0),
              child: Text(
                "Settings",
                style: GoogleFonts.montserrat(
                    fontSize: 12.0, fontWeight: FontWeight.w300),
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.of(context).pushReplacementNamed('/logIn_Page');
                print("change password taped");
              },
              child: settingItem(
                itmIcon: Icons.remove_red_eye_outlined,
                itmText: "Change Password",
                itmRightIcon: Icons.keyboard_arrow_right_rounded,
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.of(context).pushReplacementNamed('/logIn_Page');
                print("change language taped");
              },
              child: settingItem(
                itmIcon: Icons.language_outlined,
                itmText: "Change Language",
                itmRightIcon: Icons.keyboard_arrow_right_rounded,
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
