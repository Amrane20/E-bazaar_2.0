import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class salesHistoryPage extends StatelessWidget {
  const salesHistoryPage({super.key});

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
            "Sales History",
            style: GoogleFonts.montserrat(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text(
            "BALANCE (Overall Sales)",
            style: GoogleFonts.montserrat(
              fontSize: 14.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "\$659,000.00",
                style: GoogleFonts.lato(
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 15.0,),
              Icon(Icons.remove_red_eye_outlined),
            ],
          ),
          Expanded(
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
                    ClipRRect(borderRadius: BorderRadius.circular(15.0),child: Image.asset("assets/images/martin-adams-zbPDL84kvRg-unsplash.jpg",width: 60,height: 60,fit: BoxFit.cover,)),
                    SizedBox(width: 15.0,),
                    Expanded(child: Text("Pull & Bear Men’s FallUrban Collection ",style: GoogleFonts.montserrat(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    )),
                    Column(
                      children: [
                        Text("300",style: GoogleFonts.montserrat(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffBD532A)
                        ),),
                        Text("Sales",style: GoogleFonts.montserrat(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffBD532A)
                        )),
                      ],
                    )
                  ],
                ),
              ),

              
              ],
            ),
          )
        ],
        ),
      ),
    );
  }
}
