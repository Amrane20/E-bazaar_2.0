import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showCustomSnackBar(BuildContext context, String msgErr) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        height: 70.0,
        decoration: BoxDecoration(
          color: const Color(0xffFF2B3C),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text("Whoops!",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                msgErr,
                style: GoogleFonts.inter(
                  fontSize: 14.0,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}
