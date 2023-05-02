import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountType.dart';
import 'package:flutter_application_1/buyer/buyer_sign_up.dart';
import 'package:flutter_application_1/models/seller_model.dart';
import 'package:flutter_application_1/seller/seller_sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

String? firstName;
class firstNameField extends StatelessWidget {
  final inputStyle;
  const firstNameField({super.key,this.inputStyle});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(26.0, 0, 26.0, 0),
      child: TextFormField(
        style: inputStyle,
        onSaved: (newValue) {
        accountType==  Account.seller ? seller.firstName = newValue : buyer.firstName = newValue;
          firstName = newValue;
          
        },
        validator: (value) {
          if(value!.isEmpty){
             return "can't be empty";
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
            hintText: "Your first name",
            hintStyle:
                GoogleFonts.lato(fontSize: 14.0, color: Color(0xff876653)),
            labelText: "First Name",
            labelStyle:
                GoogleFonts.lato(color: Colors.white54, fontSize: 14.0)),
      ),
    );
  }
}