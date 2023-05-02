import 'package:flutter/material.dart';
import 'package:flutter_application_1/buyer/home_page.dart';
import 'package:flutter_application_1/buyer/product_cart.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  //bool isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin:
              EdgeInsets.only(left: 10.0, top: 35.0, right: 10.0, bottom: 24.0),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: BoxDecoration(
              // color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(50.0)),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.55,
                  "assets/images/slider.jpg",
                  fit: BoxFit.cover,
                ),
              ),

              // the black banner behind "Order Details"
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(153, 0, 0, 0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 25.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homePage()));
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)),
                        child: Center(child: Icon(Icons.arrow_back)),
                      ),
                    ),
                    Text(
                      "Order Datails",
                      style: GoogleFonts.montserrat(
                          fontSize: 22.0, color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (isFavorited == true) {
                            isFavorited = false;
                          } else {
                            isFavorited = true;
                          }
                          //isFavorited=true;
                        });
                        print(isFavorited);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)),
                        child: Center(
                            child: Icon(
                          color: isFavorited ? Colors.red : Colors.black,
                          isFavorited
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_rounded,
                              size: isFavorited ? 30.0 : 25.0,
                        )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 33.0, right: 33.0),
          child: Row(
            children: [
              // profile image
              ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    "assets/images/profile.jpg",
                    width: 60.0,
                    height: 60.0,
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bourane",
                      style: GoogleFonts.montserrat(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "@amrane_boufakri",
                      style: GoogleFonts.lato(
                          fontSize: 16.0, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
               /* 
              SizedBox(
                width: 55.0,
              ),
            Expanded(
                child: IconButton(
                  onPressed: () {
                    if (isFavorited == true) {
                      isFavorited = false;
                    } else {
                      isFavorited = true;
                    }
                  },
                  color: isFavorited ? Colors.red : Colors.black,
                  icon: isFavorited
                      ? Icon(Icons.favorite_rounded)
                      : Icon(Icons.favorite_border_rounded),
                  iconSize: 30.0,
                ),
              )*/
            ],
          ),
        ),
        // product Details
        SizedBox(
          width: double.infinity,
          // height: MediaQuery,
          height: MediaQuery.of(context).size.height * 0.4 - 87.0,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 33.0, right: 33.0, top: 0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Text(
                          "Pull & Bear Men’s FallUrban Collection",
                          style: GoogleFonts.montserrat(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        )),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 0),
                          child: Text(
                            "\$ 20.15",
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.w300),
                          ),
                        ))
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10.0,
              // ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 33.0, right: 33.0, top: 10.0),
                child: Text(
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Verginia. ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Verginia. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Verginia. ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Verginia. ",
                  style: GoogleFonts.lato(
                      height: 1.4,
                      color: Color.fromARGB(192, 0, 0, 0),
                      fontWeight: FontWeight.normal),
                ),
              ),
              // Call to action btns
              Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 14.0, bottom: 14.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                        // padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(color: Color(0xffBD532A))),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: Color(0xff2F4858),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Add to cart",
                                style: GoogleFonts.montserrat(
                                    color: Color(0xff2F4858),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
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
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        // // Call to action btns
        // Padding(
        //   padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
        //   child: Row(
        //     children: [
        //       Expanded(
        //         child: Container(
        //           padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
        //           // padding: EdgeInsets.all(20.0),
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(50.0),
        //               border: Border.all(color: Color(0xffBD532A))),
        //           child: Center(
        //             child: Row(
        //               children: [
        //                 Icon(
        //                   Icons.shopping_cart_outlined,
        //                   color: Color(0xff2F4858),
        //                 ),
        //                 SizedBox(
        //                   width: 5.0,
        //                 ),
        //                 Text(
        //                   "Add to cart",
        //                   style: GoogleFonts.montserrat(
        //                       color: Color(0xff2F4858),
        //                       fontWeight: FontWeight.w500),
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         width: 10.0,
        //       ),
        //       Expanded(
        //         child: Container(
        //           padding: EdgeInsets.all(20.0),
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(50.0),
        //             color: Color(0xffBD532A),
        //           ),
        //           child: Center(
        //               child: Text(
        //             "Buy now",
        //             style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
        //           )),
        //         ),
        //       )
        //     ],
        //   ),
        // )
      ],
    ));
  }
}
