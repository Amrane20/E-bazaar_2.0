import 'package:flutter_application_1/widget/user_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/rounded_btn.dart';
import 'package:google_fonts/google_fonts.dart';

class sellerProfilePage extends StatelessWidget {
  const sellerProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7E7E7),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 26.67,
              ),
            )),
        backgroundColor: Color(0xffE7E7E7),
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
            "Profile",
            style: GoogleFonts.montserrat(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: 100,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/profile.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // the function to change the profile picture
                    print("change profile");
                  },
                  icon: Icon(
                    Icons.edit,
                    size: 18,
                    color: Color(0xff2F4858),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // the function to change the profile picture
                    print("change profile");
                  },
                  child: Text(
                    "Change profile",
                    style: GoogleFonts.lato(
                        fontSize: 18, color: Color(0xff2F4858)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            userProfileField(
              hintTxt: "Amrane",
              labelTxt: "First name",
              fieldWidth: double.infinity,
            ),
            SizedBox(
              height: 20.0,
            ),
            userProfileField(
              hintTxt: "Boufakri",
              labelTxt: "Last name",
              fieldWidth: double.infinity,
            ),
            SizedBox(
              height: 20.0,
            ),
            userProfileField(
              hintTxt: "boufakriamrane@gmail.com",
              labelTxt: "Email",
              fieldWidth: double.infinity,
            ),
            SizedBox(
              height: 20.0,
            ),
            userProfileField(
              hintTxt: "Tazentoute ait zineb Amerzigane",
              labelTxt: "Adress",
              fieldWidth: double.infinity,
            ),
            SizedBox(
              height: 20.0,
            ),
            userProfileField(
              hintTxt: "0643167008",
              labelTxt: "Phone number",
              fieldWidth: double.infinity,
            ),
            SizedBox(
              height: 20.0,
            ),
            userProfileField(
              hintTxt: "Bourane_shop",
              labelTxt: "Store name",
              fieldWidth: double.infinity,
            ),
            roundedBtn(
              btnTxt: "Change  Payment info",
              verticalPadding: 20.0,
              verticalMargin: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
