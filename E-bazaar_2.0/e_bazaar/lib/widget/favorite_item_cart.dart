import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class favoriteCart extends StatelessWidget {
  const favoriteCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Divider(
          thickness: 0.7,
          color: Color(0xff2F4858),
          endIndent: 45.0,
          indent: 45.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0, top: 24.0, bottom: 24.0),
          child: Slidable(
            startActionPane: ActionPane(motion: ScrollMotion(), children: [
              //SlidableAction(onPressed: (context)=>{},icon:Icons.delete,backgroundColor: Colors.red,),
              Expanded(
                child: Container(
                  height: 120.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.red[600],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)
                          )),
                  child: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
                  ),
                ),
              )
            ]),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/images/slider.jpg",
                      height: 120,
                      width: 170,
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    //color: Colors.pinkAccent,
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Expanded(
                            child: Text(
                              "Pull & Bear Men’s FallUrban Collection ",
                              style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Bourane Store",
                          style: GoogleFonts.montserrat(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff2F4858)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
