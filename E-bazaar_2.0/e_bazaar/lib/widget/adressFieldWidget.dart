import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../accountType.dart';
import '../buyer/buyer_sign_up.dart';
import '../seller/seller_sign_up.dart';



String? adress;
class adressField extends StatelessWidget {
  final inputStyle;
  const adressField({super.key,this.inputStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(26.0, 0, 26.0, 0),
      child: TextFormField(
        style: inputStyle,
        onSaved: (newValue) {
          accountType==  Account.seller ? seller.adress = newValue : buyer.adress = newValue;
          adress = newValue;
        },
        validator: (value) {
          
        },
        cursorColor: Colors.white54,
        decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.location_on,
              color: Color(0xff6F5243),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 24.0),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Color(0xff876653))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Colors.white54)),
            hintText: "Your adress",
            hintStyle:
                GoogleFonts.lato(fontSize: 14.0, color: Color(0xff876653)),
            labelText: "Adress ",
            labelStyle:
                GoogleFonts.lato(color: Colors.white54, fontSize: 14.0)),
      ),
    );
  }
}