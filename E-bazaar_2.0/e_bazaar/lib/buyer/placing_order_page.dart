import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/rounded_btn.dart';
import 'package:google_fonts/google_fonts.dart';

class placingOrderPage extends StatelessWidget {
  const placingOrderPage({super.key});

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
            "Payment",
            style: GoogleFonts.montserrat(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24.0,
            ),
            Divider(
              thickness: 0.7,
              color: Color(0xff2F4858),
              endIndent: 20.0,
              //indent: 20.0,
            ),
            Text(
              "Select a payment method",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16.0),
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0, top: 24.0),
              height: 190.0,
              width: double.infinity,
              child: Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    "assets/images/payment.jpg",
                    height: 190.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 190.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(153, 0, 0, 0)),
                ),
                //Image.asset("assets/images/Group.jpg",height: 26,width: 35,),
                Positioned(
                  top: 29.0,
                  left: 21.0,
                  child: Row(
                    children: [
                      Icon(
                        Icons.credit_card_rounded,
                        color: Color(0xff1E1E46),
                        size: 35.0,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        "Credit Card",
                        style: GoogleFonts.montserrat(
                            color: Color(0xff1E1E46), fontSize: 16.0),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 88.0,
                  left: 21.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "AMRANE BOUFAKRI",
                        style: GoogleFonts.lato(
                            fontSize: 16.0, color: Colors.white),
                      ),
                      Text(
                        "1564 2544 58** ****",
                        style: GoogleFonts.lato(
                            fontSize: 16.0, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.only(top: 20.0, right: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                      width: 1.5, color: Color.fromARGB(77, 0, 0, 0))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Icon(
                      Icons.delivery_dining,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 14.0,
                  ),
                  Text(
                    "Cash on Delivery",
                    style: GoogleFonts.montserrat(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2F4858)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    height: 70,
                    width: 1.5,
                    color: Color.fromARGB(77, 0, 0, 0),
                  ),
                  Expanded(child: Image.asset("assets/images/payPal.png"))
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Divider(
              thickness: 0.7,
              color: Color(0xff2F4858),
              endIndent: 20.0,
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            "Pull & Bear",
                            style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2F4858)),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text(
                              "2 Items",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff2F4858)),
                            ),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Text(
                            "\$ 100.99",
                            style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Delivery",
                            style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2F4858)),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Text(
                            "\$ 10.00",
                            style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("taped");
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 25.0),
                      margin: EdgeInsets.only(right: 20.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color(0xffBD532A),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Place Order",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18.0, fontWeight: FontWeight.w600),
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            child: Text(
                              "\$ 755.99",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
