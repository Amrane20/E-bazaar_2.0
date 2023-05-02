import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../accountType.dart';
import '../buyer/buyer_sign_up.dart';
import '../seller/seller_sign_up.dart';



String? password;
class passwordField extends StatefulWidget {
  final Color borderColor;
  final Color lableTxtColor;
  final inputStyle;
  const passwordField({super.key, this.borderColor = Colors.white54,this.lableTxtColor =Colors.white54,this.inputStyle});

  @override
  State<passwordField> createState() => _passwordFieldState();
}

class _passwordFieldState extends State<passwordField> {
  bool visiblePass = true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(26.0, 0, 26.0, 0),
      child: TextFormField(
        style: widget.inputStyle,
        obscureText: visiblePass == true ? true : false,
        onSaved: (newValue) {
          accountType==  Account.seller ? seller.password = newValue : buyer.password = newValue;
          password = newValue;
        },
        validator: (value) {
          if(value!.isNotEmpty) {
            if(value.length < 6) {
              return "the password should be greater than 6 chars";
            }
          } else {
            return "the field cannot be empty";
          }
        },
        cursorColor: Colors.white54,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  visiblePass = visiblePass == true ? false : true;
                });
                print(visiblePass);
              },
              icon: visiblePass == true ? Icon( Icons.visibility_off,) : Icon( Icons.visibility,),
             
              color: Color(0xff6F5243),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 24.0),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Color(0xff876653))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: widget.borderColor)),
            hintText: "Your password",
            hintStyle:
                GoogleFonts.lato(fontSize: 14.0, color: Color(0xff876653)),
            labelText: "Password ",
            labelStyle:
                GoogleFonts.lato(color: widget.lableTxtColor, fontSize: 14.0)),
      ),
    );
  }
}