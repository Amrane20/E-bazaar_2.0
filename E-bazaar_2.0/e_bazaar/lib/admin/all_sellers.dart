import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class allSellersPage extends StatefulWidget {
  const allSellersPage({super.key});

  @override
  State<allSellersPage> createState() => _allSellersPageState();
}

class _allSellersPageState extends State<allSellersPage> {
  List listProfilesImges = [
   "assets/images/seller1.jpg",
   "assets/images/seller2.jpg",
   "assets/images/seller3.jpg",
   "assets/images/seller4.jpg",
   "assets/images/seller5.jpg",
   "assets/images/seller6.jpg",
   "assets/images/seller7.jpg",
   "assets/images/seller8.jpg",
   "assets/images/seller9.jpg",
   "assets/images/seller10.jpg",
   "assets/images/seller11.jpg",
   "assets/images/seller12.jpg",
  ];

  List payments = [
    " liked your Pull & bears Product ",
    " liked your Pull & bears Product ",
    " liked your Pull & bears Product ",
    " liked your Pull & bears Product ",
  ];

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
            "Notifications",
            style: GoogleFonts.montserrat(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: listProfilesImges.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    thickness: 0.7,
                    color: Color(0xff2F4858),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            listProfilesImges[index],
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          )),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bourane_shop",style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600
                              ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                              Text("@amraneboufakri",style: GoogleFonts.lato(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w300
                              ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20.0,),
                          Text("suspended",style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: Color(0xffBD532A)
                          ),),
                        ],
                      ),
                      SizedBox(width: 20.0,),
                      Column(
                        children: [
                          SizedBox(height: 14.0,),
                          Icon(Icons.delete_forever_rounded,size: 27.0,color: Colors.black87,),
                        ],
                      ),

                    ],
                  ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
