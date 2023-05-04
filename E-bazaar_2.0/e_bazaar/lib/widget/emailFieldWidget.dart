import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../accountType.dart';
import '../buyer/buyer_sign_up.dart';
import '../seller/seller_sign_up.dart';

String? email;

class emailField extends StatelessWidget {
  final Color borderColor;
  final Color lableTxtColor;
  final inputStyle;
  const emailField(
      {super.key,
      this.borderColor = Colors.white54,
      this.lableTxtColor = Colors.white54,
      this.inputStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(26.0, 0, 26.0, 0),
      child: TextFormField(
        style: inputStyle,
        onSaved: (newValue) {
          accountType == Account.seller
              ? seller.email = newValue
              : buyer.email = newValue;
          email = newValue;
        },
        validator: (value) {
          if (value == null) {
            return "email cannot be empty";
          }
        },
        cursorColor: Colors.white54,
        decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.email,
              color: Color(0xff6F5243),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 24.0),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Color(0xff876653))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: borderColor)),
            hintText: "Your email",
            hintStyle:
                GoogleFonts.lato(fontSize: 14.0, color: Color(0xff876653)),
            labelText: "Email ",
            labelStyle: GoogleFonts.lato(color: lableTxtColor, fontSize: 14.0)),
      ),
    );
  }
}
