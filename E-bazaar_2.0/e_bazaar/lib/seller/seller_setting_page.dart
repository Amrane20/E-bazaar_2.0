import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/settings_item.dart';
import 'package:google_fonts/google_fonts.dart';

class sellerSettingPage extends StatelessWidget {
  const sellerSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7E7E7),
      appBar: AppBar(
        backgroundColor: Color(0xffE7E7E7),
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            "Geniral",
            style: GoogleFonts.montserrat(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false, //to hide the back arrow
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
            padding: const EdgeInsets.only(left: 30.0, top: 49.0, bottom: 4.0),
            child: Text(
              "Account",
              style: GoogleFonts.montserrat(
                  fontSize: 12.0, fontWeight: FontWeight.w300),
            ),
          ),
          settingItem(
            itmText: "Profile Data",
            itmIcon: Icons.person_outline,
          ),
          settingItem(
            itmText: "Payment Details",
            itmIcon: Icons.payments_outlined,
          ),
          settingItem(
            itmText: "View Shop",
            itmIcon: Icons.store_mall_directory_outlined,
          ),
          settingItem(
            itmText: "Sales History",
            itmIcon: Icons.shopping_bag_outlined,
          ),
          settingItem(
            itmText: "Payment History",
            itmIcon: Icons.attach_money_outlined,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 49.0, bottom: 4.0),
            child: Text(
              "Settings",
              style: GoogleFonts.montserrat(
                  fontSize: 12.0, fontWeight: FontWeight.w300),
            ),
          ),
          settingItem(
            itmIcon: Icons.remove_red_eye_outlined,
            itmText: "Change Password",
            itmRightIcon: Icons.keyboard_arrow_right_rounded,
          ),
          settingItem(
            itmIcon: Icons.language_outlined,
            itmText: "Change Language",
            itmRightIcon: Icons.keyboard_arrow_right_rounded,
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
