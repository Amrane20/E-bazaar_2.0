import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class paymentHistoryPage extends StatelessWidget {
  const paymentHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7E7E7),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 26.67,
              ),
            )),
        backgroundColor: Color(0xffE7E7E7),
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
            "Payment History",
            style: GoogleFonts.montserrat(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Divider(
              thickness: 0.7,
              color: Color(0xff2F4858),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    child: Center(
                      child: Text(
                        "12",
                        style: GoogleFonts.lato(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffDCB08B)),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Color(0xff2F4858)),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "September /2022",
                          style: GoogleFonts.lato(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Withraw of ",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                children: [
                              TextSpan(
                                text: "\$ 565.39",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffBD532A)),
                              )
                            ]))
                      ],
                    ),
                  ),
                  Image.asset("assets/images/checked_List.png",)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
