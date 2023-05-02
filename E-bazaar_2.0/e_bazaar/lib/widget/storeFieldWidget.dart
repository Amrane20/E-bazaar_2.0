import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../accountType.dart';
import '../buyer/buyer_sign_up.dart';
import '../seller/seller_sign_up.dart';

String? storeName;
class storeNameField extends StatelessWidget {
  final inputStyle;
  const storeNameField({super.key,this.inputStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(26.0, 0, 26.0, 0),
      child: TextFormField(
        style: inputStyle,
        onSaved: (newValue) {
          accountType==  Account.seller ? seller.storeName = newValue : null;
          storeName = newValue;
        },
        validator: (value) {
          if(value!.isNotEmpty) {
            if(value.length < 6) {
              return "store name should be greater than 6 chars";
            }
          } else {
            return "the field cannot be empty";
          }
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
            hintText: "Store Name",
            hintStyle:
                GoogleFonts.lato(fontSize: 14.0, color: Color(0xff876653)),
            labelText: "Store Name",
            labelStyle:
                GoogleFonts.lato(color: Colors.white54, fontSize: 14.0)),
      ),
    );
  }
}