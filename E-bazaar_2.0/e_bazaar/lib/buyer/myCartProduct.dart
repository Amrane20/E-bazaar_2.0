import 'dart:ffi';

import 'package:flutter_application_1/buyer/my_cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

bool itemChoosed = false;

class cartItem extends StatefulWidget {
  const cartItem({super.key});

  @override
  State<cartItem> createState() => _cartItemState();
}

class _cartItemState extends State<cartItem> {
  // enything changing in a statefulWidget Declared here not in the build method
  int itemQnt = 1;

  @override
  Widget build(BuildContext context) {
    /*int newItemQnt(int itemQnt) {
      int qnt = itemQnt++;
      return qnt;
    }
*/
    return Row(
      children: [
        Container(
            width: 150.0,
            height: 150.0,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Opacity(
                      opacity: itemChoosed? 0.5: 1,
                      child: Image.asset(
                        "assets/images/slider.jpg",
                        width: 150.0,
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    )),
                // the cirle for choosing or confirming the product
                InkWell(
                  onTap: () {
                    setState(() {
                      if (itemChoosed == true) {
                        itemChoosed = false;
                      } else {
                        itemChoosed = true;
                        // isvisible = true;
                      }
                    });
                    print("$itemChoosed visible : ");
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    width: 35,
                    height: 35,
                    child: itemChoosed == true ? Icon(Icons.done) : null,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: itemChoosed ? null : Border.all(color: Color(0xff2F4858)),
                        color: itemChoosed == true
                            ? Colors.greenAccent
                            : Colors.white),
                  ),
                )
              ],
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: itemChoosed? 0.5: 1,
                  child: Text(
                    "Pull & Bear Men’s FallUrban Collection",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Opacity(
                  opacity: itemChoosed? 0.5: 1,
                  child: Text(
                    "Bourane Store",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        color: Color(0xff2F4858),
                        fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Opacity(
                  opacity: itemChoosed? 0.5: 1,
                  child: Text(
                    "\$ 20.35",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.normal, fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (itemQnt > 1 && itemChoosed==false) itemQnt--;
                          });
                          print("minus taped");
                        },
                        icon: Opacity(
                          opacity: itemChoosed? 0.5: 1,
                          child: Icon(
                            Icons.remove_circle_outline_rounded,
                            size: 30,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Opacity(
                        opacity: itemChoosed? 0.5: 1,
                        child: Text(
                          "$itemQnt",
                          style: GoogleFonts.lato(
                              color: Color(0xff2F4858),
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            // itemQnt = newItemQnt(itemQnt);
                            if(itemChoosed==false){
                               itemQnt++;
                            }
                           
                          });
                          print("plus taped");
                          print(itemQnt);
                        },
                        icon: Opacity(
                          opacity: itemChoosed? 0.5: 1,
                          child: Icon(
                            Icons.add_circle_sharp,
                            size: 30,
                            color: Color(0xff2F4858),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
