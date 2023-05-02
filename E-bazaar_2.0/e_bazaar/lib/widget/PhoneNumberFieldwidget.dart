import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../accountType.dart';
import '../buyer/buyer_sign_up.dart';
import '../seller/seller_sign_up.dart';

int? phoneNumber;
class phoneNumberField extends StatelessWidget {
  final inputStyle;
  const phoneNumberField({super.key,this.inputStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(26.0, 0, 26.0, 0),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        style: inputStyle,
        onSaved: (newValue) {
          accountType==  Account.seller ? seller.phoneNumber = int.tryParse(newValue!) : buyer.phoneNumber = int.tryParse(newValue!);
          phoneNumber = int.tryParse(newValue); // will return null if the String 'newValue' value cannot be parsed as an integer. 
        },
        validator: (value) {
          
        },
        cursorColor: Colors.white54,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 24.0),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Color(0xff876653))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Colors.white54)),
            hintText: "Your phone number (optional) ",
            hintStyle:
                GoogleFonts.lato(fontSize: 14.0, color: Color(0xff876653)),
            labelText: "Phone Number",
            labelStyle:
                GoogleFonts.lato(color: Colors.white54, fontSize: 14.0)),
      ),
    );
  }
}