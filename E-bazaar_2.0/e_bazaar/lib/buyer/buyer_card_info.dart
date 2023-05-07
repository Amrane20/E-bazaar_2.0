import "package:flutter/material.dart";
import "package:flutter_application_1/widget/bank_card_input.dart";
import "package:flutter_application_1/widget/rounded_btn.dart";
import "package:google_fonts/google_fonts.dart";

class buyerCardInfo extends StatelessWidget {
  const buyerCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            )),
        backgroundColor: Colors.white,
        title: Text(
          "Bank Card",
          style: GoogleFonts.montserrat(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 24),
            child: Text(
              "Your Card Info",
              style: GoogleFonts.montserrat(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 25, top: 15, bottom: 24),
            child: Image.asset(
              "assets/images/card.png",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Card name",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.normal,
                      fontSize: 22,
                      color: Colors.black)),
              TextSpan(
                  text: " *",
                  style: GoogleFonts.montserrat(
                      color: Color(0xffBD532A),
                      fontSize: 22,
                      fontWeight: FontWeight.normal)),
            ])),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(26.0, 0, 26.0, 0),
            child: TextFormField(
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 18.0,
              ),
              cursorColor: Color(0xff1E1E46),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffD9D9D9),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 13.0, horizontal: 24.0),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        BorderSide(color: Color(0xff1E1E46), width: 2.0)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        BorderSide(color: Color(0xff1E1E46), width: 2.0)),
                hintText: "Your card name",
                hintStyle:
                    GoogleFonts.lato(fontSize: 18.0, color: Colors.black),
              ),
            ),
          ),
          bankCardInputField(
            hintTxt: "582 485 489 623 ",
            labelTxt: "Card Number ",
          ),
          Row(
            children: [
              Expanded(
                child: bankCardInputField(
                  hintTxt: "520",
                  labelTxt: "CVV",
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: bankCardInputField(
                  hintTxt: "15/08",
                  labelTxt: "Expired",
                ),
              ),
             
            ],
          ),
        //  SizedBox(height: 40.0,),
          
              roundedBtn(btnTxt: "Save My Info",)

          //bankCardInputField()
        ],
      ),
    );
  }
}
