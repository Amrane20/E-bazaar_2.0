import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bankCardInputField extends StatelessWidget {
  final  hintTxt;
  final  labelTxt;
  const bankCardInputField({super.key,required this.hintTxt,required this.labelTxt});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.0,),
        Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: labelTxt,
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
                hintText: hintTxt,
                hintStyle:
                    GoogleFonts.lato(fontSize: 18.0, color: Colors.black),
              ),
            ),
          )
      ],
    );
  }
}