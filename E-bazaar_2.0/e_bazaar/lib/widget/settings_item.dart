import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class settingItem extends StatelessWidget {
  final String itmText;
  final  itmIcon;
  final itmRightIcon;
  const settingItem({super.key,required this.itmIcon, this.itmRightIcon,required this.itmText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(itmIcon,color: Color(0xff212121),),
                  SizedBox(
                    width: 17.0,
                  ),
                  Text(
                    itmText,
                    style: GoogleFonts.lato(
                        fontSize: 16.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(itmRightIcon,color: Color(0xff212121),),
            ),

            ],
          ),
          SizedBox(height: 20.0,),
          Divider(
            thickness: 0.7,
            color: Color(0xff2F4858),
            endIndent: 18.0,
          ),
        ],
      ),
    );
  }
}
