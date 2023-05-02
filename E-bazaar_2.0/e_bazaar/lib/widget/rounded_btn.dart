import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class roundedBtn extends StatelessWidget {
  final verticalPadding ;
  final verticalMargin;
  final horizontalMargin ;
  final btnTxt;
  const roundedBtn({super.key,this.horizontalMargin,this.verticalMargin,this.verticalPadding,required this.btnTxt});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        print("taped");
      },
      child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: verticalPadding== null ? 24.0:verticalPadding),
                  margin: EdgeInsets.symmetric(vertical: verticalMargin==null?40.0:verticalMargin,horizontal: horizontalMargin==null?20.0:horizontalMargin),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Color(0xffBD532A),
                  ),
                  child: Center(
                      child: Text(
                    btnTxt,
                    style: GoogleFonts.montserrat(fontSize: 16.0,fontWeight: FontWeight.w600),
                  )),
                ),
    );
  }
}