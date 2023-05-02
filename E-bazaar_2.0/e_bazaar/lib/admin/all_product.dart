import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class allProductsPage extends StatelessWidget {
  const allProductsPage({super.key});

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
            "All Products",
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
          children: [
            Divider(
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
                        "assets/images/Bourane_3d_moroccan_carpet_with_orange_black_color_8k_6887684b-0dd8-4f07-a816-4ef8c3a59c6c.png",
                        width: 177.5,
                        height: 150,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 7.0,),
                            Text(
                              "1 day ago",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16.0,
                                  color: Color(0xff2F4858)),
                            )
                          ],
                        ),
                      ),
                    ),
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
