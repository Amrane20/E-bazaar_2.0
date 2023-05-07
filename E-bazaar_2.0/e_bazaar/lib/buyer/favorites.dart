import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/favorite_item_cart.dart';
import 'package:google_fonts/google_fonts.dart';

class favoritesPage extends StatelessWidget {
  const favoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false; // this will stop or block going back to the previous page
      },
      child: Scaffold(
        backgroundColor: Color(0xffE7E7E7),
        appBar: AppBar(
          backgroundColor: Color(0xffE7E7E7),
          title: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              "Favorite",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
          centerTitle: true,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 40.0,
            ),
            favoriteCart(),
            favoriteCart(),
            favoriteCart(),
            favoriteCart()
          ],
        ),
      ),
    );
  }
}
