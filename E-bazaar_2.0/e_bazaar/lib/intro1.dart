import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountType.dart';
import 'package:google_fonts/google_fonts.dart';

class intro1 extends StatelessWidget {
  String imageUrl;
  String headerTiltle;
  String subHeader;
  intro1(
      {super.key,
      required this.imageUrl,
      required this.headerTiltle,
      required this.subHeader});

  @override
  Widget build(BuildContext context) {
    var wid = double.infinity;
    return Container(
      child: Container(
        height: MediaQuery.of(context).size.height, 
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xffBD532A),
              Color(0xff281F20),
            ])),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  imageUrl,
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(headerTiltle,
                      style: GoogleFonts.lora(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff2A2524))),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    subHeader,
                    style: GoogleFonts.montserrat(
                      // color: Color(0xff898686),
                      color: Colors.white54,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 72,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => accType()));
                    print("taped");
                  },
                  child: Container(
                    width: 250,
                    height: 48.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffBD532A),
                            Color(0xff281F20),
                          ]),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                        child: Text(
                      "Get Started",
                      style: GoogleFonts.montserrat(
                        fontSize: 16.0,
                        color: Colors.white54,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// "the Moroccan culture & products \nin your pocket to all Moroccan \nlovers & admirers "