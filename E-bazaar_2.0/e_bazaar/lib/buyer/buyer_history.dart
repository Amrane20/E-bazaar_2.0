import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class buyerHistoryPage extends StatefulWidget {
  const buyerHistoryPage({super.key});

  @override
  State<buyerHistoryPage> createState() => _buyerHistoryPageState();
}

class _buyerHistoryPageState extends State<buyerHistoryPage> {
  List<Color> listColors = [
    Color(0xffBD532A),
    Color(0xffB54155),
    Color(0xff944473),
    Color(0xff674C7D),
    Color(0xff3E4D71),
    Color(0xff2F4858),
  ];

  List payments = [
    "Pull & bears Product , the best pro...",
    "Pull & bears Product , the best pro...",
    "Pull & bears Product , the best pro...",
    "Pull & bears Product , the best pro...",
    "Pull & bears Product , the best pro...",
    "Pull & bears Product , the best pro...",
    "Pull & bears Product , the best pro...",
    "Pull & bears Product , the best pro...",
    "Pull & bears Product , the best pro...",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7E7E7),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
            "History",
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
          itemCount: payments.length,
          itemBuilder: (context, index) {
            return Slidable(
              startActionPane: ActionPane(motion: ScrollMotion(), children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 40.0),
                    height: 120.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                       // color: listColors[(index + 1) % listColors.length],
                       color: Colors.red,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10.0),
                            topRight: Radius.circular(10.0))),
                    child: Center(
                      child: IconButton(color: Colors.white,iconSize: 30,
                        icon: Icon(Icons.delete),
                        onPressed: () {},
                      ),
                    ),
                  ),
                )
              ]),
              child: Padding(
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
                        Container(
                          height: 90.0,
                          width: 3.0,
                          decoration: BoxDecoration(
                              // (index + 1) % listColors.length
                              // color: index <5 ? listColors[index] : Colors.black,
                              color:
                                  listColors[(index + 1) % listColors.length],
                              borderRadius: BorderRadius.circular(10.0)
                              ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            child: RichText(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                text: "11-06-2023 ",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Color(0xffBD532A),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: payments[index],
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              "assets/images/martin-adams-zbPDL84kvRg-unsplash.jpg",
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "3 Items",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w300,
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
