import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'myCartProduct.dart';



class myCartPage extends StatefulWidget {
  const myCartPage({super.key});

  @override
  State<myCartPage> createState() => _myCartPageState();
}

class _myCartPageState extends State<myCartPage> {
  @override
  Widget build(BuildContext context) {
    String itemQnt = "01";
    return Scaffold(
      backgroundColor: Color(0xffE7E7E7),
      appBar: AppBar(
        backgroundColor: Color(0xffE7E7E7),
        title: Text(
          "My Cart",
          style: GoogleFonts.montserrat(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
          child: Column(
            children: [
              Container(
                //color: Colors.white,
                width: double.infinity,
                height:  MediaQuery.of(context).size.height * 0.55 ,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    cartItem(),
                    cartItem(),
                    cartItem(),
                    cartItem(),
                    cartItem(),
                    cartItem(),
                    cartItem(),
                  ],
                ),
              ),
              Visibility(
                visible:  true,
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.32,
                  decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(55.0),
                          topRight: Radius.circular(55.0))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, bottom: 5, top: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.15,
                          // color: Colors.orange,
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pull & Bear ...",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "2 items",
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xff2F4858),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pull & Bear ...",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "2 items",
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xff2F4858),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pull & Bear ...",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "2 items",
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xff2F4858),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pull & Bear ...",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "2 items",
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xff2F4858),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Color(0xffBD532A),
                          ),
                          child: Center(
                              child: Text(
                            "Buy now",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600),
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
