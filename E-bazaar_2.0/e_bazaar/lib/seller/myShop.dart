import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myShopPage extends StatelessWidget {
  const myShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7E7E7),
      appBar: AppBar(
        backgroundColor: Color(0xffE7E7E7),
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
            "My Shop",
            style: GoogleFonts.montserrat(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Divider(
              thickness: 0.7,
              color: Color(0xff2F4858),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/images/martin-adams-zbPDL84kvRg-unsplash.jpg",
                        width: 177.5,
                        height: 150,
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Column(
                          children: [
                            Text(
                              "Pull & Bear Men’s FallUrban Collection",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece .....",
                              style: GoogleFonts.lato(
                                  fontSize: 16.0,
                                  color: Color.fromARGB(178, 0, 0, 0)),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Icon(
                          Icons.sell_outlined,
                          color: Color(0xff2F4858),
                        ),
                        RichText(
                          text: TextSpan(
                              text: "250 ",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Color(0xff2F4858)),
                              children: [
                                TextSpan(
                                    text: "SALES",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Color(0xffBD532A)))
                              ]),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_rounded,
                          color: Color(0xff2F4858),
                        ),
                        RichText(
                          text: TextSpan(
                              text: "400 ",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Color(0xff2F4858)),
                              children: [
                                TextSpan(
                                    text: "LIKES",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Color(0xffBD532A)))
                              ]),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.delete_outline_outlined,
                    color: Color(0xff2F4858),
                    size: 24,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
