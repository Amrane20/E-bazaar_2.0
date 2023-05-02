import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class userProfileField extends StatelessWidget {
  final String? labelTxt;
  final String hintTxt;
  final fieldWidth;
  const userProfileField(
      {super.key, this.labelTxt, required this.hintTxt, this.fieldWidth});

  @override
  Widget build(BuildContext context) {
    bool isExist = false;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: fieldWidth,
            height: isExist == true ? 50 : 60,
            // height: 70,
            decoration: BoxDecoration(
              color: Color(0xffD9D9D9),
              border: Border.all(
                color: Color(0xff2F4858),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (isExist == false)
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                      child: Text(
                        labelTxt!,
                        style: GoogleFonts.montserrat(
                            color: Color(0xff3E4D71),
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0),
                      ),
                    ),
                  ),
                Positioned(
                  top: (isExist == true) ? 0 : 30.0,
                  left: 20.0,
                  child: Container(
                    width: 310,
                    height: 30,
                    child: TextField(
                      style: GoogleFonts.lato(
                          color: Color(0xff2F4858),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                      maxLength: 37,
                      decoration: InputDecoration(
                          counterText: '', // to remove the counterText
                          border: InputBorder
                              .none, // to remove the text field default style (border)
                          hintText: hintTxt,
                          hintStyle: GoogleFonts.lato(
                              color: Color(0xff2F4858),
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
