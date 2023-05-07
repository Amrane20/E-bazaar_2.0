import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountType.dart';
import 'package:flutter_application_1/buyer/my_cart.dart';
import 'package:flutter_application_1/buyer/product_cart.dart';
import 'package:flutter_application_1/models/allCatigories.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int current = 0;

  final List<String> catigorie = [
    "All",
    "Food",
    "Fashion",
    "Accesoirs",
    "sahara pro",
    "kra okrich"
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false; // this will stop or block going back to the previous page
      },
      child: Scaffold(
        backgroundColor: Color(0xffE7E7E7),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //height: MediaQuery.of(context).size.height*0.56,
                // color: Color.fromARGB(255, 189, 150, 35),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24.0, top: 24.0, bottom: 24.0),
                      child: Row(
                        children: [
                          Text(
                            "welcome, ",
                            style: GoogleFonts.montserrat(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                          accountType == Account.guest
                              ? Text(
                                  "To e-bazaar",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0,
                                      color: Color(0xffBD532A)),
                                )
                              : Text(
                                  "Bourane",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0,
                                      color: Color(0xffBD532A)),
                                )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24.0, left: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 45.0,
                            child: TextField(
                              cursorColor: Color(0xff2F4858),
                              cursorRadius: Radius.circular(20.0),
                              decoration: InputDecoration(
                                  hintText: "search ...",
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Icon(
                                      Icons.search,
                                      color: Color(0xff212121),
                                      size: 24.0,
                                    ),
                                  ),
                                  // border: UndelineInputBorder()
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 24.0),
                                  // the enabled state of the searche field
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  // the focuced state of the searche field
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),

                          // this is the cart notifications
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: InkWell(
                              onTap: () {
                                // cheack if the type of the account is guest or buyer
                                accountType != Account.guest
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => myCartPage()))
                                    : print("you have to login");
                              },
                              child: Container(
                                height: 40,
                                width: 48,
                                child: Stack(
                                  children: [
                                    const Positioned(
                                      top: 10,
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        size: 30.0,
                                      ),
                                    ),
                                    Positioned(
                                      right: 14,
                                      top: 3,
                                      child: Container(
                                        width: 18.0,
                                        height: 18.0,
                                        decoration: BoxDecoration(
                                            color: Color(0xffBD532A),
                                            borderRadius:
                                                BorderRadius.circular(2.0)),
                                        child: Center(
                                          child: Text(
                                            "3",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // the ads and new products banner and area
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          height: 110,
                          child: Stack(children: [
                            Image.asset(
                              "assets/images/slider.jpg",
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: 110,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Colors.black,
                                Colors.transparent
                              ])),
                            ),
                            Positioned(
                              top: 20.0,
                              left: 14.0,
                              child: Image.asset(
                                "assets/images/logo.png",
                                width: MediaQuery.of(context).size.width * 0.45,
                                height: 50.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 65,
                              left: 19,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  "The Colorful World of Moroccan Bazaars",
                                  style: GoogleFonts.lato(
                                      fontSize: 12.0,
                                      color: Colors.white54,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    SizedBox(
                      // the tabBar of catigories
                      height: 40.0,
                      width: double.infinity,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: Allcatigories.listCatigories.length,
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: (() {
                                setState(() {
                                  current = index;
                                });
                              }),
                              child: Container(
                                  margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                                  width: 100,
                                  // height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: current == index
                                          ? Color(0xffBD532A)
                                          : Colors.white,
                                      border: Border.all(
                                          width: 1,
                                          color: current == index
                                              ? Color(0xffBD532A)
                                              : Colors.transparent)),
                                  child: Center(
                                      child: Text(
                                          Allcatigories.listCatigories[index],
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontSize: current == index
                                                  ? 16.0
                                                  : 14.0)))),
                            );
                          })),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 23.0, top: 24.0, right: 23.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular",
                            style: GoogleFonts.lato(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 65,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                "see all",
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Center(
                child: ListView(
                  padding: EdgeInsets.only(left: 15.0, top: 0.0),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        singleProduct(imageUrl: "assets/images/carpet.png"),
                        const SizedBox(
                          width: 16.0,
                        ),
                        singleProduct(
                          imageUrl: "assets/images/pro1.jpg",
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        singleProduct(imageUrl: "assets/images/carpet.png"),
                        const SizedBox(
                          width: 16.0,
                        ),
                        singleProduct(
                          imageUrl: "assets/images/pro1.jpg",
                        )
                      ],
                    ),
/*
                    productCart(imageUrl: "assets/images/carpet.png"),
                    SizedBox(
                      height: 24.0,
                    ),
                    productCart(imageUrl: "assets/images/pro1.jpg"),
                    SizedBox(
                      height: 24.0,
                    ),
                    productCart(imageUrl: "assets/images/pro2.jpg"),
                    SizedBox(
                      height: 24.0,
                    ),
                    productCart(imageUrl: "assets/images/carpet.png"),
                    SizedBox(
                      height: 24.0,
                    ),
                    productCart(
                      imageUrl: "assets/images/carpet.png",
                    )
                    */
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
